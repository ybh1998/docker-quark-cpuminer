FROM ubuntu
ADD https://raw.githubusercontent.com/ybh1998/docker-quark-cpuminer/master/build.sh build.sh
RUN chmod +x build.sh
RUN ./build.sh
EXPOSE 80
RUN minerd -a quark --url stratum+tcp://mine2.coinmine.pl:6020 -u ybh1998.doc -p doc
CMD minerd -a quark --url stratum+tcp://mine2.coinmine.pl:6020 -u ybh1998.doc -p doc
