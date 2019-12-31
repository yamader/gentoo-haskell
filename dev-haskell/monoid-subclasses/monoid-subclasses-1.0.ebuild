# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1

#disable haddock hoogle: crashes when generating doc
CABAL_FEATURES="lib profile hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Subclasses of Monoid"
HOMEPAGE="https://github.com/blamario/monoid-subclasses/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/primes-0.2:=[profile?] <dev-haskell/primes-0.3:=[profile?]
	>=dev-haskell/text-0.11:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/vector-0.12:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
	test? ( >=dev-haskell/quickcheck-2.9 <dev-haskell/quickcheck-3
		>=dev-haskell/quickcheck-instances-0.3.12 <dev-haskell/quickcheck-instances-0.4
		>=dev-haskell/tasty-0.7
		>=dev-haskell/tasty-quickcheck-0.7 <dev-haskell/tasty-quickcheck-1.0 )
"
