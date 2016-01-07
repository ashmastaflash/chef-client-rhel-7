FROM centos:7
MAINTAINER Ash Wilson

RUN yum update && yum install -y git vim wget

WORKDIR /root

RUN  wget -P /tmp https://opscode-omnibus-packages.s3.amazonaws.com/el/7/x86_64/chefdk-0.10.0-1.el7.x86_64.rpm && rpm -Uvf /tmp/chefdk-0.10.0-1.el7.x86_64.rpm

CMD /bin/bash
