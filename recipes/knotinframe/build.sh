#!/bin/bash -euo

make -j ${CPU_COUNT} PREFIX=$PREFIX CC=$CC -C Misc/Applications/Knotinframe all
make PREFIX=$PREFIX CC=$CC -C Misc/Applications/Knotinframe install-program
make PREFIX=$PREFIX CC=$CC -C Misc/Applications/lib install
chmod 755 $PREFIX/bin/knotinframe*
