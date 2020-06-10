FROM adaptris/interlok-base:latest-zulu-alpine

EXPOSE 8080 5555

COPY ./build/distribution/lib /opt/interlok/lib
COPY ./build/distribution/webapps /opt/interlok/webapps
COPY ./build/distribution/config /opt/interlok/config
