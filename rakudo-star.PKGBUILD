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
provides=('rakudo-star')
conflicts=('rakudo' 'rakudo-star')
options=('!makeflags')
source=(http://rakudo.org/downloads/star/rakudo-star-2015.03.tar.gz)
sha512sums=('SKIP')

prepare() {
  mkdir -p ~/.rakudostar
}

build() {
  cd "$pkgname-$pkgver"
  tar -xzvf ../"$pkgname-$pkgver".tar.gz
  perl Configure.pl --backend=moar --gen-moar --gen-nqp
}

package() {
  cp "$srcdir"/"$pkgname-$pkgver"/install/bin/* ~/.rakudostar
  sudo ln -s ~/.rakudostar/* /usr/bin
}
