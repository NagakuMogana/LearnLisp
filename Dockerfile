FROM ubuntu:latest
MAINTAINER Nagaku Mogana <mogananagaku@gmail.com>

RUN apt-get update
RUN apt-get install -y clisp

WORKDIR /source