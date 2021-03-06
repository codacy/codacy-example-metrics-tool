FROM alpine:3.10.3

COPY tool.sh /opt/docker/
COPY docs /docs/
RUN apk add bash jq

RUN adduser -u 2004 -D docker
RUN chown -R docker:docker /docs

CMD [ "bash", "/opt/docker/tool.sh" ]
