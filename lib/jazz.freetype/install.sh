#! /bin/sh

install_name_tool -id @rpath/libfreetype.6.dylib lib/libfreetype.6.dylib
install_name_tool -change @rpath/lib/libpng16.16.dylib @rpath/libpng16.16.dylib lib/libfreetype.6.dylib
install_name_tool -change @rpath/lib/libbz2.1.dylib /usr/lib/libbz2.1.0.dylib lib/libfreetype.6.dylib
install_name_tool -change @rpath/lib/libz.1.dylib /usr/lib/libz.1.dylib lib/libfreetype.6.dylib
