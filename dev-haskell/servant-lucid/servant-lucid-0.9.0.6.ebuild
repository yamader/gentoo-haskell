# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Servant support for lucid"
HOMEPAGE="https://haskell-servant.readthedocs.org/"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/http-media-0.6.4:=[profile?] <dev-haskell/http-media-0.9:=[profile?]
	>=dev-haskell/lucid-2.9.8:=[profile?] <dev-haskell/lucid-2.12:=[profile?]
	>=dev-haskell/servant-0.17:=[profile?] <dev-haskell/servant-0.21:=[profile?]
	>=dev-lang/ghc-8.8.1:=
	>=dev-haskell/text-1.2.3.0:=[profile?] <dev-haskell/text-2.1:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.0.0.0
	test? ( >=dev-haskell/servant-server-0.14 <dev-haskell/servant-server-0.21
		>=dev-haskell/wai-3.0.3.0 <dev-haskell/wai-3.3
		>=dev-haskell/warp-3.0.13.1 <dev-haskell/warp-3.4 )
"

CABAL_CHDEPS=(
	'servant    >=0.17    && <0.20' 'servant    >=0.17'
	'servant-server >=0.14     && <0.20' 'servant-server >=0.14'
)
