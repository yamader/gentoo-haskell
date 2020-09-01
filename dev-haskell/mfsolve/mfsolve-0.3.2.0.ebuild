# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Equation solver and calculator a la metafont"
HOMEPAGE="https://hackage.haskell.org/package/mfsolve"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/hashable-0.1.2:=[profile?]
	>=dev-haskell/mtl-2.1.3:=[profile?]
	>=dev-haskell/mtl-compat-0.2.1:=[profile?]
	>dev-haskell/unordered-containers-0.2:=[profile?]
	>=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8
	test? ( >=dev-haskell/tasty-0.8
		>=dev-haskell/tasty-hunit-0.9 )
"
