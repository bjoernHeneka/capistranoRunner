FROM ruby:2.3.1

MAINTAINER Björn Heneka <bheneka@codebee.de>

RUN gem install capistrano -v "=3.4.0" && \
    gem install cabin \
                childprocess \
                gem-wrappers \
                ffi \
                executable-hooks \
                arr-pm \
                backports

ADD caprun.sh /cap.sh
RUN chmod +x /cap.sh