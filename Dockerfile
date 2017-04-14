FROM ubuntu:trusty
MAINTAINER Daniel Vera

ENV DEB_URL http://mirror.oxfordnanoportal.com/software/analysis/python3-ont-albacore_1.0.2-1~trusty_all.deb

WORKDIR /root

RUN apt-get update && \
 apt-get upgrade -y && \
 apt-get install -y wget libboost-all-dev python3-setuptools
 
RUN wget -qO albacore.deb $DEB_URL
RUN dpkg -i albacore.deb || :
RUN apt-get install -fy

ENTRYPOINT ["read_fast5_basecaller.py"]

CMD ["-h"]
