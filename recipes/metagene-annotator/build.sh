#/bin/bash -eu

if [[ `uname` == "Linux" ]]
then
    URL=http://metagene.cb.k.u-tokyo.ac.jp/metagene/mga_x86_64.tar.gz
    NAME=mga_x86_64.tar.gz
    BINARY=mga_linux_ia64
else
    URL=http://metagene.cb.k.u-tokyo.ac.jp/metagene/mga_osx.tar.gz
    NAME=mga_osx.tar.gz
    BINARY=mga_osx
fi

wget $URL
tar -zxvf $NAME
cp $BINARY $PREFIX/bin/mga
