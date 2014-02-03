# /tests/VeraPPWithPolysquareProfileRunOnTargetWithRulesVerify.cmake
# Checks the build output to make sure that vera++ was run on our target
#
# See LICENCE.md for Copyright information

include (${POLYSQUARE_COMMON_UNIVERSAL_CMAKE_TESTS_DIRECTORY}/CMakeUnit.cmake)

set (BUILD_OUTPUT ${CMAKE_CURRENT_BINARY_DIR}/BUILD.output)

assert_file_contains (${BUILD_OUTPUT} "vera++")
assert_file_contains (${BUILD_OUTPUT} "Header.h --profile polysquare")
assert_file_contains (${BUILD_OUTPUT} "--error")

# It doesn't make sense to run cppcheck just on headers
assert_file_does_not_contain (${BUILD_OUTPUT} "cppcheck")