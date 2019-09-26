FROM gitpod/workspace-full

USER root

RUN apt-get update \
    && apt-get install -y libopenmpi-dev openmpi-bin openmpi-doc

ENV OMPI_MCA_btl_base_warn_component_unused 0

RUN mkdir /work/

RUN git clone --depth 1 https://github.com/wichtounet/mnist.git /work/mnist

RUN git clone --depth 1 https://github.com/eigenteam/eigen-git-mirror.git /work/eigen

# Install custom tools, runtime, etc. using apt-get
# For example, the command below would install "bastet" - a command line tetris clone:
#
# RUN apt-get update \
#    && apt-get install -y bastet \
#    && apt-get clean && rm -rf /var/cache/apt/* && rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*
#
# More information: https://www.gitpod.io/docs/42_config_docker/
