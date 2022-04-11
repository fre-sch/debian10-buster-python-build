#!/bin/bash
set -e -x
cd /usr/local/src
curl -O https://www.python.org/ftp/python/3.8.13/Python-3.8.13.tar.xz
tar -xf Python-3.8.13.tar.xz
cd /usr/local/src/Python-3.8.13
./configure --enable-optimizations
checkinstall \
    --fstrans=no \
    --pkgsource="https://www.python.org/ftp/python/3.8.13/Python-3.8.13.tar.xz" \
    --pkgname="python38" \
    --pkgrelease="SNAPSHOT" \
    --nodoc \
    --requires="mime-support,libbz2-1.0,libc6 \(\>= 2.28\),libdb5.3,libffi6 \(\>= 3.0.4\),liblzma5 \(\>= 5.1.1alpha+20120614\),libmpdec2,libncursesw6 \(\>= 6\),libreadline7 \(\>= 7.0~beta\),libsqlite3-0 \(\>= 3.7.15\),libtinfo6 \(\>= 6\),libuuid1 \(\>= 2.20.1\),libgdbm-compat4,libgdbm6,libexpat1 \(\>= 2.1~beta3\),zlib1g \(\>= 1:1.2.0\)" \
    -D -y \
    make altinstall
