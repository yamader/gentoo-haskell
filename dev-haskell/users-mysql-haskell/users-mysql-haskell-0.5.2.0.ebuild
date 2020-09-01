# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.1

CABAL_FEATURES="lib profile haddock hoogle hscolour" # Outdated test-suite: Couldn't match expected type ‘ConnectInfo’
inherit haskell-cabal

DESCRIPTION="A mysql-haskell backend for the users library"
HOMEPAGE="https://hackage.haskell.org/package/users-mysql-haskell"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # need running mysql host

RDEPEND=">=dev-haskell/io-streams-1.2:=[profile?]
	>=dev-haskell/mysql-haskell-0.5:=[profile?]
	>=dev-haskell/text-1.2:=[profile?]
	>=dev-haskell/users-0.5:=[profile?] <dev-haskell/users-0.6:=[profile?]
	>=dev-haskell/uuid-1.3:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0
"
