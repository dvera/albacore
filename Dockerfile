FROM ubuntu:trusty
MAINTAINER Daniel Vera

ENV DEB_URL https://mirror.oxfordnanoportal.com/software/analysis/python3-ont-albacore_1.1.0-1~trusty_all.deb

WORKDIR /root

RUN apt-get update && \
 apt-get upgrade -y && \
 apt-get install -y wget apt-transport-https libboost-all-dev python3-setuptools
 
RUN wget -O- https://mirror.oxfordnanoportal.com/apt/ont-repo.pub | apt-key add -
RUN echo "deb http://mirror.oxfordnanoportal.com/apt trusty-stable non-free" | tee /etc/apt/sources.list.d/nanoporetech.sources.list
RUN apt-get update
RUN wget -qO albacore.deb $DEB_URL
RUN dpkg -i albacore.deb || :
RUN apt-get install -fy

ENTRYPOINT ["read_fast5_basecaller.py"]

CMD ["-h"]
