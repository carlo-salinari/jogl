#! /bin/sh

if [ -e ../../setenv-build-jogl-x86_64.sh ] ; then
    . ../../setenv-build-jogl-x86_64.sh
fi


ant -v  \
    -Drootrel.build=build-x86_64 \
    javadoc $* 2>&1 | tee make.jogl.doc.x86_64.log
