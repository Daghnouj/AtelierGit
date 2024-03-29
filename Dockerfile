#FROM openjdk:8-jdk-alpine
#EXPOSE 8082
#ADD target/timesheet-devops-1.0.jar timesheet-devops-1.0.jar
#ENTRYPOINT ["java","-jar","/timesheet-devops-1.0.jar"]
FROM openjdk:17
EXPOSE 8086
ADD	http://localhost:8081/repository/maven-releases/tn/esprit/spring/services/timesheet-devops/1.0/timesheet-devops-1.0.jar timesheet-devops-1.0.jar
ENTRYPOINT ["java", "-jar", "timesheet-devops-1.0.jar"]