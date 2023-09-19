#! /bin/sh

cd ../../foreign/jazz-opengl-silicon

GLEW=~/Devel/system/glew


if [ -d glew ]; then
  rm -r glew
fi


mkdir glew
cd glew

cp -r $GLEW/include include

mkdir lib
cp $GLEW/lib/libGLEW.2.1.0.dylib lib/libGLEW.dylib
install_name_tool -id @rpath/libGLEW.dylib lib/libGLEW.dylib
