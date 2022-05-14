# Only need to build once
# docker build --pull --rm -f "Dockerfile.builder" -t gc-container:latest "."

# build, need change `grasscutter-*.jar` to `grasscutter.jar`
docker build --rm -f "Dockerfile" -t gc:latest "."