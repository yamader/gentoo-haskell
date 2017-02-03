# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6

# ebuild generated by hackport 0.5.1

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A pager for grep"
HOMEPAGE="https://github.com/fmthoma/vgrep#readme"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/async-2.0.2:=[profile?]
	>=dev-haskell/attoparsec-0.12.1.6:=[profile?]
	>=dev-haskell/cabal-file-th-0.2.3:=[profile?]
	>=dev-haskell/fingertree-0.1.1:=[profile?]
	>=dev-haskell/lens-4.13:=[profile?]
	>=dev-haskell/lifted-base-0.2.3.6:=[profile?]
	>=dev-haskell/mmorph-1.0.4:=[profile?]
	>=dev-haskell/mtl-2.2.1:=[profile?]
	>=dev-haskell/pipes-4.1.6:=[profile?]
	>=dev-haskell/pipes-concurrency-2.0.3:=[profile?]
	>=dev-haskell/stm-2.4.4:=[profile?]
	>=dev-haskell/text-1.2.1.3:=[profile?]
	>=dev-haskell/vty-5.4.0:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( dev-haskell/doctest
		dev-haskell/quickcheck
		dev-haskell/tasty
		dev-haskell/tasty-quickcheck )
"

PATCHES=("${FILESDIR}"/${P}-vty-5.15.patch)
