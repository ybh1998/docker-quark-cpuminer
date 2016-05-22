apt-get update
apt-get -y install git libjansson-dev libcurl4-openssl-dev automake build-essential
cat /proc/cpuinfo
git clone https://github.com/uncle-bob/quarkcoin-cpuminer.git
cd quarkcoin-cpuminer
./autogen.sh
./configure CFLAGS="-msse2 -O3"
make
make install
