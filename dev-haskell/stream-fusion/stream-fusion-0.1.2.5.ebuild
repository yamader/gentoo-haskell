# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.3.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit eutils haskell-cabal

DESCRIPTION="Faster Haskell lists using stream fusion"
HOMEPAGE="https://hackage.haskell.org/trac/ghc/ticket/915"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-6.10.4:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.6.0.3
"

PATCHES=(
	"${FILESDIR}"/${PN}-0.1.2.5-ghc-7.10.patch
)

src_prepare() {
	default

	# DPH was removed from ghc-8
	cabal_chdeps \
		'ghc-options:       -Odph' 'ghc-options:       -Wall'
}
