################################################################################
# Define function to print the configure footer
################################################################################
AC_DEFUN([gt_CONFIG_FILES],
[
# List all non-script files processed by Autoconf.
AC_CONFIG_FILES([Makefile \
                 giella-tgl.pc \
                 src/Makefile \
                 src/filters/Makefile \
                 src/hyphenation/Makefile \
                 src/morphology/Makefile \
                 src/orthography/Makefile \
                 src/orthography/downcase-derived_proper-strings.xfscript \
                 src/phonetics/Makefile \
                 src/phonology/Makefile \
                 src/syntax/Makefile \
                 src/tagsets/Makefile \
                 src/transcriptions/Makefile \
                 doc/Makefile \
                 test/Makefile \
                 test/tools/Makefile \
                 test/tools/mt/Makefile \
                 test/tools/mt/apertium/Makefile \
                 test/tools/spellcheckers/Makefile \
                 test/tools/spellcheckers/fstbased/Makefile \
                 test/tools/spellcheckers/fstbased/desktop/Makefile \
                 test/tools/spellcheckers/fstbased/desktop/hfst/Makefile \
                 test/tools/spellcheckers/fstbased/mobile/Makefile \
                 test/src/Makefile \
                 test/src/morphology/Makefile \
                 test/src/orthography/Makefile \
                 test/src/phonology/Makefile \
                 test/src/syntax/Makefile \
                 tools/Makefile \
                 tools/grammarcheckers/Makefile \
                 tools/grammarcheckers/filters/Makefile \
                 tools/hyphenators/Makefile \
                 tools/hyphenators/fstbased/Makefile \
                 tools/hyphenators/patternbased/Makefile \
                 tools/mt/Makefile \
                 tools/mt/apertium/Makefile \
                 tools/mt/apertium/filters/Makefile \
                 tools/mt/apertium/tagsets/Makefile \
                 tools/tokenisers/Makefile \
                 tools/tokenisers/filters/Makefile \
                 tools/shellscripts/Makefile \
                 tools/spellcheckers/Makefile \
                 tools/spellcheckers/filters/Makefile \
                 tools/spellcheckers/fstbased/Makefile \
                 tools/spellcheckers/fstbased/filters/Makefile \
                 tools/spellcheckers/fstbased/desktop/Makefile \
                 tools/spellcheckers/fstbased/desktop/filters/Makefile \
                 tools/spellcheckers/fstbased/desktop/weighting/Makefile \
                 tools/spellcheckers/fstbased/desktop/foma/Makefile \
                 tools/spellcheckers/fstbased/desktop/hfst/Makefile \
                 tools/spellcheckers/fstbased/mobile/Makefile \
                 tools/spellcheckers/fstbased/mobile/weighting/Makefile \
                 tools/spellcheckers/fstbased/mobile/hfst/Makefile \
                 tools/spellcheckers/fstbased/mobile/vfst/Makefile \
                 tools/spellcheckers/listbased/Makefile \
                 tools/spellcheckers/listbased/filters/Makefile])
# Add one AC_CONFIG_FILES for each script file that needs processing. This gives
# the most pleasant user experience and most readable autoconf code to maintain.
# Spell checker tests, all languages:
AC_CONFIG_FILES([test/tools/spellcheckers/test-zhfst-file.sh], \
      [chmod a+x test/tools/spellcheckers/test-zhfst-file.sh])
AC_CONFIG_FILES([test/tools/spellcheckers/run-spellers-gt-norm-yaml-testcases.sh], \
      [chmod a+x test/tools/spellcheckers/run-spellers-gt-norm-yaml-testcases.sh])
AC_CONFIG_FILES([test/tools/spellcheckers/fstbased/desktop/hfst/test-zhfst-basic-sugg-speed.sh], \
      [chmod a+x test/tools/spellcheckers/fstbased/desktop/hfst/test-zhfst-basic-sugg-speed.sh])
AC_CONFIG_FILES([test/tools/spellcheckers/fstbased/desktop/hfst/run-acceptor-yaml-testcases.sh], \
      [chmod a+x test/tools/spellcheckers/fstbased/desktop/hfst/run-acceptor-yaml-testcases.sh])
AC_CONFIG_FILES([test/src/run-gt-desc-genyaml-testcases.sh], \
      [chmod a+x test/src/run-gt-desc-genyaml-testcases.sh])
AC_CONFIG_FILES([test/src/run-gt-desc-anayaml-testcases.sh], \
      [chmod a+x test/src/run-gt-desc-anayaml-testcases.sh])
AC_CONFIG_FILES([test/run-morph-tester.sh], \
      [chmod a+x test/run-morph-tester.sh])
# Phonology tests, all languages:
AC_CONFIG_FILES([test/src/phonology/pair-test-positive.sh], \
      [chmod a+x test/src/phonology/pair-test-positive.sh])
AC_CONFIG_FILES([test/src/phonology/pair-test-negative.sh], \
      [chmod a+x test/src/phonology/pair-test-negative.sh])
AC_CONFIG_FILES([test/src/phonology/pair-test-hfst.sh], \
      [chmod a+x test/src/phonology/pair-test-hfst.sh])
# Lemma generation tests, all languages:
AC_CONFIG_FILES([test/src/morphology/generate-adjective-lemmas.sh], \
      [chmod a+x test/src/morphology/generate-adjective-lemmas.sh])
AC_CONFIG_FILES([test/src/morphology/generate-noun-lemmas.sh], \
      [chmod a+x test/src/morphology/generate-noun-lemmas.sh])
AC_CONFIG_FILES([test/src/morphology/generate-propernoun-lemmas.sh], \
      [chmod a+x test/src/morphology/generate-propernoun-lemmas.sh])
AC_CONFIG_FILES([test/src/morphology/generate-verb-lemmas.sh], \
      [chmod a+x test/src/morphology/generate-verb-lemmas.sh])
# Lemma acceptance test for spellers, all languages:
AC_CONFIG_FILES([test/tools/spellcheckers/fstbased/desktop/hfst/accept-all-lemmas.sh], \
      [chmod a+x test/tools/spellcheckers/fstbased/desktop/hfst/accept-all-lemmas.sh])
# Shorthand shell scripts instead of the old-type aliases - all languages:
AC_CONFIG_FILES([tools/shellscripts/utgl-gt.sh], \
      [chmod a+x tools/shellscripts/utgl-gt.sh])
# Devtools shell scripts should also be handled by autotools:
AC_CONFIG_FILES([devtools/check_analysis_regressions.sh], \
      [chmod a+x devtools/check_analysis_regressions.sh])
AC_CONFIG_FILES([devtools/test_ospell-office_suggestions.sh], \
      [chmod a+x devtools/test_ospell-office_suggestions.sh])
AC_CONFIG_FILES([devtools/test_voikkospell_suggestions.sh], \
      [chmod a+x devtools/test_voikkospell_suggestions.sh])

]) # gt_CONFIG_FILES