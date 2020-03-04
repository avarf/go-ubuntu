FROM ubuntu:18.04

# A basic image for the last version of go on ubuntu
RUN apt-get update  --fix-missing

RUN apt-get update && apt-get install -y wget
RUN apt-get update && apt-get install -y curl
RUN apt-get update && apt-get install -y nano

RUN mkdir -p ~/go

COPY ./go /usr/local/
RUN GOPATH=$HOME/go >> ~/.profile
RUN PATH=$PATH:/usr/local/go/bin:$GOPATH/bin >> ~/.profile

CMD ['/bin/bash source ~/.profile && /bin/bash  /bin/cat']