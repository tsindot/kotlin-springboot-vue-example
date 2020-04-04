FROM adoptopenjdk/openjdk11:jdk-11.0.6_10-alpine-slim
VOLUME /tmp
COPY "./backend/target/kotlin-vue-0.0.1-SNAPSHOT.jar" app.jar
# Start Spring Boot app by default
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
