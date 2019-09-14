FROM mcr.microsoft.com/windows/nanoserver:1903

RUN yum install curl

COPY ./install-software.bat .

ARG software_version
RUN ./install-software.bat ${software_version}

CMD jq --version
