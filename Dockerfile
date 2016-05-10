FROM nginx:1.10

# Install packages
RUN apt-get update -qq && \
    apt-get install curl -y -qq && \
    curl -L https://github.com/docker/compose/releases/download/1.7.1/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose && \
    chmod +x /usr/local/bin/docker-compose

# Remove trash
RUN apt-get purge curl -y -qq && \
    rm -rf /var/cache/apt/* && \
    rm -rf /vat/tmp/* && \
    rm -rf /tmp/*

COPY scripts/run.sh /bin

CMD ["/bin/run.sh"]
