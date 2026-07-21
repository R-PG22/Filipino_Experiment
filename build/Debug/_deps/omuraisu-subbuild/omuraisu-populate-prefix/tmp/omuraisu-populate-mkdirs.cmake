# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/r-pg/Projects/Filipino_Experiment/build/Debug/_deps/omuraisu-src"
  "/home/r-pg/Projects/Filipino_Experiment/build/Debug/_deps/omuraisu-build"
  "/home/r-pg/Projects/Filipino_Experiment/build/Debug/_deps/omuraisu-subbuild/omuraisu-populate-prefix"
  "/home/r-pg/Projects/Filipino_Experiment/build/Debug/_deps/omuraisu-subbuild/omuraisu-populate-prefix/tmp"
  "/home/r-pg/Projects/Filipino_Experiment/build/Debug/_deps/omuraisu-subbuild/omuraisu-populate-prefix/src/omuraisu-populate-stamp"
  "/home/r-pg/Projects/Filipino_Experiment/build/Debug/_deps/omuraisu-subbuild/omuraisu-populate-prefix/src"
  "/home/r-pg/Projects/Filipino_Experiment/build/Debug/_deps/omuraisu-subbuild/omuraisu-populate-prefix/src/omuraisu-populate-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/r-pg/Projects/Filipino_Experiment/build/Debug/_deps/omuraisu-subbuild/omuraisu-populate-prefix/src/omuraisu-populate-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/r-pg/Projects/Filipino_Experiment/build/Debug/_deps/omuraisu-subbuild/omuraisu-populate-prefix/src/omuraisu-populate-stamp${cfgdir}") # cfgdir has leading slash
endif()
