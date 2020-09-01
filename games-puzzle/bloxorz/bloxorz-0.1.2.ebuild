# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

# ebuild generated by hackport 0.2.13

EAPI=5

CABAL_FEATURES="bin"
inherit flag-o-matic haskell-cabal

DESCRIPTION="OpenGL Logic Game"
HOMEPAGE="https://hackage.haskell.org/package/bloxorz"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.2
	dev-haskell/glfw
	>=dev-haskell/opengl-2.3
	>=dev-lang/ghc-6.8.2
"

src_configure() {
	# WORKAROUND:
	# fails to start (opengl expects libGLU to linked into app)

	append-ldflags $(no-as-needed)
	cabal_src_configure
}
