# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Software Transactional Memory"
HOMEPAGE="https://hackage.haskell.org/package/stm"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux ~x86-macos"
IUSE=""

RDEPEND=">=dev-lang/ghc-7.4.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"

CABAL_CORE_LIB_GHC_PV="PM:8.4.1_alpha1 PM:8.4.1_alpha2"

src_prepare() {
	default

	cabal_chdeps \
		'base  >= 4.3 && < 4.10' 'base  >= 4.3'
}
