# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

# ebuild generated by hackport 0.2.18.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit base haskell-cabal

DESCRIPTION="Catchy combinators for HUnit"
HOMEPAGE="https://github.com/sol/hspec-expectations#readme"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/hunit[profile?]
		>=dev-lang/ghc-6.8.2"
DEPEND="${RDEPEND}
		test? ( dev-haskell/hspec
			dev-haskell/hspec-discover
			dev-haskell/silently
		)
		>=dev-haskell/cabal-1.8"

PATCHES=("${FILESDIR}/${PN}-0.3.0.1-ghc-7.7.patch")
