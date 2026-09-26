FROM tomcat:9-jdk17

COPY target/DevOpsDemo.war /usr/local/tomcat/webapps/DevOpsDemo.war

EXPOSE 8080

CMD ["catalina.sh", "run"]