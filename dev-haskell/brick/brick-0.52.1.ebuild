# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A declarative terminal user interface library"
HOMEPAGE="https://github.com/jtdaugherty/brick/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="demos"

RDEPEND="dev-haskell/config-ini:=[profile?]
	dev-haskell/contravariant:=[profile?]
	>=dev-haskell/data-clist-0.1:=[profile?]
	dev-haskell/dlist:=[profile?]
	>=dev-haskell/exceptions-0.10.0:=[profile?]
	>=dev-haskell/microlens-0.3.0.0:=[profile?]
	dev-haskell/microlens-mtl:=[profile?]
	dev-haskell/microlens-th:=[profile?]
	>=dev-haskell/stm-2.4.3:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-haskell/text-zipper-0.7.1:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-haskell/vty-5.24:=[profile?]
	>=dev-haskell/word-wrap-0.2:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	test? ( dev-haskell/quickcheck )
"

src_prepare() {
	default

	cabal_chdeps \
		'base <= 4.13.0.0' 'base'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag demos demos)
}
