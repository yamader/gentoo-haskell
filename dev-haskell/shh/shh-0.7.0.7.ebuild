# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Simple shell scripting from Haskell"
HOMEPAGE="https://hackage.haskell.org/package/shh"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

#Ambiguous ‘Language.Haskell.TH’: found in ghc-lib-parser-8.8.1 template-haskell-2.14.0.0
RESTRICT=test

RDEPEND=">=dev-haskell/async-2.2.1:=[profile?] <dev-haskell/async-2.3:=[profile?]
	>=dev-haskell/mtl-2.2.2:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/split-0.2.3:=[profile?] <dev-haskell/split-0.3:=[profile?]
	>=dev-haskell/stringsearch-0.3.6.6:=[profile?] <dev-haskell/stringsearch-0.4:=[profile?]
	dev-haskell/temporary:=[profile?]
	dev-haskell/utf8-string:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/doctest
		dev-haskell/markdown-unlit
		dev-haskell/tasty
		dev-haskell/tasty-hunit
		dev-haskell/tasty-quickcheck )
"
