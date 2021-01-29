# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour" # Circular depend: test-suite"
# break circular dependencies:
# https://github.com/gentoo-haskell/gentoo-haskell/issues/810
CABAL_FEATURES+=" nocabaldep"

inherit haskell-cabal

DESCRIPTION="Efficient hashing-based container types"
HOMEPAGE="https://github.com/haskell-unordered-containers/unordered-containers"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="debug"

RESTRICT=test # circular deps: unordered-containers[test]->quickcheck->semigroups->unordered-containers

RDEPEND=">=dev-haskell/hashable-1.0.1.1:=[profile?] <dev-haskell/hashable-1.4:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag debug debug)
}