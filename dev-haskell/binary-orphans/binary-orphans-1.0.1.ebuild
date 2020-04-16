# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Orphan instances for binary"
HOMEPAGE="http://hackage.haskell.org/package/binary-orphans"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/fail-4.9:=[profile?] <dev-haskell/fail-4.10:=[profile?]
	>=dev-haskell/nats-1.1.2:=[profile?] <dev-haskell/nats-1.2:=[profile?]
	>=dev-haskell/semigroups-0.18.5:=[profile?]
	>=dev-haskell/void-0.7.3:=[profile?] <dev-haskell/void-0.8:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	test? ( >=dev-haskell/quickcheck-2.13.1 <dev-haskell/quickcheck-2.14
		>=dev-haskell/quickcheck-instances-0.3.21 <dev-haskell/quickcheck-instances-0.4
		>=dev-haskell/tagged-0.8.6 <dev-haskell/tagged-0.8.7
		>=dev-haskell/tasty-0.10.1.2 <dev-haskell/tasty-1.3
		>=dev-haskell/tasty-quickcheck-0.8.3.2 <dev-haskell/tasty-quickcheck-0.11 )
"

src_prepare() {
	default

	cabal_chdeps \
		'base          >=4.5     && <4.14' 'base          >=4.5' \
		'binary        >=0.5.1.0 && <0.6 || >=0.7.1.0 && <0.8 || >=0.8.3.0 && <0.8.7' 'binary        >=0.5.1.0 && <0.6 || >=0.7.1.0 && <0.8 || >=0.8.3.0 && <0.8.9' \
		'semigroups >=0.18.5 && <0.19.1' 'semigroups >=0.18.5'
}
