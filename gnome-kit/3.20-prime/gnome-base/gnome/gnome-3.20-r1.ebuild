# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI="5"

DESCRIPTION="Meta package for GNOME 3, merge this package to install"
HOMEPAGE="https://www.gnome.org/"

LICENSE="metapackage"
SLOT="2.0" # Cannot be installed at the same time as gnome-2

# when unmasking for an arch
# double check none of the deps are still masked !
KEYWORDS="amd64 ~arm ~ia64 ~ppc ~ppc64 x86"

IUSE="accessibility +bluetooth +classic +cdr cups +extras"

S=${WORKDIR}

# TODO: check accessibility completeness
# GDM-3.0 integrates very nicely with GNOME Shell
# add ntfs and vfat support that is needed for USB mount. # FL-3731
RDEPEND="
	gnome-base/gnome-core-libs[cups?]
	gnome-base/gnome-core-apps[cups?,bluetooth?,cdr?]
	gnome-base/gdm
	x11-wm/mutter
	gnome-base/gnome-shell[bluetooth?]
	x11-themes/gnome-backgrounds
	x11-themes/sound-theme-freedesktop

	accessibility? (
		>=app-accessibility/at-spi2-atk-2.18
		>=app-accessibility/at-spi2-core-2.18
		>=app-accessibility/caribou-0.4.19
		app-accessibility/orca
		>=gnome-extra/mousetweaks-3.12.0 )
	classic? ( gnome-extra/gnome-shell-extensions )
	extras? ( gnome-base/gnome-extra-apps )
	sys-fs/dosfstools
	sys-fs/ntfs3g[ntfsprogs]
"

DEPEND=""

PDEPEND=">=gnome-base/gvfs-1.26[udisks]"

pkg_postinst() {
	# Remember people where to find our project information
	elog "Please remember to look at https://wiki.gentoo.org/wiki/Project:GNOME"
	elog "for information about the project and documentation."
}