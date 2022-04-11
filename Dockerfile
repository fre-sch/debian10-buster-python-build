FROM debian:buster-backports
RUN apt-get update && apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common \
    build-essential \
    zlib1g-dev \
    libncurses5-dev \
    libgdbm-compat-dev \
    libgdbm-dev \
    libnss3-dev \
    libssl-dev \
    libsqlite3-dev \
    libreadline-dev \
    libffi-dev \
    libbz2-dev \
    liblzma-dev \
    lzma-dev \
    uuid-dev \
    checkinstall
COPY build-python.sh /usr/local/bin/build-python.sh
RUN chmod +x /usr/local/bin/build-python.sh
ENTRYPOINT ["/bin/bash"]
