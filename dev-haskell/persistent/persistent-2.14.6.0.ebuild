# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

# ebuild generated by hackport 0.8.4.0.9999
#hackport: flags: -nooverlap

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Type-safe, multi-backend data serialization"
HOMEPAGE="https://www.yesodweb.com/book/persistent"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64"

RDEPEND=">=dev-haskell/aeson-1.0:=[profile?] <dev-haskell/aeson-2.3:=[profile?]
	dev-haskell/attoparsec:=[profile?]
	>=dev-haskell/attoparsec-aeson-2.1.0.0:=[profile?] <dev-haskell/attoparsec-aeson-2.3:=[profile?]
	dev-haskell/base64-bytestring:=[profile?]
	>=dev-haskell/blaze-html-0.9:=[profile?]
	>=dev-haskell/conduit-1.3:=[profile?]
	>=dev-haskell/fast-logger-2.4:=[profile?]
	>=dev-haskell/http-api-data-0.3:=[profile?]
	>=dev-haskell/lift-type-0.1.0.0:=[profile?] <dev-haskell/lift-type-0.2.0.0:=[profile?]
	>=dev-haskell/monad-logger-0.3.28:=[profile?]
	>=dev-haskell/path-pieces-0.2:=[profile?]
	>=dev-haskell/resource-pool-0.2.3:=[profile?]
	>=dev-haskell/resourcet-1.1.10:=[profile?]
	dev-haskell/scientific:=[profile?]
	dev-haskell/silently:=[profile?]
	>=dev-haskell/text-1.2:=[profile?]
	>=dev-haskell/th-lift-instances-0.1.14:=[profile?] <dev-haskell/th-lift-instances-0.2:=[profile?]
	dev-haskell/unliftio:=[profile?]
	dev-haskell/unliftio-core:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	dev-haskell/vault:=[profile?]
	dev-haskell/vector:=[profile?]
	>=dev-lang/ghc-8.10.6:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-3.2.1.0
	test? ( >=dev-haskell/hspec-2.4
		dev-haskell/quickcheck
		>=dev-haskell/quickcheck-instances-0.3
		dev-haskell/shakespeare )
"

src_configure() {
	haskell-cabal_src_configure \
		--flag=-nooverlap
}
