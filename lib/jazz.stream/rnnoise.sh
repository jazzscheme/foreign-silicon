#! /bin/sh

APPDIR=../../../../../..
. "$APPDIR/.jaz"

JAZZ=$APPDIR/$JAZDEST/jazz

RNNOISE=/Users/barbara/Devel/gstreamer/rnnoise

cp $RNNOISE/rnnoise/mac/lib/librnnoise.0.dylib gstreamer/lib
cp $RNNOISE/build/plugin/libgstrnnoise.dylib gstreamer/lib/gstreamer-1.0/libgstrnnoise.dylib

install_name_tool -id @rpath/librnnoise.0.dylib gstreamer/lib/librnnoise.0.dylib
install_name_tool -change /usr/local/lib/librnnoise.0.dylib @rpath/librnnoise.0.dylib gstreamer/lib/librnnoise.0.dylib
install_name_tool -change @rpath/librnnoise.0.dylib @rpath/gstreamer/lib/librnnoise.0.dylib gstreamer/lib/gstreamer-1.0/libgstrnnoise.dylib

$JAZZ -run relocate file gstreamer/lib/gstreamer-1.0 libgstrnnoise.dylib /Library/Frameworks/GStreamer.framework/Versions/1.0 @rpath/gstreamer
