FROM openjdk:8-jdk-alpine
EXPOSE 8080
ADD target/*.jar app.jar
RUN chmod -R 777 /app.jar
ENTRYPOINT ["sh" , "-c" , "java -jar /app.jar"]