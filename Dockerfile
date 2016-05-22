FROM ubuntu
RUN apt-get update
RUN apt-get install git libjansson-dev libcurl4-openssl-dev
cat /proc/cpuinfo
git clone https://github.com/uncle-bob/quarkcoin-cpuminer.git
cd quarkcoin-cpuminer
./autogen.sh
./configure CFLAGS="-msse2 -O3"
CMD minerd -a quark --url stratum+tcp://mine2.coinmine.pl:6020 -u ybh1998.doc -p doc
