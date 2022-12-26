# java image based alpine
FROM maven:3.6.0-jdk-8-slim as builder

# cd to app dict
WORKDIR /app

# copy the volume
COPY ./project .

# download all deps
RUN mvn verify

FROM openjdk:8-jre-alpine

WORKDIR /app

COPY --from=builder /app/target .

COPY ./entrypoint.sh .

RUN chmod u+x ./entrypoint.sh

ENTRYPOINT [ "sh", "./entrypoint.sh" ]