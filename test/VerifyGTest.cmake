# /tests/VerifyGTest.cmake
# Tests that the test was correctly added and
# built as a result of building it
#
# See LICENCE.md for Copyright information

include (${POLYSQUARE_COMMON_UNIVERSAL_CMAKE_TESTS_DIRECTORY}/CMakeUnit.cmake)

set (TEST_BINARY ${CMAKE_CURRENT_BINARY_DIR}/unittest)
assert_command_executes_with_success (TEST_BINARY)