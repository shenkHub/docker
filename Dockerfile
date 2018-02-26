FROM frolvlad/alpine-oraclejdk7:slim
VOLUME /tmp
ADD docker_spring_boot.jar app.jar
RUN sh -c 'touch /app.jar'
ENV JAVA_OPTS=""
ENTRYPOINT [ "sh", "-c", "java -jar /app.jar" ]