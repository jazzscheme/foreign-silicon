#! /bin/sh

cd ../../foreign/jazz-stream-silicon

WEBRTC=/Users/barbara/Devel/gstreamer/webrtc/build
WEBRTCAUDIOPROCESSING=/Users/barbara/Devel/gstreamer/webrtcaudioprocessing/build/plugin


cp $WEBRTC/libwebrtc.dylib gstreamer/lib
cp $WEBRTCAUDIOPROCESSING/libgstwebrtcaudioprocessing.dylib gstreamer/lib/gstreamer-1.0/libgstwebrtcaudioprocessing.dylib

install_name_tool -change @rpath/libwebrtc.dylib @rpath/gstreamer/lib/libwebrtc.dylib gstreamer/lib/gstreamer-1.0/libgstwebrtcaudioprocessing.dylib

jazz -run relocate file gstreamer/lib libwebrtc.dylib /Library/Frameworks/GStreamer.framework/Versions/1.0 @rpath/gstreamer
jazz -run relocate file gstreamer/lib/gstreamer-1.0 libgstwebrtcaudioprocessing.dylib /Library/Frameworks/GStreamer.framework/Versions/1.0 @rpath/gstreamer
