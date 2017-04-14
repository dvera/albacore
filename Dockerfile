FROM ubuntu:trusty
MAINTAINER Daniel Vera

ENV DEB_URL http://mirror.oxfordnanoportal.com/software/analysis/python3-ont-albacore_1.0.2-1~trusty_all.deb

WORKDIR /root

RUN apt-get update && \
 apt-get upgrade -y && \
 apt-get install -y wget  apt-transport-https
 #libboost-all-dev python3-setuptools libblas3 libgfortran3 libhdf5-7 liblapack3 python3-h5py python3-numpy

RUN wget -O- https://mirror.oxfordnanoportal.com/apt/ont-repo.pub | sudo apt-key add -
RUN echo "deb http://mirror.oxfordnanoportal.com/apt trusty-stable non-free" | sudo tee /etc/apt/sources.list.d/nanoporetech.sources.list
RUN apt-get update
RUN apt-get install -y \
 python3-dev \
 libhdf5-7 python3-h5py \
 python3-numpy \
 python3-ont-fast5-api \
 python3-setuptools \
 libboost-filesystem1.54.0 \
 libboost-program-options1.54.0 \
 libboost-system1.54.0 \
 libboost-python1.54.0

RUN wget -qO albacore.deb $DEB_URL
RUN dpkg -i albacore.deb
RUN rm -f albacore.deb

ENTRYPOINT ["read_fast5_basecaller.py"]

CMD ["-h"]
