FROM debian:strecth-slim

RUN mkdir /opt/tlm/
ADD files/traefik /opt/tlm/
RUN chmod +x /opt/tlm/traefik && ln -s /opt/tlm/traefik /bin/traefik &&\
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

CMD["/bin/traefik"]