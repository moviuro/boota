# Maintainer: Moviuro <moviuro+archlinux@gmail.com>

pkgname=boota
pkgver=0.0.1
pkgrel=1
pkgdesc="boota is a stupid tool that checks if /boot is mounted"
arch=('any')
license=('custom:WTFPL')
url="https://github.com/moviuro/boota"
depends=('bash')
makedepends=('sed')
source=("https://github.com/moviuro/$pkgname/archive/${pkgver}.tar.gz")
sha256sums=('dfb010c11e6a2e15a976728028eead25027c8c1360ea7c35c3f82e3dd3ccb382')

package() {
  cd ${srcdir}/${pkgname}-${pkgver}
  make PREFIX=${pkgdir}/usr \
    MANDIR=${pkgdir}/usr/share/man \
    LICENSEDIR=${pkgdir}/usr/share/licenses install
}

post_install () {
  info "you should run 'boota install'"
}
