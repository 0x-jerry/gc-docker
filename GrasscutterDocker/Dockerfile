FROM openjdk:17-slim-buster
LABEL Name="grasscutter"

WORKDIR /root
VOLUME /root

EXPOSE 443
EXPOSE 22102/udp

ENV \
  LANG="en_US.UTF-8" \
  LANGUAGE="en_US:en" \
  LC_ALL="en_US.UTF-8"

# RUN java -jar grasscutter.jar
ENTRYPOINT exec sh
