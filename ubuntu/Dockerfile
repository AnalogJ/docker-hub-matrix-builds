FROM ubuntu

RUN apt-get update && apt-get install -y --no-install-recommends \
    ca-certificates \
    curl \
	&& rm -rf /var/lib/apt/lists/*

COPY ./install-software.sh .

ARG software_version
RUN ./install-software.sh ${software_version}

CMD jq --version
