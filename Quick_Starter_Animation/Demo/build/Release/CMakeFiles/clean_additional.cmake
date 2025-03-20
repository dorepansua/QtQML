# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Release")
  file(REMOVE_RECURSE
  "CMakeFiles\\appDemo_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appDemo_autogen.dir\\ParseCache.txt"
  "appDemo_autogen"
  )
endif()
