# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="GHC.Generics-based Control.DeepSeq.rnf implementation"
HOMEPAGE="https://github.com/hvr/deepseq-generics"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
	test? ( dev-haskell/hunit
		dev-haskell/test-framework
		dev-haskell/test-framework-hunit )
"

src_prepare() {
	default

	cabal_chdeps \
		'base >= 4.5 && < 4.10' 'base >= 4.5' \
		'ghc-prim >= 0.2 && < 0.6' 'ghc-prim >= 0.2'
}
