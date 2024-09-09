FROM amazonlinux
RUN yum install java -y
RUN mkdir tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.93/bin/apache-tomcat-9.0.93.zip .
RUN yum install zip -y && yum install unzip -y && unzip apache-tomcat-9.0.93.zip
RUN mv apache-tomcat-9.0.93 apache-tomcat
RUN rm apache-tomcat-9.0.93.zip
WORKDIR /opt/tomcat/apache-tomcat/webapps
RUN mkdir webproject
COPY target/web-demo.war /opt/tomcat/apache-tomcat/webapps/webproject
EXPOSE 8080
RUN chmod =777 /opt/tomcat/apache-tomcat/bin/catalina.sh
ENTRYPOINT ["/opt/tomcat/apache-tomcat/bin/catalina.sh","run"]
