# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.5.9999
#hackport: flags: -validity

CABAL_FEATURES="lib profile haddock hoogle hscolour" # Outdated test-suite: Ambiguous occurrence ‘isValid’
inherit haskell-cabal

DESCRIPTION="Support for well-typed paths"
HOMEPAGE="https://hackage.haskell.org/package/path"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

# test/Windows.hs:63:15: error:
#       Exception when trying to run compile-time code:
#         InvalidAbsDir "C:\\chris\\"
RESTRICT="test"

RDEPEND="dev-haskell/aeson:=[profile?]
	>=dev-haskell/exceptions-0.4:=[profile?]
	>=dev-haskell/hashable-1.2:=[profile?] <dev-haskell/hashable-1.3:=[profile?]
	>=dev-lang/ghc-7.8.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
"

src_prepare() {
	default

	cabal_chdeps \
		'exceptions >= 0.4     && < 0.9' 'exceptions >= 0.4' \
		'genvalidity >= 0.3 && < 0.4' 'genvalidity >= 0.3' \
		'genvalidity-property >= 0.0 && < 0.1' 'genvalidity-property >= 0.0' \
		'validity   >= 0.3.1.1 && < 0.4' 'validity   >= 0.3.1.1'
}

src_configure() {
	haskell-cabal_src_configure \
		--flag=-validity
}
