FROM alpine:latest

WORKDIR /v2bserver
RUN cd /v2bserver \
    && https://github.com/siemenstutorials/v2bserver/releases/download/latest/v2bserver \
    && wget https://github.com/v2fly/v2ray-core/releases/latest/download/v2ray-linux-64.zip \
    && unzip v2ray-linux-64.zip \
    && rm -rf v2ray-linux-64.zip \
    && chmod +x /v2bserver/*

ENTRYPOINT /v2bserver/v2bserver -api="$API" -token="$TOKEN" -node="$NODE" -license="$LICENSE" -syncInterval="$SYNCINTERVAL"
