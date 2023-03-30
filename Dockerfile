from public.ecr.aws/sam/build-python3.8

# Install dependencies
RUN wget https://cmake.org/files/v3.12/cmake-3.12.3.tar.gz
RUN tar zxvf cmake-3.*
RUN cd cmake-3.*
RUN ./bootstrap --prefix=/usr/local
RUN make -j$(nproc)
RUN make install
