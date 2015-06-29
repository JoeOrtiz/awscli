FROM alpine
MAINTAINER Joe Ortiz <joe.s.ortiz@gmail.com>

RUN apk add --update py-pip bash jq && \
    pip install awscli

ENV AWS_DEFAULT_OUTPUT text
ENV AWS_DEFAULT_REGION us-west-2

ENTRYPOINT aws
