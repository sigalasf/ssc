FROM node:alpine

LABEL maintainer "eric.muellenbach@yncrea.fr"

ADD App.java .
RUN apk --update add openjdk8
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
ENV PATH="$JAVA_HOME/bin:${PATH}"

RUN javac App.java

ENTRYPOINT [ "java", "App" ]
