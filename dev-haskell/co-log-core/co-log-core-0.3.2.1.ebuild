# Copyright 1999-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.5.1.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Composable Contravariant Comonadic Logging Library"
HOMEPAGE="https://github.com/co-log/co-log-core"

LICENSE="MPL-2.0"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-lang/ghc-9.0.2:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.4.1.0
	test? ( >=dev-haskell/doctest-0.16.0 <dev-haskell/doctest-0.23
		>=dev-haskell/glob-0.10.0 <dev-haskell/glob-0.11 )
"