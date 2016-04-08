# haisijia
A HIS+ platform base on Java8
Set up the development environment
1. Download the files
2. Startup mysql
3. Create the database
create database DkyDb default character set utf8 collate utf8_general_ci;
grant all privileges on DkyDb.* to dky@'%' identified by 'dky123';
grant all privileges on DkyDb.* to dky@'localhost' identified by 'dky123';
4. Import the data:
mysql --default-character-set=utf8 -u dky -pdky123 DkyDb < /pathTo/dky.sql
5. Download the tomcat 9 from apache
6. Edit tomcat9/conf/server.xml and change the directory to your haisijia directory

      <Host name="localhost"  appBase="webapps"
            unpackWARs="true" autoDeploy="true">
			

        <!-- SingleSignOn valve, share authentication between web applications
             Documentation at: /docs/config/valve.html -->
        <!--
        <Valve className="org.apache.catalina.authenticator.SingleSignOn" />
        -->

        <!-- Access log processes all example.
             Documentation at: /docs/config/valve.html
             Note: The pattern used is equivalent to using pattern="common" -->
        <Valve className="org.apache.catalina.valves.AccessLogValve" directory="logs"
               prefix="localhost_access_log" suffix=".txt"
               pattern="%h %l %u %t &quot;%r&quot; %s %b" />
			   
			   
			<Context path="/yhis" reloadable="true" debug="1" docBase="D:/awork/pyp/haisijia/web" 
				workDir="D:/awork/pyp/haisijia/work/tomcat" crossContext="true" >
				<Resource name="jdbc/YhisDS" auth="Container" type="javax.sql.DataSource"
               maxTotal="100" maxIdle="30" maxWaitMillis="10000"
               username="dky" password="dky123" driverClassName="com.mysql.jdbc.Driver"
			   useUnicode="true" characterEncoding="UTF-8" 
               url="jdbc:mysql://localhost:3306/DkyDb"/>
			   
			   
				<Resource name="jdbc/YhisDSRd" auth="Container" type="javax.sql.DataSource"
               maxTotal="100" maxIdle="30" maxWaitMillis="10000"
               username="dky" password="dky123" driverClassName="com.mysql.jdbc.Driver"
               url="jdbc:mysql://localhost:3306/DkyDb"/>
			</Context>

      </Host>
7. Open eclipse (greater than luna) and import the project haisijia
8. Goto tomcat9/bin directory run startup.bat to start tomcat
9. Use Chrome browser to visit: http://localhost:8080/yhis/main?cmd=showHome

If everything is OK you will see the login page for the system. Enter ydgh001 / 123456 to signin the system.
2016.04.08
