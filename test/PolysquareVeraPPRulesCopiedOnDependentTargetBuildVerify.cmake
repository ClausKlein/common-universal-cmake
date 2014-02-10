# /tests/PolysquareVeraPPRulesCopiedOnDependentTargetBuildVerify.cmake
# Asserts that the following files exist:
#
#  - vera++/scripts/rules/PSQ011.tcl
#  - vera++/scripts/rules/PSQ016.tcl
#  - vera++/scripts/rules/F001.tcl
#  - vera++/profiles/polysquare
#
# See LICENCE.md for Copyright information

include (${POLYSQUARE_COMMON_UNIVERSAL_CMAKE_TESTS_DIRECTORY}/CMakeUnit.cmake)

set (VERAPP_RULES_DIR
     ${CMAKE_CURRENT_BINARY_DIR}/scripts/vera++/scripts/rules)
set (VERAPP_PROFILES_DIR
     ${CMAKE_CURRENT_BINARY_DIR}/scripts/vera++/profiles)

assert_file_exists (${VERAPP_RULES_DIR}/PSQ001.tcl)
assert_file_exists (${VERAPP_RULES_DIR}/PSQ002.tcl)
assert_file_exists (${VERAPP_RULES_DIR}/PSQ004.tcl)
assert_file_exists (${VERAPP_RULES_DIR}/PSQ011.tcl)
assert_file_exists (${VERAPP_RULES_DIR}/PSQ016.tcl)
assert_file_exists (${VERAPP_RULES_DIR}/F001.tcl)
assert_file_exists (${VERAPP_PROFILES_DIR}/polysquare)
