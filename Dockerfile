FROM node:0.10

MAINTAINER Stephan Maximilian Huber "stephan@factorial.io"

RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y -q chrpath libfreetype6 libfreetype6-dev libssl-dev libfontconfig1 python python-dev python-distribute python-pip build-essential imagemagick

RUN curl -O -L https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-1.9.8-linux-x86_64.tar.bz2
RUN tar xvjf phantomjs-1.9.8-linux-x86_64.tar.bz2
RUN mv phantomjs-1.9.8-linux-x86_64/bin/phantomjs /usr/local/bin/
RUN rm -f phantomjs-1.9.8-linux-x86_64.tar.bz2 && rm -rf phantomjs-1.9.8-linux-x86_64/bin/phantomjs

RUN pip install dpxdt

VOLUME ["/tests"]

CMD ["dpxdt", "/tests"]
