# opendaylight-docker
docker for opendaylight solium

special thanks to glefevre

## What's inside ?
Based on anapsix/alpine-java:8_jdk

No module installed (you can connect to the CLI to set whatever module you want to use)

Exposed port 6633 (Openflow), 8181 (WebUI/REST api) & 8101 (karaf CLI)

## How to use it ?
Run container

docker run -d -p 6633:6633 -p 8181:8181 -p 8101:8101 --name=opendaylight ljm625/opendaylight:sodium

OR

Use the host network mode (means you don't need port mapping commands)

docker run -d --net host --name=opendaylight ljm625/opendaylight:sodium

## Access Opendaylight karaf CLI
ssh -p 8101 karaf@localhost Default password is "karaf"

## Access Web interface
http://localhost:8181/index.html

## GUI / admin credential
admin/admin



