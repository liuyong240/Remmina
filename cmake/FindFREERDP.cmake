# Remmina - The GTK+ Remote Desktop Client
#
# Copyright (C) 2011 Marc-Andre Moreau
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, 
# Boston, MA 02111-1307, USA.

pkg_check_modules(PC_FREERDP freerdp)

find_path(FREERDP_INCLUDE_DIR NAMES freerdp/freerdp.h
	HINTS ${PC_FREERDP_INCLUDEDIR} ${PC_FREERDP_INCLUDE_DIRS})

find_library(FREERDP_LIBRARY NAMES freerdp-core
	HINTS ${PC_FREERDP_INCLUDEDIR} ${PC_FREERDP_INCLUDE_DIRS})

include(FindPackageHandleStandardArgs)

find_package_handle_standard_args(FREERDP DEFAULT_MSG FREERDP_LIBRARY FREERDP_INCLUDE_DIR)

if(FREERDP_FOUND)
	set(FREERDP_LIBRARIES ${FREERDP_LIBRARY})
	set(FREERDP_INCLUDE_DIRS ${FREERDP_INCLUDE_DIR})
endif()

mark_as_advanced(FREERDP_INCLUDE_DIR FREERDP_LIBRARY)

