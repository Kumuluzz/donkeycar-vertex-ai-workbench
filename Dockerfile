FROM gcr.io/deeplearning-platform-release/base-cpu:m95

# Downloads latest stable donkeycar release
WORKDIR app
RUN wget https://github.com/autorope/donkeycar/archive/refs/tags/4.3.6.2.tar.gz && tar -xzf 4.3.6.2.tar.gz
WORKDIR donkeycar-4.3.6.2

# Installs the donkeycar framework
RUN pip install -e .[pc]
