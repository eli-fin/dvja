# Damn Vulnerable Java Application

## Quick Start

Install Docker and Docker Compose.

```
docker-compose up
```
Navigate to `http://localhost:8080`

To update image

```
docker-compose build
```

## Requirements

* Java 1.7+
* Maven 3.x
* MySQL Server

## Configuration

### Database

Create SQL Server database and credentials and configure the same in:

```
./src/main/webapp/WEB-INF/applicationContext.xml
```

### Schema Import

Import the schema into MySQL database:

```
Run /db/schema.sql on the database you created
```

## Build

```
$ mvn clean package
```

The deployable `war` file is generated in targets directory.

## Run with Jetty

```
$ mvn jetty:run
```

This will start the `Jetty` server on port 8080.

## Deploy in Tomcat Server (IN TOMCAT IT MUST BE ROOT.war, because links are absolute)

* Build app
* Copy targets/dvja.war to Tomcat webapps directory
* To serve as root application, copy as `ROOT.war` to Tomcat webapps directory.

