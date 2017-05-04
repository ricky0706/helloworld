#For ARM
FROM hypriot/rpi-java
ADD target/*.jar /data/app.jar
#RUN sh -c 'touch /data/app.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /data/app.jar" ]