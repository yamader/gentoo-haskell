# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.7.3.0

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Mark tasty tests as failure expected"
HOMEPAGE="https://github.com/nomeata/tasty-expected-failure"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/tagged-0.7:=[profile?] <dev-haskell/tagged-0.9:=[profile?]
	>=dev-haskell/tasty-0.11:=[profile?]
	<dev-haskell/unbounded-delays-0.2:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( dev-haskell/hedgehog
		dev-haskell/tasty-golden
		dev-haskell/tasty-hedgehog
		dev-haskell/tasty-hunit )
"