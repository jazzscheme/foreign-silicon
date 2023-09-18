#! /bin/sh

cd ../../foreign/jazz-stream-silicon

RNNOISE=/Users/cartier/Devel/gstreamer/rnnoise-silicon


cp $RNNOISE/rnnoise/silicon/lib/librnnoise.0.dylib gstreamer/lib
cp $RNNOISE/build/plugin/libgstrnnoise.dylib gstreamer/lib/gstreamer-1.0/libgstrnnoise.dylib

install_name_tool -id @rpath/librnnoise.0.dylib gstreamer/lib/librnnoise.0.dylib
install_name_tool -change @rpath/librnnoise.dylib @rpath/librnnoise.0.dylib gstreamer/lib/gstreamer-1.0/libgstrnnoise.dylib

jazz -run relocate file gstreamer/lib/gstreamer-1.0 libgstrnnoise.dylib @rpath/ @rpath/lib/
