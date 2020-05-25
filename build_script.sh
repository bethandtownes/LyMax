#!/bin/zsh

./autogen.sh

export CPPFLAGS="$CPPFLAGS $HOME/.local/Qt/5.14.2/clang_64/lib/QtCore.framework/Headers"
export CPPFLAGS="$CPPFLAGS $HOME/.local/Qt/5.14.2/clang_64/lib/QtGui.framework/Headers"

./configure \
    --with-version-suffix=-2.4 \
    --with-libiconv-prefix=/usr \
    --with-x=no \
    --disable-stdlib-debug \
    --prefix=$HOME/apps/build/LyX.app \
    --enable-cxx11 


# CPPFLAGS=-I/$HOME/.local/Qt/5.14.2/clang_64/include \
#     LDFLAGS=-L/$HOME/.local/Qt/5.14.2/clang_64/lib
make -j8
