FROM phusion/baseimage:0.9.18
RUN apt-get update \
    && apt-get install -y dnsutils tcpdump nmap curl openssl vim-nox screen
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
COPY home/.vimrc /root/
COPY home/.screenrc /root/
USER root
ENTRYPOINT ["/bin/bash"]

