cmake_minimum_required(VERSION 2.8.8...3.20.0)
project(cyg_repo_stage VERSION 1.0.0)

set(PVT_CYG_SERVER cygserver.local.net)
set(PVT_CYG_SERVER_TGT_DIR /var/www/htdocs/cygwin)
set(CYG_SRC_DIR /usr/src/repo-stage)
include(local_defs.cmake OPTIONAL)

configure_file(upload.sh.in upload.sh @ONLY)

install(PROGRAMS
  ${CMAKE_CURRENT_BINARY_DIR}/upload.sh
  DESTINATION ${CYG_SRC_DIR} )
