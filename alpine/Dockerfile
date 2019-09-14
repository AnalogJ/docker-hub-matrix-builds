FROM alpine

RUN apk add curl

COPY ./install-software.sh .

ARG software_version
RUN ./install-software.sh ${software_version}

CMD jq --version
