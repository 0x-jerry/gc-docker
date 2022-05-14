FROM gc-container:latest AS builder

WORKDIR /app

COPY ./Grasscutter /app

RUN chmod +x ./gradlew
RUN ./gradlew && ./gradlew jar

# runtime container
FROM openjdk:17-slim-buster

WORKDIR /app

EXPOSE 443
EXPOSE 22102/udp

# change name
COPY --from=builder /app/grasscutter-1.1.0.jar /app/grasscutter.jar

VOLUME [ "/app" ]