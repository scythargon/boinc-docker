FROM ubuntu:latest
ENV PYTHONUNBUFFERED 1

RUN apt-get update && apt-get install -y git build-essential nano htop screen dbus \
    pkg-config dh-autoreconf libmysqlclient-dev libssl-dev m4 libcurl4-openssl-dev \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/BOINC/boinc.git
RUN cd boinc && ./_autosetup && ./configure --disable-server --disable-manager
RUN cd boinc && make -j && make install
COPY ./config/.screenrc /root/