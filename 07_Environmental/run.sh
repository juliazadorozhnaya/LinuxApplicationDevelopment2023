#!/bin/sh

make gitclean;
autoreconf -fisv && ./configure --disable-dependency-tracking && make
