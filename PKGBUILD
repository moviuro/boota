# Maintainer: Moviuro <moviuro+archlinux@gmail.com>

pkgname=boota
pkgver=0.0.5
pkgrel=1
pkgdesc="a stupid pacman hook that checks /boot"
arch=('any')
license=('custom:WTFPL')
url="https://github.com/moviuro/boota"
depends=('bash')
optdepends=('systemd: for machine-id')
validpgpkeys=('2CD96FEE343C6799B9CEAFAD62009A2E0C22D9AB')
source=("boota-git::git+https://github.com/moviuro/${pkgname}.git#${pkgver}?signed")
sha256sums=('SKIP')

package() {
  install -Dm 0555 "${srcdir}/${pkgname}/boota" "${pkgdir}/bin/boota"
  install -Dm 0444 "${srcdir}/${pkgname}/20-boota.hook" \
   "${pkgdir}/usr/share/libalpm/hooks/20-boota.hook"
}
