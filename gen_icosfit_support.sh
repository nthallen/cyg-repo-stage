#!/bin/sh
pkgname=icosfit-support
pkgdesc='Packages commonly useful for running icosfit'
pkgver=0.0.1
pkgrel=2

verrel=$pkgver-$pkgrel
pkgverrel=$pkgname-$verrel

[ -d x86_64/release/$pkgname ] ||
  mkdir -p x86_64/release/$pkgname
cd x86_64/release/$pkgname

mkdir -p usr/share/doc/$pkgname
echo "Placeholder for empty src tar error" >usr/share/doc/$pkgname/README
tar -Jcf $pkgverrel.tar.xz usr
rm -rf usr

mkdir $pkgverrel.src
echo "Placeholder for empty src tar error" >$pkgverrel.src/README
tar -Jcf $pkgverrel-src.tar.xz $pkgverrel.src
rm -rf $pkgverrel.src

cat > $pkgname-$verrel.hint << EOF
  sdesc: "$pkgdesc"
  ldesc: "$pkgdesc"
  category: Base
  requires: bzip2 cygwin-doc file less openssh git chere ssh-agentd
EOF

cat > $pkgverrel-src.hint << EOF
  sdesc: "$pkgdesc"
  ldesc: "$pkgdesc"
  category: Base
EOF
