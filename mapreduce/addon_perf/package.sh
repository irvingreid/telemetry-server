#!/bin/bash
VERSION=1.0
NAME=addon_perf
TARBALL=${NAME}-$VERSION.tar.gz

if [ -f "$TARBALL" ]; then
    rm -v "$TARBALL"
fi
tar czvf "$TARBALL" \
        run.sh \
        run-fork.sh \
        README.md
