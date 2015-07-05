# Maintainer: Austin Haedicke <austin.haedicke@gmail.com>
# Contributor: Marcin Karpezo <sirmacik at gmail dot com>
# Contributor: Daenyth <Daenyth+Arch [at] gmail [dot] com>

pkgname=rakudo-star
pkgver=2015.03
pkgrel=1
pkgdesc="Rakudo Perl6 on MoarVM with additional modules"
arch=('i686' 'x86_64')
url='http://rakudo.org/'
license=(PerlArtistic)
depends=('glibc')
makedepends=('perl')
provides=('rakudo' 'rakudo-moarvm')
conflicts=('rakudo' 'rakudo-moarvm')
options=('!makeflags')
source=(http://rakudo.org/downloads/star/$pkgname-$pkgver.tar.gz)
sha512sums=('SKIP')

prepare() {
  mkdir -p ~/.rakudostar
}

build() {
  cd "$pkgname-$pkgver"
  perl Configure.pl --gen-moar --gen-nqp --backends=moar
  make
}

package() {
  cd "$pkgname-$pkgver"
  make DESTDIR="$pkgdir" install
  cp "$srcdir"/"$pkgname-$pkgver"/install/bin/* ~/.rakudostar
  sudo ln -sf ~/.rakudostar/* /usr/bin/
}
