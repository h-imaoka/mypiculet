FROM ruby

RUN /bin/sh -c 'cd /tmp; \
git clone https://github.com/h-imaoka/piculet.git; \
cd piculet; \
git checkout over-50-rules-env; \
gem build piculet.gemspec; \
gem install piculet-0.2.9.gem'

ENTRYPOINT ["piculet"]