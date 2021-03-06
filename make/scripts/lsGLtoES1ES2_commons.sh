#! /bin/sh

BUILDDIR=$1
shift
if [ -z "$BUILDDIR" ] ; then
    echo "usage $0 <BUILDDIR>"
    exit 1
fi

idir=$BUILDDIR/jogl/gensrc/classes/javax/media/opengl

echo GL to GL2ES1 to GL2ES1 GL2 enums
sort $idir/GL.java $idir/GL2ES1.java $idir/GL2ES2.java $idir/GL2.java | uniq -d | grep GL_ | awk ' { print $5 } '

echo GL to GL2ES1 to GL2ES1 GL2 functions
sort $idir/GL.java $idir/GL2ES1.java $idir/GL2ES2.java $idir/GL2.java | uniq -d | grep "public [a-z0-9_]* gl"
