#! /bin/sh

install_name_tool -id @rpath/libcairo.2.dylib lib/libcairo.2.dylib
install_name_tool -change @rpath/lib/libpixman-1.0.dylib @rpath/libpixman-1.0.dylib lib/libcairo.2.dylib
install_name_tool -change @rpath/lib/libfontconfig.1.dylib @rpath/libfontconfig.1.dylib lib/libcairo.2.dylib
install_name_tool -change @rpath/lib/libfreetype.6.dylib @rpath/libfreetype.6.dylib lib/libcairo.2.dylib
install_name_tool -change @rpath/lib/libpng16.16.dylib @rpath/libpng16.16.dylib lib/libcairo.2.dylib
