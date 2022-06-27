RUN apt-get update \
  && apt-get install -y --no-install-recommends maven=3.6.0-1~18.04.1 \
    
FROM openjdk:8
EXPOSE 8080
#ADD target/ibm-cloud-demo-0.0.1-SNAPSHOT.jar ibm-cloud-demo.jar
ENTRYPOINT ["java","-jar","ibm-cloud-demo.jar"]