#! /bin/sh

install_name_tool -id @rpath/libfontconfig.1.dylib lib/libfontconfig.1.dylib
install_name_tool -change @rpath/lib/libfreetype.6.dylib @rpath/libfreetype.6.dylib lib/libfontconfig.1.dylib
install_name_tool -change @rpath/lib/libexpat.1.dylib /usr/lib/libexpat.1.dylib lib/libfontconfig.1.dylib
