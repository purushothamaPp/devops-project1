FROM centos:7

RUN yum upgrade -y      &&
    yum install java-11-openjdk -y

COPY target/docker-java-app-example.jar /docker-java-app-example.jar

CMD ["java","-jar","docker-java-app-example.jar"]

