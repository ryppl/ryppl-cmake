################################################################################
# Copyright (C) 2012 Dave Abrahams <dave@boostpro.com>                         #
#                                                                              #
# Distributed under the Boost Software License, Version 1.0.                   #
# See accompanying file LICENSE_1_0.txt or copy at                             #
#   http://www.boost.org/LICENSE_1_0.txt                                       #
################################################################################
if(__RYPPL_FIND_PACKAGE_INCLUDED)
  return()
endif()
set(__RYPPL_FIND_PACKAGE_INCLUDED TRUE)

function(ryppl_do_find_package)
  set_property(DIRECTORY APPEND PROPERTY RYPPL_FIND_PACKAGE_ARGS "${ARGV}")
endfunction(ryppl_do_find_package)

macro(ryppl_find_package)
  find_package(${ARGV})
  ryppl_do_find_package(${ARGV})
endmacro(ryppl_find_package)

