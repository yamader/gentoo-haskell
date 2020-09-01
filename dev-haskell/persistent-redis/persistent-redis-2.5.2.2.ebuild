# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.4.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Backend for persistent library using Redis"
HOMEPAGE="https://hackage.haskell.org/package/persistent-redis"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT="test" # requires running redis

RDEPEND=">=dev-haskell/aeson-0.8:=[profile?]
	>=dev-haskell/attoparsec-0.12.0.0:=[profile?]
	>=dev-haskell/hedis-0.6.0:=[profile?]
	dev-haskell/http-api-data:=[profile?]
	>=dev-haskell/monad-control-0.3.2.0:=[profile?] <dev-haskell/monad-control-1.2.0.0:=[profile?]
	>=dev-haskell/mtl-2.2.0:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/path-pieces-0.1:=[profile?]
	>=dev-haskell/persistent-2.5:=[profile?] <dev-haskell/persistent-3.0:=[profile?]
	>=dev-haskell/scientific-0.3.1:=[profile?] <dev-haskell/scientific-0.4:=[profile?]
	>=dev-haskell/text-1.2.0.0:=[profile?]
	>=dev-haskell/utf8-string-0.3.7:=[profile?] <dev-haskell/utf8-string-1.1.0:=[profile?]
	>=dev-lang/ghc-7.10.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.22.2.0
	test? ( >=dev-haskell/persistent-template-2.5 <dev-haskell/persistent-template-3.0 )
"
