# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.0.0.9999

CABAL_HACKAGE_REVISION=3

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Interoperability between hspec and hedgehog"
HOMEPAGE="https://github.com/haskell-works/hw-hspec-hedgehog#readme"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND="
	>=dev-haskell/call-stack-0.2:=[profile?] <dev-haskell/call-stack-0.5:=[profile?]
	>=dev-haskell/hedgehog-0.5:=[profile?] <dev-haskell/hedgehog-1.3:=[profile?]
	>=dev-haskell/hspec-2.6:=[profile?] <dev-haskell/hspec-3:=[profile?]
	>=dev-haskell/hunit-1.5:=[profile?] <dev-haskell/hunit-1.7:=[profile?]
	>=dev-lang/ghc-8.6.5:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.4.0.1
	test? (
		>=dev-haskell/doctest-0.16.2 <dev-haskell/doctest-0.21
		>=dev-haskell/doctest-discover-0.2 <dev-haskell/doctest-discover-0.3
	)
"
