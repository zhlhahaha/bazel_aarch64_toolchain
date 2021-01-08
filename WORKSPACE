workspace(name = "bazel_cc_toolchains")
load(
    "@bazel_tools//tools/build_defs/repo:http.bzl",
    "http_archive",
    "http_file",
)
http_archive(
    name = "coral_crosstool",
    sha256 = "c8cc8d1e2f5cfdd9553384659afde000ba8167fbe78809b447748b5602119912",
    strip_prefix = "crosstool-fedora_test",
    urls = [
        "https://github.com/zhlhahaha/crosstool/archive/fedora_test.tar.gz",
    ],
)

load("@coral_crosstool//:configure.bzl", "cc_crosstool")
cc_crosstool(name = "crosstool")
