FROM openjdk:8
MAINTAINER Abhisek Datta <abhisek@appsecco.com>

RUN apt-get update
RUN apt-get install -y mysql-client
RUN apt-get install -y maven
RUN apt-get install -y dos2unix

WORKDIR /app
COPY pom.xml pom.xml
RUN mvn dependency:resolve

COPY . .
RUN mvn clean package
RUN dos2unix /app/scripts/start.sh
RUN chmod 755 /app/scripts/start.sh

EXPOSE 8080
CMD ["sh", "-c", "/app/scripts/start.sh"]
