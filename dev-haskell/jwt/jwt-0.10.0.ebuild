# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="JSON Web Token (JWT) decoding and encoding"
HOMEPAGE="https://bitbucket.org/puffnfresh/haskell-jwt"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # doctest fails, testsuite passes

RDEPEND=">=dev-haskell/aeson-0.7:=[profile?]
	>=dev-haskell/cryptonite-0.6:=[profile?]
	>=dev-haskell/http-types-0.8:=[profile?]
	>=dev-haskell/memory-0.8:=[profile?]
	dev-haskell/network-uri:=[profile?]
	>=dev-haskell/scientific-0.2:=[profile?]
	>=dev-haskell/semigroups-0.15.4:=[profile?]
	>=dev-haskell/text-0.11:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?]
	>=dev-haskell/vector-0.7.1:=[profile?]
	dev-haskell/x509:=[profile?]
	dev-haskell/x509-store:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( >=dev-haskell/doctest-0.9.11
		dev-haskell/hunit
		dev-haskell/lens
		dev-haskell/lens-aeson
		>=dev-haskell/quickcheck-2.4.0.1
		>=dev-haskell/tasty-0.7
		>=dev-haskell/tasty-hunit-0.4
		>=dev-haskell/tasty-quickcheck-0.3
		>=dev-haskell/tasty-th-0.1 )
"
