FROM openjdk:8
EXPOSE 8080
RUN mkdir /opt/app
COPY --from=builder /app/target/ibm-cloud-demo-0.0.1-SNAPSHOT.jar /opt/app/ibm-cloud-demo.jar
ENTRYPOINT ["java","-jar","/opt/app/ibm-cloud-demo.jar"]