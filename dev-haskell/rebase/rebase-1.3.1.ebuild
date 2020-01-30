# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="A more progressive alternative to the 'base' package"
HOMEPAGE="https://github.com/nikita-volkov/rebase"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/base-prelude-0.1:=[profile?] <dev-haskell/base-prelude-2:=[profile?]
	>=dev-haskell/bifunctors-5:=[profile?] <dev-haskell/bifunctors-6:=[profile?]
	>=dev-haskell/contravariant-1:=[profile?] <dev-haskell/contravariant-2:=[profile?]
	>=dev-haskell/contravariant-extras-0.3.2:=[profile?] <dev-haskell/contravariant-extras-0.4:=[profile?]
	>=dev-haskell/dlist-0.7:=[profile?] <dev-haskell/dlist-0.9:=[profile?]
	>=dev-haskell/either-5:=[profile?] <dev-haskell/either-6:=[profile?]
	>=dev-haskell/fail-4.9:=[profile?] <dev-haskell/fail-5:=[profile?]
	>=dev-haskell/hashable-1:=[profile?] <dev-haskell/hashable-2:=[profile?]
	>=dev-haskell/mtl-2.2:=[profile?] <dev-haskell/mtl-3.0:=[profile?]
	>=dev-haskell/profunctors-5:=[profile?] <dev-haskell/profunctors-6:=[profile?]
	>=dev-haskell/scientific-0.3:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/semigroupoids-5.2.2:=[profile?] <dev-haskell/semigroupoids-6:=[profile?]
	>=dev-haskell/semigroups-0.16:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	>=dev-haskell/stm-2:=[profile?] <dev-haskell/stm-3:=[profile?]
	>=dev-haskell/text-1:=[profile?] <dev-haskell/text-2:=[profile?]
	>=dev-haskell/unordered-containers-0.2:=[profile?] <dev-haskell/unordered-containers-0.3:=[profile?]
	>=dev-haskell/uuid-1:=[profile?] <dev-haskell/uuid-2:=[profile?]
	>=dev-haskell/vector-0.10:=[profile?] <dev-haskell/vector-0.13:=[profile?]
	>=dev-haskell/void-0.7:=[profile?] <dev-haskell/void-0.8:=[profile?]
	>=dev-lang/ghc-8.2.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.0.0.2
"
