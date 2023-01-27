FROM maven:3.8.6-jdk-11
WORKDIR /swagger-projet

COPY ./pom.xml ./pom.xml
RUN mvn dependency:go-offline -B
COPY ./src ./src

RUN mvn clean install -P prod
CMD mvn spring-boot:run
