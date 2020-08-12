# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Simple interface to some of Cabal's configuration state used by ghc-mod"
HOMEPAGE="http://hackage.haskell.org/package/cabal-helper"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="dev"

RESTRICT=test # runs external cabal and downloads things

RDEPEND=">=dev-haskell/cabal-plan-0.5.0.0:=[profile?] <dev-haskell/cabal-plan-0.8:=[profile?]
	>=dev-haskell/clock-0.7.2:=[profile?] <dev-haskell/clock-0.9:=[profile?]
	>=dev-haskell/mtl-2.0:=[profile?] <dev-haskell/mtl-2.3:=[profile?]
	>=dev-haskell/semigroupoids-5.2:=[profile?] <dev-haskell/semigroupoids-5.4:=[profile?]
	>=dev-haskell/semigroups-0.18:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	>=dev-haskell/sha-1.6.4.4:=[profile?] <dev-haskell/sha-1.7:=[profile?]
	>=dev-haskell/temporary-1.2.1:=[profile?] <dev-haskell/temporary-1.4:=[profile?]
	>=dev-haskell/text-1.0.0.0:=[profile?] <dev-haskell/text-1.3:=[profile?]
	>=dev-haskell/unix-compat-0.4.3.1:=[profile?] <dev-haskell/unix-compat-0.6:=[profile?]
	>=dev-haskell/utf8-string-1.0.1.1:=[profile?] <dev-haskell/utf8-string-1.1:=[profile?]
	>=dev-lang/ghc-8.0.2:=
	>=dev-haskell/cabal-1.24.2.0:=[profile?] <dev-haskell/cabal-3.4:=[profile?]
	dev? ( dev-haskell/cabal:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2
	test? ( >=dev-haskell/pretty-show-1.8.1 <dev-haskell/pretty-show-1.9
		>=dev-lang/ghc-8.0.2 <dev-lang/ghc-8.11 )
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag dev dev)
}
