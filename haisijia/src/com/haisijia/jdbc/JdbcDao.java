package com.haisijia.jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Savepoint;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Optional;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class JdbcDao {	
	/**
	 * 在系统初始化时执行，初始化读和写操作的数据库连接池，同时初始化读和写连接池锁
	 * @param readCount
	 * @param writeCount
	 * 【闫涛 2016.03.15】初始版本
	 */
	public static void initializeConnectionPool(int readCount, int writeCount) {
		int i = 0;
		ConnectionObject conn = null;
		readConnectionPool = new ArrayList<>();
		readConnPoolLock = new ReentrantLock();
		readConnPoolLock.lock();
		try {
			for (i=0; i<readCount; i++) {
				conn = new ConnectionObject();
				conn.conn = createReadConnection();
				readConnectionPool.add(conn);
			}
		} finally {
			readConnPoolLock.unlock();
		}
		writeConnectionPool = new ArrayList<>();
		writeConnPoolLock = new ReentrantLock();
		writeConnPoolLock.lock();
		try {
			for (i=0; i<writeCount; i++) {
				conn = new ConnectionObject();
				conn.conn = createWriteConnection();
				writeConnectionPool.add(conn);
			}
		} finally {
			writeConnPoolLock.unlock();
		}
	}
	
	/**
	 * 获取读操作连接
	 * @return
	 * 【闫涛 2016.03.15】初始版本
	 */
	public static Optional<Connection> getReadConnection() {
		return getConnection(readConnectionPool, readConnPoolLock, GET_CONNECTION_MODE_READ);
	}
	
	/**
	 * 获取写操作连接
	 * @return
	 * 【闫涛 2016.03.15】初始版本
	 */
	public static Optional<Connection> getWriteConnection() {
		return getConnection(writeConnectionPool, writeConnPoolLock, GET_CONNECTION_MODE_WRITE);
	}
	
	/**
	 * 关闭读连接，即将连接置为可用状态
	 * @param conn
	 * 【闫涛 2016.03.15】初始版本
	 */
	public static void closeReadConnection(Connection conn) {
		closeConnection(readConnectionPool, readConnPoolLock, conn);
	}
	
	/**
	 * 关闭写连接，将连接置为可用状态
	 * @param conn
	 * 【闫涛 2016.03.15】初始版本
	 */
	public static void closeWriteConnection(Connection conn) {
		closeConnection(writeConnectionPool, writeConnPoolLock, conn);
	}
	
	/**
	 * 执行查询语句
	 * @param sql
	 * @param binder
	 * @param cond
	 * @param setter
	 * @return
	 * 【闫涛 2016.02.15】初始版本
	 */
    public static <T, U> List<T> executeQuery(String sql, FParamBinder<U> binder, U cond, FResetSetter<T> setter) {
        Connection conn = getReadConnection().orElse(null);
        PreparedStatement stmt = null;
        ResultSet rst = null;
        List<T> recs = null;
        try {
            stmt = conn.prepareStatement(sql);
            binder.bindParams(stmt, cond); // 调用参数绑定函数式接�?
            rst = stmt.executeQuery();
            recs = setter.getResultSet(rst); // 获取返回结果�?
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rst != null) {
                    rst.close();
                }
                if (stmt != null) {
                    stmt.close();
                }
            } catch (Exception ex) {}
            closeReadConnection(conn);
        }
        return recs;
    }
    
    /**
     * 执行增删改SQL语句
     * @param sql
     * @param binder
     * @param vo
     * @return
     * 【闫涛 2016.03.15】初始版本
     */
    public static <T> JdbcResult executeUpdate(String sql, FParamBinder<T> binder, T vo) {
    	Connection conn = getWriteConnection().orElse(null);
    	PreparedStatement stmt = null;
    	ResultSet rs = null;
    	JdbcResult jr = new JdbcResult();
    	try {
			stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			binder.bindParams(stmt, vo);
			int affectedRows = stmt.executeUpdate();
			rs = stmt.getGeneratedKeys();
			long pk = 0;
			if (rs.next()) {
				pk = rs.getLong(1);
			}
			jr.setAffectedRows(affectedRows);
			jr.setPk(pk);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			jr.setPk(0);
			jr.setAffectedRows(0);
		} finally {
			try {
				rs.close();
				stmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			closeWriteConnection(conn);
		}
    	return jr;
    }
    
    /**
     * 在数据库事务开始时调用，获取事务所需要的数据库连接，在其后增删改时作为
     * 参数
     * @return
     * 【闫涛 2016.03.31】初始版本
     */
    public static Connection beginTransaction() {
    	Connection conn = getWriteConnection().orElse(null);
    	try {
			conn.setAutoCommit(false);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	return conn;
    }
    
    /**
     * 当数据库事务成功时调用
     * @param conn
     * 【闫涛 2016.03.31】初始版本
     */
    public static void commit(Connection conn) {
    	try {
			conn.commit();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
    
    /**
     * 如果数据库事务失败，则回滚至初始状态
     * @param conn
     * 【闫涛 2016.03.31】初始版本
     */
    public static void rollback(Connection conn) {
    	try {
			conn.rollback();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
    
    /**
     * 添加事务保存点，当事务失败时，可以选择性回滚至本处
     * @param conn
     * @return
     * 【闫涛 2016.03.31】初始版本
     */
    public static Savepoint setSavepoint(Connection conn) {
    	Savepoint savepoint = null;
    	try {
			savepoint = conn.setSavepoint();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	return savepoint;
    }
    
    /**
     * 回滚到指定的保存点
     * @param conn
     * @param savepoint
     * 【闫涛 2016.03.31】初始版本
     */
    public static void rollback(Connection conn, Savepoint savepoint) {
    	try {
			conn.rollback(savepoint);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
    
    /**
     * 当数据库事务结束时，将状态设置自动提交，并将连接返回连接池
     * @param conn
     */
    public static void closeTransaction(Connection conn) {
    	try {
			conn.setAutoCommit(true);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    	closeWriteConnection(conn);
    }
    
    

	
	/**
	 * 在数据库事务中间执行查询语句
	 * @param sql
	 * @param binder
	 * @param cond
	 * @param setter
	 * @return
	 * 【闫涛 2016.03.31】初始版本
	 */
    public static <T, U> List<T> executeQuery(Connection conn, String sql, FParamBinder<U> binder, U cond, FResetSetter<T> setter) {
        //Connection conn = getReadConnection().orElse(null);
        PreparedStatement stmt = null;
        ResultSet rst = null;
        List<T> recs = null;
        try {
            stmt = conn.prepareStatement(sql);
            binder.bindParams(stmt, cond); // 调用参数绑定函数式接�?
            rst = stmt.executeQuery();
            recs = setter.getResultSet(rst); // 获取返回结果�?
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (rst != null) {
                    rst.close();
                }
                if (stmt != null) {
                    stmt.close();
                }
            } catch (Exception ex) {}
        }
        return recs;
    }
    
    /**
     * 在数据库事务期间执行增删改SQL语句
     * @param sql
     * @param binder
     * @param vo
     * @return
     * 【闫涛 2016.03.31】初始版本
     */
    public static <T> JdbcResult executeUpdate(Connection conn, String sql, FParamBinder<T> binder, T vo) {
    	//Connection conn = getWriteConnection().orElse(null);
    	PreparedStatement stmt = null;
    	ResultSet rs = null;
    	JdbcResult jr = new JdbcResult();
    	try {
			stmt = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			binder.bindParams(stmt, vo);
			int affectedRows = stmt.executeUpdate();
			rs = stmt.getGeneratedKeys();
			long pk = 0;
			if (rs.next()) {
				pk = rs.getLong(1);
			}
			jr.setAffectedRows(affectedRows);
			jr.setPk(pk);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			jr.setPk(0);
			jr.setAffectedRows(0);
		} finally {
			try {
				rs.close();
				stmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
    	return jr;
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    public final static String PK = "pk";
    public final static String AFFECTED_ROWS = "affectedRows";
	public final static int GET_CONNECTION_MODE_READ = 1001;
	public final static int GET_CONNECTION_MODE_WRITE = 1002;
    


	/**
	 * 生成读操作数据库连接
	 * @return
	 * 【闫涛 2016.03.15】初始版本
	 */
	private static Connection createReadConnection() {
		Connection conn = null;  
	    try {  
	        Class.forName("com.mysql.jdbc.Driver");  
	        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/DkyDb?user=dky&password=dky123&" +  
	                "useUnicode=true&characterEncoding=utf-8&" +  
	                "autoReconnect=true&failOverReadOnly=false");  
	    } catch (Exception e) {
	        System.exit(0);  
	    }
	    return conn;  
	}
	
	/**
	 * 生成写操作数据库连接
	 * @return
	 * 【闫涛 2016.03.15】初始版本
	 */
	private static Connection createWriteConnection() {
		Connection conn = null;  
	    try {  
	        Class.forName("com.mysql.jdbc.Driver");  
	        conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/DkyDb?user=dky&password=dky123&" +  
	                "useUnicode=true&characterEncoding=utf-8&" +  
	                "autoReconnect=true&failOverReadOnly=false");  
	    } catch (Exception e) {
	        System.exit(0);  
	    }
	    return conn;  
	}
	
	/**
	 * 从连接池中读取连接，首先从连接池中查找getTime为零的记录（即空闲连接），如果有则返回
	 * 如果没有，则找出连接池中获取时间超过1小时的，
	 * @param pool
	 * @param lock
	 * @return
	 * 【闫涛 2016.03.15】初始版本
	 */
	private static Optional<Connection> getConnection(List<ConnectionObject> pool, Lock lock, int mode) {
		Connection conn = null;
		long maxGetTime = 0;
		ConnectionObject maxTimeConnectionObject = null;
		int idx = 0;
		for (ConnectionObject connectionObject : pool) {
			if (maxGetTime <= connectionObject.getTime) {
				maxGetTime = connectionObject.getTime;
				maxTimeConnectionObject = connectionObject;
			}
			lock.lock();
			try {
				if (connectionObject.getTime <= 0) {
					connectionObject.getTime = System.currentTimeMillis();
					conn = connectionObject.conn;
					break;
				}
			} finally {
				lock.unlock();
			}
			idx++;
		}
		if (null == conn && maxGetTime > 1000*60*60) {
			lock.lock();
			try {
				try {
					maxTimeConnectionObject.conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				if (GET_CONNECTION_MODE_READ == mode) {
					maxTimeConnectionObject.conn = createReadConnection();
				} else {
					maxTimeConnectionObject.conn = createWriteConnection();
				}
				maxTimeConnectionObject.getTime = System.currentTimeMillis();
				conn = maxTimeConnectionObject.conn;
			} finally {
				lock.unlock();
			}
		}
		return Optional.ofNullable(conn);
	}
	
	/**
	 * 将连接getTime置为0，即为空闲状态
	 * @param pool
	 * @param lock
	 * @param conn
	 * 【闫涛 2016.03.15】初始版本
	 */
	private static void closeConnection(List<ConnectionObject> pool, Lock lock, Connection conn) {
		int idx = 0;
		for (ConnectionObject connectionObject : pool) {
			if (conn == connectionObject.conn) {
				lock.lock();
				try {
					connectionObject.getTime = 0;
				} finally {
					lock.unlock();
				}
			}
			idx++;
		}
	}
	

	private static Lock readConnPoolLock = null;
	private static Lock writeConnPoolLock = null;
	private static List<ConnectionObject> readConnectionPool = null;
	private static List<ConnectionObject> writeConnectionPool = null;
}
