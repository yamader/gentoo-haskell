# Copyright 1999-2019 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="ShellCheck"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Shell script analysis tool"
HOMEPAGE="https://www.shellcheck.net/"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="amd64 x86"
IUSE=""

RDEPEND="dev-haskell/aeson:=[profile?]
	>=dev-haskell/diff-0.2.0:=[profile?]
	>=dev-haskell/mtl-2.2.1:=[profile?]
	>=dev-haskell/parsec-3.0:=[profile?]
	>=dev-haskell/quickcheck-2.7.4:2=[template-haskell,profile?]
	dev-haskell/regex-tdfa:=[profile?]
	>=dev-lang/ghc-8.0.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.24.0.0 <dev-haskell/cabal-2.5
"

S="${WORKDIR}/${MY_P}"

src_install() {
	cabal_src_install
	doman "${PN}.1"
}
