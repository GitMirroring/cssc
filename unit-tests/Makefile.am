# We define the global AM_CPPFLAGS as everything we compile includes from these
# directories.
AM_CPPFLAGS = -pthread -I$(srcdir)/../src -I $(srcdir)/googletest/googletest/include  -I $(srcdir)/googletest/googletest
# Modifies compiler and linker flags for pthreads compatibility.
AM_LIBS =
if HAVE_PTHREADS
  AM_CXXFLAGS = @PTHREAD_CFLAGS@
  AM_LIBS += @PTHREAD_LIBS@
else
  AM_CXXFLAGS =
endif

AM_LDFLAGS = -L../gl/lib
LDADD = ../src/libcssc.a -lgnulib libgoogletest.a


EXTRA_DIST = TODO.txt

# Build rules for libraries.
TESTS_ENVIRONMENT = sh testwrapper.sh
TESTS = $(unit_tests)
check_SCRIPTS = testwrapper.sh
unit_tests = test_sid test_relvbr \
	test_release test_sid_list test_rel_list test_sccsdate \
	test_delta test_delta-table test_encoding \
	test_encoding2 test_linebuf test_split test_failure

check_PROGRAMS = $(unit_tests) test_bigfile

test_sid_SOURCES = test_sid.cc
test_relvbr_SOURCES = test_relvbr.cc
test_release_SOURCES = test_release.cc
test_sid_list_SOURCES = test_sid_list.cc
test_rel_list_SOURCES = test_rel_list.cc
test_sccsdate_SOURCES = test_sccsdate.cc
test_delta_SOURCES = test_delta.cc
test_delta_table_SOURCES = test_delta-table.cc
test_encoding_SOURCES = test_encoding.cc
test_encoding2_SOURCES = test_encoding2.cc
test_linebuf_SOURCES = test_linebuf.cc
test_split_SOURCES = test_split.cc
test_failure_SOURCES = test_failure.cc
test_bigfile_SOURCES = test_bigfile.cc



# The death tests may leave a core file behind.  Some systems also use
# core.NNNN as the name of a core file (NNNN is usually the PID).
# Files with names like vgcore.* are produced by valgrind.
COREFILES = core core.* vgcore.*

DISTCLEANFILES = $(COREFILES)

##############################################################################
## googletest build
##############################################################################

noinst_LIBRARIES = libgoogletest.a

libgoogletest_a_SOURCES = \
	googletest/googletest/src/gtest.cc \
	googletest/googletest/src/gtest-death-test.cc \
	googletest/googletest/src/gtest-filepath.cc \
	googletest/googletest/src/gtest-port.cc \
	googletest/googletest/src/gtest-printers.cc \
	googletest/googletest/src/gtest-test-part.cc \
	googletest/googletest/src/gtest-typed-test.cc \
        googletest/googletest/src/gtest_main.cc

# We ship all the googletest source in the distribution tarball.
EXTRA_DIST += \
	googletest/.clang-format \
	googletest/.gitignore \
	googletest/.travis.yml \
	googletest/BUILD.bazel \
	googletest/CMakeLists.txt \
	googletest/CONTRIBUTING.md \
	googletest/LICENSE \
	googletest/Makefile.am \
	googletest/README.md \
	googletest/WORKSPACE \
	googletest/appveyor.yml \
	googletest/ci/build-linux-autotools.sh \
	googletest/ci/build-linux-bazel.sh \
	googletest/ci/build-platformio.sh \
	googletest/ci/env-linux.sh \
	googletest/ci/env-osx.sh \
	googletest/ci/get-nprocessors.sh \
	googletest/ci/install-linux.sh \
	googletest/ci/install-osx.sh \
	googletest/ci/install-platformio.sh \
	googletest/ci/log-config.sh \
	googletest/ci/travis.sh \
	googletest/configure.ac \
	googletest/googlemock/CMakeLists.txt \
	googletest/googlemock/CONTRIBUTORS \
	googletest/googlemock/LICENSE \
	googletest/googlemock/Makefile.am \
	googletest/googlemock/README.md \
	googletest/googlemock/cmake/gmock.pc.in \
	googletest/googlemock/cmake/gmock_main.pc.in \
	googletest/googlemock/configure.ac \
	googletest/googlemock/docs/CheatSheet.md \
	googletest/googlemock/docs/CookBook.md \
	googletest/googlemock/docs/DesignDoc.md \
	googletest/googlemock/docs/Documentation.md \
	googletest/googlemock/docs/ForDummies.md \
	googletest/googlemock/docs/FrequentlyAskedQuestions.md \
	googletest/googlemock/docs/KnownIssues.md \
	googletest/googlemock/include/gmock/gmock-actions.h \
	googletest/googlemock/include/gmock/gmock-cardinalities.h \
	googletest/googlemock/include/gmock/gmock-function-mocker.h \
	googletest/googlemock/include/gmock/gmock-generated-actions.h \
	googletest/googlemock/include/gmock/gmock-generated-actions.h.pump \
	googletest/googlemock/include/gmock/gmock-generated-function-mockers.h \
	googletest/googlemock/include/gmock/gmock-generated-function-mockers.h.pump \
	googletest/googlemock/include/gmock/gmock-generated-matchers.h \
	googletest/googlemock/include/gmock/gmock-generated-matchers.h.pump \
	googletest/googlemock/include/gmock/gmock-matchers.h \
	googletest/googlemock/include/gmock/gmock-more-actions.h \
	googletest/googlemock/include/gmock/gmock-more-matchers.h \
	googletest/googlemock/include/gmock/gmock-nice-strict.h \
	googletest/googlemock/include/gmock/gmock-spec-builders.h \
	googletest/googlemock/include/gmock/gmock.h \
	googletest/googlemock/include/gmock/internal/custom/README.md \
	googletest/googlemock/include/gmock/internal/custom/gmock-generated-actions.h \
	googletest/googlemock/include/gmock/internal/custom/gmock-generated-actions.h.pump \
	googletest/googlemock/include/gmock/internal/custom/gmock-matchers.h \
	googletest/googlemock/include/gmock/internal/custom/gmock-port.h \
	googletest/googlemock/include/gmock/internal/gmock-internal-utils.h \
	googletest/googlemock/include/gmock/internal/gmock-port.h \
	googletest/googlemock/include/gmock/internal/gmock-pp.h \
	googletest/googlemock/make/Makefile \
	googletest/googlemock/scripts/fuse_gmock_files.py \
	googletest/googlemock/scripts/generator/LICENSE \
	googletest/googlemock/scripts/generator/README \
	googletest/googlemock/scripts/generator/README.cppclean \
	googletest/googlemock/scripts/generator/cpp/__init__.py \
	googletest/googlemock/scripts/generator/cpp/ast.py \
	googletest/googlemock/scripts/generator/cpp/gmock_class.py \
	googletest/googlemock/scripts/generator/cpp/gmock_class_test.py \
	googletest/googlemock/scripts/generator/cpp/keywords.py \
	googletest/googlemock/scripts/generator/cpp/tokenize.py \
	googletest/googlemock/scripts/generator/cpp/utils.py \
	googletest/googlemock/scripts/generator/gmock_gen.py \
	googletest/googlemock/scripts/gmock-config.in \
	googletest/googlemock/scripts/gmock_doctor.py \
	googletest/googlemock/scripts/upload.py \
	googletest/googlemock/scripts/upload_gmock.py \
	googletest/googlemock/src/gmock-all.cc \
	googletest/googlemock/src/gmock-cardinalities.cc \
	googletest/googlemock/src/gmock-internal-utils.cc \
	googletest/googlemock/src/gmock-matchers.cc \
	googletest/googlemock/src/gmock-spec-builders.cc \
	googletest/googlemock/src/gmock.cc \
	googletest/googlemock/src/gmock_main.cc \
	googletest/googlemock/test/BUILD.bazel \
	googletest/googlemock/test/gmock-actions_test.cc \
	googletest/googlemock/test/gmock-cardinalities_test.cc \
	googletest/googlemock/test/gmock-function-mocker_nc.cc \
	googletest/googlemock/test/gmock-function-mocker_nc_test.py \
	googletest/googlemock/test/gmock-function-mocker_test.cc \
	googletest/googlemock/test/gmock-generated-actions_test.cc \
	googletest/googlemock/test/gmock-generated-function-mockers_test.cc \
	googletest/googlemock/test/gmock-generated-matchers_test.cc \
	googletest/googlemock/test/gmock-internal-utils_test.cc \
	googletest/googlemock/test/gmock-matchers_test.cc \
	googletest/googlemock/test/gmock-more-actions_test.cc \
	googletest/googlemock/test/gmock-nice-strict_test.cc \
	googletest/googlemock/test/gmock-port_test.cc \
	googletest/googlemock/test/gmock-pp-string_test.cc \
	googletest/googlemock/test/gmock-pp_test.cc \
	googletest/googlemock/test/gmock-spec-builders_test.cc \
	googletest/googlemock/test/gmock_all_test.cc \
	googletest/googlemock/test/gmock_ex_test.cc \
	googletest/googlemock/test/gmock_leak_test.py \
	googletest/googlemock/test/gmock_leak_test_.cc \
	googletest/googlemock/test/gmock_link2_test.cc \
	googletest/googlemock/test/gmock_link_test.cc \
	googletest/googlemock/test/gmock_link_test.h \
	googletest/googlemock/test/gmock_output_test.py \
	googletest/googlemock/test/gmock_output_test_.cc \
	googletest/googlemock/test/gmock_output_test_golden.txt \
	googletest/googlemock/test/gmock_stress_test.cc \
	googletest/googlemock/test/gmock_test.cc \
	googletest/googlemock/test/gmock_test_utils.py \
	googletest/googletest/CMakeLists.txt \
	googletest/googletest/CONTRIBUTORS \
	googletest/googletest/LICENSE \
	googletest/googletest/Makefile.am \
	googletest/googletest/README.md \
	googletest/googletest/cmake/Config.cmake.in \
	googletest/googletest/cmake/gtest.pc.in \
	googletest/googletest/cmake/gtest_main.pc.in \
	googletest/googletest/cmake/internal_utils.cmake \
	googletest/googletest/cmake/libgtest.la.in \
	googletest/googletest/configure.ac \
	googletest/googletest/docs/Pkgconfig.md \
	googletest/googletest/docs/PumpManual.md \
	googletest/googletest/docs/advanced.md \
	googletest/googletest/docs/faq.md \
	googletest/googletest/docs/primer.md \
	googletest/googletest/docs/samples.md \
	googletest/googletest/include/gtest/gtest-death-test.h \
	googletest/googletest/include/gtest/gtest-matchers.h \
	googletest/googletest/include/gtest/gtest-message.h \
	googletest/googletest/include/gtest/gtest-param-test.h \
	googletest/googletest/include/gtest/gtest-printers.h \
	googletest/googletest/include/gtest/gtest-spi.h \
	googletest/googletest/include/gtest/gtest-test-part.h \
	googletest/googletest/include/gtest/gtest-typed-test.h \
	googletest/googletest/include/gtest/gtest.h \
	googletest/googletest/include/gtest/gtest_pred_impl.h \
	googletest/googletest/include/gtest/gtest_prod.h \
	googletest/googletest/include/gtest/internal/custom/README.md \
	googletest/googletest/include/gtest/internal/custom/gtest-port.h \
	googletest/googletest/include/gtest/internal/custom/gtest-printers.h \
	googletest/googletest/include/gtest/internal/custom/gtest.h \
	googletest/googletest/include/gtest/internal/gtest-death-test-internal.h \
	googletest/googletest/include/gtest/internal/gtest-filepath.h \
	googletest/googletest/include/gtest/internal/gtest-internal.h \
	googletest/googletest/include/gtest/internal/gtest-param-util.h \
	googletest/googletest/include/gtest/internal/gtest-port-arch.h \
	googletest/googletest/include/gtest/internal/gtest-port.h \
	googletest/googletest/include/gtest/internal/gtest-string.h \
	googletest/googletest/include/gtest/internal/gtest-type-util.h \
	googletest/googletest/include/gtest/internal/gtest-type-util.h.pump \
	googletest/googletest/m4/acx_pthread.m4 \
	googletest/googletest/m4/gtest.m4 \
	googletest/googletest/make/Makefile \
	googletest/googletest/samples/prime_tables.h \
	googletest/googletest/samples/sample1.cc \
	googletest/googletest/samples/sample1.h \
	googletest/googletest/samples/sample10_unittest.cc \
	googletest/googletest/samples/sample1_unittest.cc \
	googletest/googletest/samples/sample2.cc \
	googletest/googletest/samples/sample2.h \
	googletest/googletest/samples/sample2_unittest.cc \
	googletest/googletest/samples/sample3-inl.h \
	googletest/googletest/samples/sample3_unittest.cc \
	googletest/googletest/samples/sample4.cc \
	googletest/googletest/samples/sample4.h \
	googletest/googletest/samples/sample4_unittest.cc \
	googletest/googletest/samples/sample5_unittest.cc \
	googletest/googletest/samples/sample6_unittest.cc \
	googletest/googletest/samples/sample7_unittest.cc \
	googletest/googletest/samples/sample8_unittest.cc \
	googletest/googletest/samples/sample9_unittest.cc \
	googletest/googletest/scripts/common.py \
	googletest/googletest/scripts/fuse_gtest_files.py \
	googletest/googletest/scripts/gen_gtest_pred_impl.py \
	googletest/googletest/scripts/gtest-config.in \
	googletest/googletest/scripts/pump.py \
	googletest/googletest/scripts/release_docs.py \
	googletest/googletest/scripts/test/Makefile \
	googletest/googletest/scripts/upload.py \
	googletest/googletest/scripts/upload_gtest.py \
	googletest/googletest/src/gtest-all.cc \
	googletest/googletest/src/gtest-death-test.cc \
	googletest/googletest/src/gtest-filepath.cc \
	googletest/googletest/src/gtest-internal-inl.h \
	googletest/googletest/src/gtest-matchers.cc \
	googletest/googletest/src/gtest-port.cc \
	googletest/googletest/src/gtest-printers.cc \
	googletest/googletest/src/gtest-test-part.cc \
	googletest/googletest/src/gtest-typed-test.cc \
	googletest/googletest/src/gtest.cc \
	googletest/googletest/src/gtest_main.cc \
	googletest/googletest/test/BUILD.bazel \
	googletest/googletest/test/googletest-break-on-failure-unittest.py \
	googletest/googletest/test/googletest-break-on-failure-unittest_.cc \
	googletest/googletest/test/googletest-catch-exceptions-test.py \
	googletest/googletest/test/googletest-catch-exceptions-test_.cc \
	googletest/googletest/test/googletest-color-test.py \
	googletest/googletest/test/googletest-color-test_.cc \
	googletest/googletest/test/googletest-death-test-test.cc \
	googletest/googletest/test/googletest-death-test_ex_test.cc \
	googletest/googletest/test/googletest-env-var-test.py \
	googletest/googletest/test/googletest-env-var-test_.cc \
	googletest/googletest/test/googletest-filepath-test.cc \
	googletest/googletest/test/googletest-filter-unittest.py \
	googletest/googletest/test/googletest-filter-unittest_.cc \
	googletest/googletest/test/googletest-json-outfiles-test.py \
	googletest/googletest/test/googletest-json-output-unittest.py \
	googletest/googletest/test/googletest-list-tests-unittest.py \
	googletest/googletest/test/googletest-list-tests-unittest_.cc \
	googletest/googletest/test/googletest-listener-test.cc \
	googletest/googletest/test/googletest-message-test.cc \
	googletest/googletest/test/googletest-options-test.cc \
	googletest/googletest/test/googletest-output-test-golden-lin.txt \
	googletest/googletest/test/googletest-output-test.py \
	googletest/googletest/test/googletest-output-test_.cc \
	googletest/googletest/test/googletest-param-test-invalid-name1-test.py \
	googletest/googletest/test/googletest-param-test-invalid-name1-test_.cc \
	googletest/googletest/test/googletest-param-test-invalid-name2-test.py \
	googletest/googletest/test/googletest-param-test-invalid-name2-test_.cc \
	googletest/googletest/test/googletest-param-test-test.cc \
	googletest/googletest/test/googletest-param-test-test.h \
	googletest/googletest/test/googletest-param-test2-test.cc \
	googletest/googletest/test/googletest-port-test.cc \
	googletest/googletest/test/googletest-printers-test.cc \
	googletest/googletest/test/googletest-shuffle-test.py \
	googletest/googletest/test/googletest-shuffle-test_.cc \
	googletest/googletest/test/googletest-test-part-test.cc \
	googletest/googletest/test/googletest-test2_test.cc \
	googletest/googletest/test/googletest-throw-on-failure-test.py \
	googletest/googletest/test/googletest-throw-on-failure-test_.cc \
	googletest/googletest/test/googletest-uninitialized-test.py \
	googletest/googletest/test/googletest-uninitialized-test_.cc \
	googletest/googletest/test/gtest-typed-test2_test.cc \
	googletest/googletest/test/gtest-typed-test_test.cc \
	googletest/googletest/test/gtest-typed-test_test.h \
	googletest/googletest/test/gtest-unittest-api_test.cc \
	googletest/googletest/test/gtest_all_test.cc \
	googletest/googletest/test/gtest_assert_by_exception_test.cc \
	googletest/googletest/test/gtest_environment_test.cc \
	googletest/googletest/test/gtest_help_test.py \
	googletest/googletest/test/gtest_help_test_.cc \
	googletest/googletest/test/gtest_json_test_utils.py \
	googletest/googletest/test/gtest_list_output_unittest.py \
	googletest/googletest/test/gtest_list_output_unittest_.cc \
	googletest/googletest/test/gtest_main_unittest.cc \
	googletest/googletest/test/gtest_no_test_unittest.cc \
	googletest/googletest/test/gtest_pred_impl_unittest.cc \
	googletest/googletest/test/gtest_premature_exit_test.cc \
	googletest/googletest/test/gtest_prod_test.cc \
	googletest/googletest/test/gtest_repeat_test.cc \
	googletest/googletest/test/gtest_skip_environment_check_output_test.py \
	googletest/googletest/test/gtest_skip_in_environment_setup_test.cc \
	googletest/googletest/test/gtest_skip_test.cc \
	googletest/googletest/test/gtest_sole_header_test.cc \
	googletest/googletest/test/gtest_stress_test.cc \
	googletest/googletest/test/gtest_test_macro_stack_footprint_test.cc \
	googletest/googletest/test/gtest_test_utils.py \
	googletest/googletest/test/gtest_testbridge_test.py \
	googletest/googletest/test/gtest_testbridge_test_.cc \
	googletest/googletest/test/gtest_throw_on_failure_ex_test.cc \
	googletest/googletest/test/gtest_unittest.cc \
	googletest/googletest/test/gtest_xml_outfile1_test_.cc \
	googletest/googletest/test/gtest_xml_outfile2_test_.cc \
	googletest/googletest/test/gtest_xml_outfiles_test.py \
	googletest/googletest/test/gtest_xml_output_unittest.py \
	googletest/googletest/test/gtest_xml_output_unittest_.cc \
	googletest/googletest/test/gtest_xml_test_utils.py \
	googletest/googletest/test/production.cc \
	googletest/googletest/test/production.h \
	googletest/library.json \
	googletest/platformio.ini
