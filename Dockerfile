FROM maven:3.6.0-jdk-11-slim AS build
COPY src /home/app/src
COPY pom.xml /home/app
RUN mvn -f /home/app/pom.xml clean package -DskipTests

FROM openjdk:11-jre-slim
COPY --from=build /home/app/target/locadora.jar /usr/local/lib/locadora.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/usr/local/lib/locadora.jar"]