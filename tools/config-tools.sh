#! /bin/bash
function nl_error {
  config-tools: $* >&2
  exit 1
}

[ -d tools -a -f tools/CMakeLists.txt ] ||
  nl_error "Cannot locate tools directory"
rm -rf build
mkdir build
cd build
cmake ../tools && make && make install &&
  cd .. && rm -rf build
