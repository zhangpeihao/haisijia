package com.haisijia.jedis;

import java.util.List;
import java.util.Map;
import java.util.function.BiConsumer;
import java.util.function.Function;

import com.haisijia.fp.FJedisDelValue;
import com.haisijia.fp.FJedisGetValue;
import com.haisijia.fp.FJedisSetValue;

import redis.clients.jedis.Jedis;
import redis.clients.jedis.JedisPool;
import redis.clients.jedis.JedisPoolConfig;

public class JedisEngine {
	public static void setValue(Jedis jedis, String key, String value) {
		jedis.set(key, value);
	}
	
	public static String getValue(Jedis jedis, String key) {
		return jedis.get(key);
	}
	
	public static void setMap(Jedis jedis, String key, Map<String, String> map) {
		jedis.hmset(key, map);
	}
	
	public static void delValue(Jedis jedis, String key) {
		jedis.del(key);
	}
	
	public static List<String> getMap(Jedis jedis, String[] keys) {
		switch (keys.length) {
		case 2:
			return jedis.hmget(keys[0], keys[1]);
		case 3:
			return jedis.hmget(keys[0], keys[1], keys[2]);
		case 4:
			return jedis.hmget(keys[0], keys[1], keys[2], keys[3]);
		case 5:
			return jedis.hmget(keys[0], keys[1], keys[2], keys[3], keys[4]);
		case 6:
			return jedis.hmget(keys[0], keys[1], keys[2], keys[3], keys[4], keys[5]);
		case 7:
			return jedis.hmget(keys[0], keys[1], keys[2], keys[3], keys[4], keys[5], keys[6]);
		default:
			return null;
		}
		
	}
	
	public static <T, R> void setJedisValue(FJedisSetValue<T, R> consumer, T t, R r) {
		Jedis jedis = getJedis();
		consumer.setJedisValue(jedis, t, r);
		returnResource(jedis);
	}
	
	public static <T, R> R getJedisValue(FJedisGetValue<T, R> function, T t) {
		Jedis jedis = getJedis();
		R r = function.getJedisValue(jedis, t);
		returnResource(jedis);
		return r;
	}
	
	public static <T> void delJedisValue(FJedisDelValue<T> function, T t) {
		Jedis jedis = getJedis();
		function.delJedisValue(jedis, t);
		returnResource(jedis);
	}
	
	public synchronized static Jedis getJedis() {
		try {
			if (jedisPool != null) {
				Jedis resource = jedisPool.getResource();
				return resource;
			} else {
				return null;
			}
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}

	/**
	 * �ͷ�jedis��Դ
	 * 
	 * @param jedis
	 */
	public static void returnResource(final Jedis jedis) {
		if (jedis != null) {
			//jedisPool.returnResource(jedis);
			jedis.close();
		}
	}

	private static String ADDR = "127.0.0.1";
	private static int PORT = 6379;
	private static String AUTH = "admin";
	private static int MAX_ACTIVE = 1024;
	private static int MAX_IDLE = 200;
	private static int MAX_WAIT = 10000;
	private static int TIMEOUT = 10000;
	private static boolean TEST_ON_BORROW = true;
	private static JedisPool jedisPool = null;
	
	static {
		try {
			JedisPoolConfig config = new JedisPoolConfig();
			//config.setMaxActive(MAX_ACTIVE);
			config.setMaxTotal(MAX_ACTIVE);
			config.setMaxIdle(MAX_IDLE);
			//config.setMaxWait(MAX_WAIT);
			config.setTestOnBorrow(TEST_ON_BORROW);
			jedisPool = new JedisPool(config, ADDR, PORT, TIMEOUT);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
