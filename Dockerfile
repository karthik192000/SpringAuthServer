FROM openjdk:17-ea-3-jdk-slim
COPY target/SpringAuthServer-1.0-SNAPSHOT.jar SpringAuthServer.jar
EXPOSE 9090
CMD ["java", "-Djavax.net.debug=ssl,handshake","-jar", "SpringAuthServer.jar"]