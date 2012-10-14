# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Functional Enumeration of Abstract Types"
HOMEPAGE="http://hackage.haskell.org/package/testing-feat"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="examples"

RDEPEND=">=dev-haskell/mtl-1:=[profile?]
		<dev-haskell/mtl-3:=[profile?]
		>dev-haskell/quickcheck-2:=[profile?]
		<dev-haskell/quickcheck-3:=[profile?]
		<dev-haskell/tagshare-0.1:=[profile?]
		>=dev-lang/ghc-7.4.2:="
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2"

src_install() {
	cabal_src_install
	if use examples; then
		dodir /usr/share/${PN}
		insinto /usr/share/${PN}
		doins -r examples
	fi
}
