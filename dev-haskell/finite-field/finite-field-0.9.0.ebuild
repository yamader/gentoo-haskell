# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Finite Fields"
HOMEPAGE="https://hackage.haskell.org/package/finite-field"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="+useghctypelits"

RDEPEND="dev-haskell/hashable:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	useghctypelits? ( >=dev-haskell/singletons-1.0:=[profile?] )
	!useghctypelits? ( >=dev-haskell/type-level-numbers-0.1.1.0:=[profile?] <dev-haskell/type-level-numbers-0.2.0.0:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( dev-haskell/primes
		>=dev-haskell/quickcheck-2.5 <dev-haskell/quickcheck-3
		>=dev-haskell/tasty-0.10.1
		>=dev-haskell/tasty-hunit-0.9
		>=dev-haskell/tasty-quickcheck-0.8
		dev-haskell/tasty-th )
"

src_prepare() {
	default

	cabal_chdeps \
		'tasty-hunit ==0.9.*' 'tasty-hunit >=0.9' \
		'tasty-quickcheck ==0.8.*' 'tasty-quickcheck >=0.8'
}

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag useghctypelits useghctypelits)
}
