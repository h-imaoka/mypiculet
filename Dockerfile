FROM ruby:2-alpine

RUN /bin/sh -c 'cd /tmp; \
apk upgrade --no-cache; \
apk add --no-cache --virtual build-dependencies git build-base; \
git clone https://github.com/h-imaoka/piculet.git; \
cd piculet; \
git checkout over-50-rules-env; \
gem build piculet.gemspec; \
gem install piculet-0.2.9.gem; \
apk del build-dependencies git build-base;'


ENTRYPOINT ["piculet"]