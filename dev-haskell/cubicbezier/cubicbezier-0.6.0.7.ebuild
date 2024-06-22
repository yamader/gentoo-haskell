# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Efficient manipulating of 2D cubic bezier curves"
HOMEPAGE="https://hackage.haskell.org/package/cubicbezier"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"
IUSE="debug"

RDEPEND=">=dev-haskell/fast-math-1.0.0:=[profile?]
	>=dev-haskell/integration-0.1.1:=[profile?]
	>=dev-haskell/matrices-0.5.0:=[profile?]
	>=dev-haskell/microlens-0.1.2:=[profile?]
	>=dev-haskell/microlens-mtl-0.1.2:=[profile?]
	>=dev-haskell/microlens-th-0.1.2:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?]
	>=dev-haskell/vector-space-0.10.4:=[profile?]
	>=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( >=dev-haskell/parsec-3.0
		>=dev-haskell/tasty-0.8
		>=dev-haskell/tasty-hunit-0.9 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag debug debug)
}