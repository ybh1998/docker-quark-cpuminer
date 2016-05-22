FROM ubuntu
RUN apt-get update
RUN apt-get -y install git libjansson-dev libcurl4-openssl-dev
RUN cat /proc/cpuinfo
RUN git clone https://github.com/uncle-bob/quarkcoin-cpuminer.git
WORKDIR quarkcoin-cpuminer
RUN ./autogen.sh
RUN ./configure CFLAGS="-msse2 -O3"
RUN make
RUN make install
CMD minerd -a quark --url stratum+tcp://mine2.coinmine.pl:6020 -u ybh1998.doc -p doc
