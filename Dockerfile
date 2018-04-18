FROM alpine
RUN apk add zlib bison make gcc g++ openssl-dev ncurses-dev --no-cache && \
    wget https://invisible-mirror.net/archives/lynx/tarballs/lynx2.8.9dev.17.zip && \
    unzip lynx2.8.9dev.17.zip && \
    cd lynx2.8.9dev.17 && \
    export TERM=vt100 && \
    export GCC=g++ && \
    ./configure --with-ssl=/usr/include --with-zlib=/usr/include && \
    make && \
    make install 
ENTRYPOINT ["lynx"]
