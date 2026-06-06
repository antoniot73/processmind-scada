FROM nodered/node-red:latest

USER root

COPY data /data
COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

RUN chmod +x /usr/local/bin/docker-entrypoint.sh \
    && chown -R node-red:node-red /data

USER node-red

EXPOSE 1880

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]