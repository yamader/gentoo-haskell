# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.3
#hackport: flags: -validity

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Support for well-typed paths"
HOMEPAGE="https://hackage.haskell.org/package/path"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="dev"

RDEPEND="dev-haskell/aeson:=[profile?]
	>=dev-haskell/exceptions-0.4:=[profile?] <dev-haskell/exceptions-0.11:=[profile?]
	>=dev-haskell/hashable-1.2:=[profile?] <dev-haskell/hashable-1.4:=[profile?]
	dev-haskell/text:=[profile?]
	>=dev-lang/ghc-8.2.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.0.0.2
	test? ( >=dev-haskell/genvalidity-0.8
		>=dev-haskell/genvalidity-hspec-0.7
		>=dev-haskell/genvalidity-property-0.4
		>=dev-haskell/hspec-2.0 <dev-haskell/hspec-3
		>=dev-haskell/mtl-2.0 <dev-haskell/mtl-3
		dev-haskell/quickcheck
		>=dev-haskell/validity-0.8.0.0 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag dev dev) \
		--flag=-validity
}
