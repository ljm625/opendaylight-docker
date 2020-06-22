FROM anapsix/alpine-java:8_jdk

MAINTAINER Jiaming Li <ljm625@gmail.com>

RUN mkdir /odl
WORKDIR /odl

RUN apk add --no-cache gcc g++ make libc-dev python-dev openssl
RUN apk add maven --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/community/
RUN wget https://nexus.opendaylight.org/content/repositories/opendaylight.release/org/opendaylight/integration/opendaylight/0.11.3/opendaylight-0.11.3.tar.gz
RUN tar -xvzf opendaylight-0.11.3.tar.gz
RUN mv /odl/opendaylight-0.11.3/* /odl
RUN rm -rf /var/cache/apk/*
RUN rm -rf /odl/*.tar.gz


EXPOSE 8181 6633 8101

CMD /odl/bin/karaf


