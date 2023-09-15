#! /bin/sh

GSTREAMER=/Library/Frameworks/GStreamer.framework/Versions/1.0

if [ -d include ]; then
  rm -r include
fi

if [ -d lib ]; then
  rm -r lib
fi

mkdir include
cp -r /Users/cartier/Devel/local/include/fontconfig include/fontconfig

mkdir lib
lipo -extract arm64 $GSTREAMER/lib/libfontconfig.1.dylib -output lib/libfontconfig.1.dylib
chmod 755 lib/libfontconfig.1.dylib
