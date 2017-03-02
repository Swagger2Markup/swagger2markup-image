FROM openjdk:8-jre-alpine
MAINTAINER Robert Winkler

WORKDIR /usr/bin/swagger2markup

RUN apk update && apk add ca-certificates wget && update-ca-certificates && wget https://jcenter.bintray.com/io/github/swagger2markup/swagger2markup-cli/1.3.0/swagger2markup-cli-1.3.0.jar

ENTRYPOINT ["java","-jar","/usr/bin/swagger2markup/swagger2markup-cli-1.3.0.jar"]