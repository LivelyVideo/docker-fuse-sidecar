FROM nginx:1.11

RUN apt-get update
RUN apt-get -y install curl
RUN echo "deb http://packages.cloud.google.com/apt gcsfuse-jessie main" | tee /etc/apt/sources.list.d/gcsfuse.list
RUN curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | apt-key add -
RUN apt-get update
RUN apt-get -y install gcsfuse
RUN rm -rf /usr/share/nginx/html && mkdir -p /usr/share/nginx/html

CMD ["nginx", "-g", "daemon off;"]