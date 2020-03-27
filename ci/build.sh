#!/bin/bash

docker run -it --rm -v "$(pwd)":/app maven:3.6.3-jdk-8 mvn clean install -f /app/pom.xml