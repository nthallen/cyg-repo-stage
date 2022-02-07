cmake_minimum_required(VERSION 2.8.8...3.20.0)
project(cyg_repo_stage VERSION 1.0.0)

set(PVT_CYG_SERVER cygserver.local.net)
set(PVT_CYG_SERVER_TGT_DIR /var/www/htdocs/cygwin)
set(CYG_SRC_DIR /usr/src/repo-stage)
set(PVT_CYG_SERVER_URL https://cygserver.local.net/cygwin)
set(FULL_CYG_SERVER_URL http://mirror.cs.vt.edu/pub/cygwin/cygwin)

include(local_defs.cmake OPTIONAL)

configure_file(upload.sh.in upload.sh @ONLY)
configure_file(cyginst-monarch-devel.in cyginst-monarch-devel.ps1 @ONLY)
configure_file(cyginst-icosfit.in cyginst-icosfit.ps1 @ONLY)
configure_file(cyginst-hwv.in cyginst-hwv.ps1 @ONLY)

install(PROGRAMS
  ${CMAKE_CURRENT_BINARY_DIR}/upload.sh
  ${CMAKE_CURRENT_BINARY_DIR}/cyginst-monarch-devel.ps1
  ${CMAKE_CURRENT_BINARY_DIR}/cyginst-icosfit.ps1
  ${CMAKE_CURRENT_BINARY_DIR}/cyginst-hwv.ps1
  DESTINATION ${CYG_SRC_DIR} )
