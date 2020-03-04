FROM golang:1.14.0-buster

# A basic image for the last version of go on ubuntu
RUN apt-get update  --fix-missing

RUN apt-get update && apt-get install -y wget
RUN apt-get update && apt-get install -y curl
RUN apt-get update && apt-get install -y nano

CMD tail -f /dev/null