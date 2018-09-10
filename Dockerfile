
FROM openjdk:8

USER root 

RUN mkdir -p /deployments
WORKDIR /deployments
EXPOSE 8080

COPY /target/tradingbot-app-1.0.jar /deployments/tradingbot-app-1.0.jar

CMD ["java", "-jar", "tradingbot-app-1.0.jar"]
