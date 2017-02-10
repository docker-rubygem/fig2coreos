FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.1.6

RUN gem install fig2coreos --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["fig2coreos"]
CMD ["--help"]
