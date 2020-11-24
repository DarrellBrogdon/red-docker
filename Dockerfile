FROM ubuntu:latest
WORKDIR /usr/local/bin
COPY ./red-064 ./red
RUN chmod 755 red
RUN dpkg --add-architecture i386
RUN apt update
RUN apt upgrade -y
RUN apt install -y libc6:i386 libcurl4:i386 libgdk-pixbuf2.0-0:i386
CMD /bin/bash
