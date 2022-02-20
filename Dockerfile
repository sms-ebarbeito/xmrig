FROM  ubuntu:latest

RUN ln -snf /usr/share/zoneinfo/America/Buenos_Aires /etc/localtime && echo America/Buenos_Aires > /etc/timezone

RUN apt-get update
RUN apt-get -yq install git make cmake  gcc g++ libuv1-dev libssl-dev libhwloc-dev kmod

RUN git clone https://github.com/xmrig/xmrig

RUN mkdir xmrig/build && cd xmrig/build && \
    cmake .. && \
    make -j$(nproc) && \
    chmod +x xmrig && \
    rm -r /xmrig/src

COPY config.json /xmrig/build/config.json

WORKDIR /xmrig/build
ENTRYPOINT ["./xmrig"]