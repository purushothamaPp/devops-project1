FROM centos:7

RUN yum upgrade -y     
RUN yum install java-11-openjdk -y

EXPOSE 8080

COPY target/docker-java-app-example.jar /docker-java-app-example.jar

CMD ["java","-jar","docker-java-app-example.jar"]

