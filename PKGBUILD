pkgname=idun-filebrowser
pkgver=v2.23.0
pkgrel=2
pkgdesc="Idun web file manager"
arch=("armv6h" "armv7h")
url="https://filebrowser.org/"
license=(Apache)
depends=()
makedepends=(git go npm)
provides=(idun-filebrowser)
conflicts=(filebrowser)
options=(emptydirs)
install="service.install"

pkgver() {
  git describe --abbrev=0
}

build() {
  cd "${srcdir}"/..
  GOOS=linux GOARCH=arm go build -ldflags "-s -w"
}

package() {
  install -Dm755 "${srcdir}"/../filebrowser "${pkgdir}"/usr/local/bin/filebrowser
  install -Dm644 "${srcdir}"/../filebrowser.service "${pkgdir}"/etc/systemd/system/filebrowser.service
  install -d "${pkgdir}"/etc/filebrowser/img
  install -Dm755 "${srcdir}"/../branding/logo.svg "${pkgdir}"/etc/filebrowser/img/logo.svg
}
