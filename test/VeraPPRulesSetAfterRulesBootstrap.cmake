# /tests/CompilerFlagsSetAfterCompilerBootstrap.cmake
# Tests that we can add common-universal-cmake as a
# a subdirectory.
#
# See LICENCE.md for Copyright information

include (${POLYSQUARE_COMMON_UNIVERSAL_CMAKE_DIRECTORY}/PolysquareCommon.cmake)
include (${POLYSQUARE_COMMON_UNIVERSAL_CMAKE_TESTS_DIRECTORY}/CMakeUnit.cmake)

polysquare_rules_bootstrap (${POLYSQUARE_COMMON_UNIVERSAL_CMAKE_DIRECTORY}
                            ${CMAKE_CURRENT_BINARY_DIR}/polysquare)

assert_target_exists (polysquare_verapp_copy_rules)
assert_target_exists (polysquare_verapp_copy_profiles)
assert_target_exists (polysquare_verapp_import_rules)

message (${_POLYSQUARE_VERAPP_PROFILE})

assert_variable_is (${_POLYSQUARE_VERAPP_PROFILE} STRING EQUAL "polysquare")
assert_variable_is (${_POLYSQUARE_VERAPP_IMPORT_RULES}
                    STRING
                    EQUAL
                    "polysquare_verapp_import_rules")