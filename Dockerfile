FROM openjdk:11.0.11-jre-slim
ADD build/libs/NewsManagement-0.0.1-SNAPSHOT.jar app.jar
CMD java -jar ./app.jar