yum install java-17-amazon-corretto -y
wget https://dlcdn.apache.org/tomcat/tomcat-9/v11.0.10/bin/apache-tomcat11.0.10.tar.gz
tar -zxvf apache-tomcat-11.0.10.tar.gz
sed -i '56 a\<role rolename="manager-gui"/>' apache-tomcat-11.0.10/conf/tomcatusers.xml
sed -i '57 a\<role rolename="manager-script"/>' apache-tomcat-11.0.10/conf/tomcatusers.xml
sed -i '58 a\<user username="tomcat" password="admin@123" roles="manager-gui,
manager-script"/>' apache-tomcat-11.0.10/conf/tomcat-users.xml
sed -i '59 a\</tomcat-users>' apache-tomcat-11.0.10/conf/tomcat-users.xml
sed -i '56d' apache-tomcat-11.0.10/conf/tomcat-users.xml
sed -i '21d' apache-tomcat-11.0.10/webapps/manager/META-INF/context.xml
sed -i '22d' apache-tomcat-11.0.10/webapp
