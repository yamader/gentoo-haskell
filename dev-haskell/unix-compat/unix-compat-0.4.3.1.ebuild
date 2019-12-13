# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Portable POSIX-compatibility layer"
HOMEPAGE="https://github.com/jystic/unix-compat"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~alpha amd64 ~ia64 ppc ppc64 sparc x86 ~amd64-linux ~x86-linux"
IUSE="old-time"

RDEPEND=">=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6
"

PATCHES=("${FILESDIR}"/${PN}-0.4.2.0-majmin.patch)

src_prepare() {
	default

	cabal_chdeps \
		'time >= 1.0 && < 1.7' 'time >= 1.0' \
		'directory >= 1.2 && < 1.3' 'directory >= 1.2'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag old-time old-time)
}
