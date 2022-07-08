FROM centos:7

RUN yum -y install gcc gcc-c++ git glib2-devel libfdt-devel pixman-devel zlib-devel bzip2 make python2

RUN git clone https://github.com/xiw/qemu.git -b 6.828-2.3.0 /qemu
WORKDIR /qemu

RUN ./configure --disable-kvm --python=python2 --target-list="i386-softmmu"
RUN make -j
RUN make install

WORKDIR /workdir
ENTRYPOINT ["/usr/local/bin/qemu-system-i386"]

