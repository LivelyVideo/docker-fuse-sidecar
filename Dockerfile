FROM debian:latest

RUN apt-get update
RUN apt-get install curl
RUN echo "deb http://packages.cloud.google.com/apt gcsfuse-jessie main" | tee /etc/apt/sources.list.d/gcsfuse.list
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
RUN apt-get update
RUN apt-get install gcsfuse

ENTRYPOINT ["tail" "-f" "/dev/null"]