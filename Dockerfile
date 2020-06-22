FROM adoptopenjdk/openjdk11:alpine-slim

MAINTAINER Jiaming Li <ljm625@gmail.com>

RUN mkdir /odl
WORKDIR /odl
RUN apk add --no-cache gcc g++ make
RUN apk add --no-cache libc-dev openssl unzip
RUN apk add maven --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/community/
RUN wget https://nexus.opendaylight.org/content/repositories/public/org/opendaylight/integration/opendaylight/0.12.1/opendaylight-0.12.1.zip
RUN unzip opendaylight-0.12.1.zip
RUN mv /odl/opendaylight-0.12.1/* /odl
RUN rm -rf /var/cache/apk/*
RUN rm -rf /odl/*.zip


EXPOSE 8181 6633 8101

CMD /odl/bin/karaf


