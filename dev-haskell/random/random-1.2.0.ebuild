# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Pseudo-random number generation"
HOMEPAGE="https://hackage.haskell.org/package/random"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux ~ppc-macos ~sparc-solaris ~x86-solaris"
IUSE=""

RDEPEND=">=dev-haskell/mtl-2.2:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/splitmix-0.1:=[profile?] <dev-haskell/splitmix-0.2:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( >=dev-haskell/doctest-0.15 <dev-haskell/doctest-0.18
		>=dev-haskell/mwc-random-0.13 <dev-haskell/mwc-random-0.16
		>=dev-haskell/primitive-0.6 <dev-haskell/primitive-0.8
		>=dev-haskell/smallcheck-1.2 <dev-haskell/smallcheck-1.3
		>=dev-haskell/tasty-1.0 <dev-haskell/tasty-1.4
		dev-haskell/tasty-expected-failure
		>=dev-haskell/tasty-hunit-0.10 <dev-haskell/tasty-hunit-0.11
		>=dev-haskell/tasty-smallcheck-0.8 <dev-haskell/tasty-smallcheck-0.9
		>=dev-haskell/unliftio-0.2 <dev-haskell/unliftio-0.3
		>=dev-haskell/vector-0.10 <dev-haskell/vector-0.14 )
"
