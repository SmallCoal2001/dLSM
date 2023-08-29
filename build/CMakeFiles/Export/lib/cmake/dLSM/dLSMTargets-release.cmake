#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "dLSM::dLSM" for configuration "Release"
set_property(TARGET dLSM::dLSM APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(dLSM::dLSM PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libdLSM.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS dLSM::dLSM )
list(APPEND _IMPORT_CHECK_FILES_FOR_dLSM::dLSM "${_IMPORT_PREFIX}/lib/libdLSM.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
