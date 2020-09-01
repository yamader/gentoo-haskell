# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit base haskell-cabal

DESCRIPTION="Fast Internet Relay Chat (IRC) library"
HOMEPAGE="https://hackage.haskell.org/package/fastirc"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/attoparsec-0.8:=[profile?]
		>=dev-haskell/bytestring-show-0.3.3:=[profile?]
		>=dev-haskell/monadlib-3.6.1:=[profile?]
		>=dev-haskell/network-fancy-0.1.4:=[profile?]
		>=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

PATCHES=("${FILESDIR}/${PN}-0.2.0-attoparsec-0.10.patch"
	"${FILESDIR}"/${P}-ghc-7.6.patch)
