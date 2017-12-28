FROM r351574nc3/gpu-miner:rocm

ENV ETHMINER_VERSION 0.12.0
ENV PATH $PATH:/opt/bin
WORKDIR /tmp/build

# Ethminer
RUN mkdir -p /opt/bin \
    && curl -OL https://github.com/ethereum-mining/ethminer/releases/download/v${ETHMINER_VERSION}/ethminer-${ETHMINER_VERSION}-Linux.tar.gz \
    && tar -xzvf ethminer-0.12.0-Linux.tar.gz \
    && mv bin/* /opt/bin 

ADD ethminer-wrapper.sh /opt/bin

WORKDIR /opt
USER ethminer:video

ENTRYPOINT [ "/opt/bin/ethminer-wrapper.sh" ]

CMD [ "eth-us-west1.nanopool.org:9999", "wallet:password" ]