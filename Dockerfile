FROM python:3.4-alpine

COPY requirements.txt /tmp/

RUN apk update && \
  apk add tzdata curl=7.58.0-r0 && \
  cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
  apk del tzdata && \
  rm -rf /var/cache/apk/*

RUN pip install -r /tmp/requirements.txt
