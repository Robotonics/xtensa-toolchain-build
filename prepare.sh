#! /bin/bash -ex

. `dirname "$0"`/config

[ -d $BINUTILS ] || tar -xjf $BINUTILS.tar.bz2
[ -d $GCC ] || tar -xjf $GCC.tar.bz2
[ -d $GDB ] || tar -xjf $GDB.tar.bz2
#tar -xzf $NEWLIB.tar.gz
#( cd $BINUTILS ; patch -p1 < ../$BINUTILS.patch )
#( cd $GDB ; patch -p1 < ../$GDB.patch )
#( cd $NEWLIB ; patch -p1 < ../$NEWLIB.patch )
#ln -s ../$NEWLIB/{newlib,libgloss} $GCC

tar -xzf overlays/binutils-xtensa_$1.tgz -C $BINUTILS
tar -xzf overlays/gcc-xtensa_$1.tgz -C $GCC
tar -xzf overlays/gdb-xtensa_$1.tgz -C $GDB
