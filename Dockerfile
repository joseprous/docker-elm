FROM ubuntu:18.04

ENV TZ=America/Asuncion
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && apt-get install -y nodejs npm
COPY elm.gz /root
RUN cd /root && gunzip elm.gz && chmod +x elm && mv elm /bin
RUN npm -g install uglify-js
