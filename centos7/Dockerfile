FROM centos:centos7

RUN yum install curl

COPY ./install-software.sh .

ARG software_version
RUN ./install-software.sh ${software_version}

CMD jq --version
