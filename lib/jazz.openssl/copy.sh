#! /bin/sh

cd ../../foreign/jazz-openssl-silicon

GSTREAMER=/Library/Frameworks/GStreamer.framework/Versions/1.0


if [ -d include ]; then
  rm -r include
fi

if [ -d lib ]; then
  rm -r lib
fi


mkdir include
cp -r $GSTREAMER/include/openssl include/openssl

mkdir lib
lipo -extract arm64 $GSTREAMER/lib/libcrypto.1.1.dylib -output lib/libcrypto.1.1.dylib
lipo -extract arm64 $GSTREAMER/lib/libssl.1.1.dylib -output lib/libssl.1.1.dylib
