FROM rancher/os-base:v1.0.1

ARG CONVOY_VERSION=v0.5.0

WORKDIR /usr/local/bin

RUN wget -qO- https://github.com/rancher/convoy/releases/download/$CONVOY_VERSION/convoy.tar.gz | tar xvz --strip-components=1 convoy/convoy-pdata_tools convoy/convoy
COPY entrypoint.sh .
RUN chmod +x entrypoint.sh

ENTRYPOINT ["entrypoint.sh"]
