#!/bin/sh
ver="${1-1.4.20100609}"
# 1.4 has regressions
ver="${1-1.3}"
name="miniupnpc-${ver}"
curl -o "${name}.tar.gz" "http://miniupnp.free.fr/files/${name}.tar.gz"
tar -xvzf "${name}.tar.gz"
cd "${name}" || exit 1
make || exit 1
make install
# eof