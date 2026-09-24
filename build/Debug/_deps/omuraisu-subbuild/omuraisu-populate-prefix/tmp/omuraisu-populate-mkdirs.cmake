# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file LICENSE.rst or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/home/r-pg/Projects/Filipino_Experiment/build/Debug/_deps/omuraisu-src")
  file(MAKE_DIRECTORY "/home/r-pg/Projects/Filipino_Experiment/build/Debug/_deps/omuraisu-src")
endif()
file(MAKE_DIRECTORY
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
