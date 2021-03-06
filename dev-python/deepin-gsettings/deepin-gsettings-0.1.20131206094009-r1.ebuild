# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=7

PYTHON_COMPAT=( python2_7 )
DISTUTILS_SINGLE_IMPL=true
inherit versionator distutils-r1

MY_VER="$(get_version_component_range 1-2)+git$(get_version_component_range 3)~a64de3ac19"
SRC_URI="http://packages.linuxdeepin.com/deepin/pool/main/d/${PN}/${PN}_${MY_VER}.tar.gz"

DESCRIPTION="Deepin gsettings Python Bindings"
HOMEPAGE="http://www.linuxdeepin.com"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-lang/python:2.7
		>=dev-libs/glib-2.30.0:2
		>=sys-libs/glibc-2.2.5"
DEPEND="${RDEPEND}
		dev-python/setuptools"
S=${WORKDIR}/${PN}-${MY_VER}

