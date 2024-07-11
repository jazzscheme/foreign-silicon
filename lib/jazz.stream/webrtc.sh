#! /bin/sh

cd ../../foreign/jazz-stream-silicon

WEBRTC=/Users/cartier/Devel/gstreamer/webrtc/build
WEBRTCAUDIOPROCESSING=/Users/cartier/Devel/gstreamer/webrtcaudioprocessing/build/plugin


cp $WEBRTC/libwebrtc.dylib gstreamer/lib
cp $WEBRTCAUDIOPROCESSING/libgstwebrtcaudioprocessing.dylib gstreamer/lib/gstreamer-1.0/libgstwebrtcaudioprocessing.dylib

jazz -run relocate file gstreamer/lib libwebrtc.dylib @rpath/ @rpath/lib/
jazz -run relocate file gstreamer/lib/gstreamer-1.0 libgstwebrtcaudioprocessing.dylib @rpath/ @rpath/lib/
