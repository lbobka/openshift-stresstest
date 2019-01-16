FROM ubuntu:bionic
MAINTAINER Lars Bobka <lars.bobka@gmail.com>

RUN apt-get update && apt-get install -y stress 

ENV APP_OPTIONS="--cpu 1"

USER 1001
ENTRYPOINT ["/usr/bin/stress", "--verbose"]
CMD []
