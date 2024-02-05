FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    #using a slash allows you to run the statement in multiple lines
    python3.10 \ 
    python3-pip \
    git 

RUN pip3 install PyYAML

#copying the things from repo to machine (docker file)
COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh" ]