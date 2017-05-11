# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI="6"

inherit autotools git-r3

DESCRIPTION="Tools for OpenStreetMap."
HOMEPAGE="https://github.com/ramunasd/osmctools"
EGIT_REPO_URI="https://github.com/ramunasd/osmctools.git"

LICENSE="AGPL-3"
SLOT="0/9999"
KEYWORDS=""

IUSE=""

RDEPEND="sys-libs/zlib"
DEPEND="${RDEPEND}"

src_prepare() {
    default
    eautoreconf || die "autoreconf failed"
}
