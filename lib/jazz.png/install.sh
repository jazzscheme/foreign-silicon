#! /bin/sh

cd ../../foreign/jazz-png-silicon


install_name_tool -id @rpath/libpng16.16.dylib lib/libpng16.16.dylib
