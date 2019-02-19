FROM java:8
ADD /target/account-0.0.1-SNAPSHOT.jar //
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "/account-0.0.1-SNAPSHOT.jar"]
