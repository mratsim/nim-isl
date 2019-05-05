#!/bin/sh

cd isl
autoreconf -i
./configure --with-int=imath-32 # imath for bigint with small integer optimization
echo '#define GIT_HEAD_ID "isl-0.21"' > gitversion.h