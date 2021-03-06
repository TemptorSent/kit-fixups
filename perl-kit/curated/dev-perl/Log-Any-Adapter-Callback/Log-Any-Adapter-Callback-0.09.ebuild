# Distributed under the terms of the GNU General Public License v2

EAPI=5

MODULE_AUTHOR="SHARYANTO"
MODULE_VERSION="0.09"


inherit perl-module

DESCRIPTION="Send Log::Any logs to a subroutine"

LICENSE="|| ( Artistic GPL-1 GPL-2 GPL-3 )"
SLOT="0"
KEYWORDS="alpha amd64 amd64-fbsd arm arm64 hppa ia64 m68k mips ppc ppc64 s390 sh sparc x86 x86-fbsd   ppc-aix amd64-linux arm-linux arm64-linux ppc64-linux x86-linux ppc-macos x86-macos x64-macos m68k-mint sparc-solaris sparc64-solaris x64-solaris x86-solaris x86-winnt x64-cygwin x86-cygwin"
IUSE=""

DEPEND=">=dev-perl/Log-Any-1.38
	dev-lang/perl"
