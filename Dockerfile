FROM java:8
ADD target/${POM_ARTIFACTID}-${POM_VERSION}.jar app.jar
COPY kafka/ ./kafka
RUN sh -c 'touch /app.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]