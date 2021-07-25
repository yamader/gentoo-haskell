# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.5.6

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A pure Haskell parser and renderer for binary Olson timezone files"
HOMEPAGE="http://projects.haskell.org/time-ng/"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/extensible-exceptions-0.1.0:=[profile?] <dev-haskell/extensible-exceptions-0.2:=[profile?]
	>=dev-haskell/timezone-series-0.1.0:=[profile?] <dev-haskell/timezone-series-0.2:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
"
