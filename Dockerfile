FROM openjdk:8-alpine
WORKDIR /app
ENV MICRONAUT_HOME=/opt/mn
ENTRYPOINT ["/opt/mn/cli/build/bin/mn"]
ENV MICRONAUT_VERSION=1.1.4
RUN apk --no-cache add curl \
    && mkdir -p $MICRONAUT_HOME \
    && cd /tmp \
    && curl https://codeload.github.com/micronaut-projects/micronaut-core/tar.gz/v$MICRONAUT_VERSION | tar -xz \
    && cd micronaut-core-$MICRONAUT_VERSION \
    && ./gradlew cli:fatJar \
    && mv cli $MICRONAUT_HOME \
    && rm -rf $HOME/.gradle /tmp/micronaut-core-$MICRONAUT_VERSION
