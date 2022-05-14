FROM openjdk:17-jdk AS builder
LABEL Name="grasscutter"

WORKDIR /app

COPY ./Grasscutter /app

RUN chmod +x ./gradlew
RUN ./gradlew && ./gradlew jar

# build container

FROM openjdk:17-jdk
COPY --from=builder /root/.gradle /root/.gradle