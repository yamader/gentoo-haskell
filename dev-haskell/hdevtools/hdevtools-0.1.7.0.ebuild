# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES=""
inherit haskell-cabal

DESCRIPTION="Persistent GHC powered background server for FAST haskell development tools"
HOMEPAGE="https://github.com/hdevtools/hdevtools/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/cabal-1.18:=
	dev-haskell/cmdargs:=
	dev-haskell/ghc-paths:=
	dev-haskell/network:=
	dev-haskell/syb:=
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"
