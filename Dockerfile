FROM adoptopenjdk/openjdk11:alpine-jre

WORKDIR /opt/intospect

COPY target/helloFromHost-1.0.0.jar /opt/intospect

EXPOSE 8080

ENTRYPOINT ["sh", "-c", "java $JVM_OPTS -jar helloFromHost-1.0.0.jar"]

