#!/bin/sh
pkgname=ssh-agentd
pkgdesc='Script to run ssh-agent on first interactive bash invocation'
pkgver=0.0.1
pkgrel=2

verrel=$pkgver-$pkgrel
pkgverrel=$pkgname-$verrel
[ -d x86_64/release/$pkgname ] ||
  mkdir -p x86_64/release/$pkgname
cd x86_64/release/$pkgname

tar -Jcf $pkgverrel.tar.xz -C / etc/profile.d/ssh_agent.sh

cat > $pkgverrel.hint << EOF
  sdesc: "Starts up ssh-agent with first bash shell"
  ldesc: "Encourages using passphrases on ssh keys"
  category: Net
  requires: openssh
EOF

mkdir $pkgverrel.src
cp /etc/profile.d/ssh_agent.sh $pkgverrel.src/
tar -Jcf $pkgverrel-src.tar.xz $pkgverrel.src
rm -rf $pkgverrel.src

cat > $pkgverrel-src.hint << EOF
  sdesc: "Starts up ssh-agent with first bash shell"
  ldesc: "Encourages using passphrases on ssh keys"
  category: Net
EOF
