# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=5

DESCRIPTION="Manage /usr/bin/mpg123 symlink"
HOMEPAGE="https://www.gentoo.org/proj/en/eselect/"
SRC_URI=""

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~alpha amd64 arm arm64 ~hppa ~ia64 ~mips ppc ppc64 sparc x86 ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos"
IUSE=""

RDEPEND=">=app-eselect/eselect-lib-bin-symlink-0.1.1
	!<media-sound/mpg123-1.14.4-r1"
DEPEND=${RDEPEND}

S=${FILESDIR}

src_install() {
	insinto /usr/share/eselect/modules
	newins mpg123.eselect-${PV} mpg123.eselect
}
