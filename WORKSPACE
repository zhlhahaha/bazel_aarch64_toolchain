workspace(name = "bazel_cc_toolchains")
load(
    "@bazel_tools//tools/build_defs/repo:http.bzl",
    "http_archive",
    "http_file",
)
http_archive(
    name = "coral_crosstool",
    #sha256 = "48597e8d839e15b8c6a9f501476e62468cdc24c2156b049b0bce91e49edefc17",
    strip_prefix = "crosstool-fedora_test",
    urls = [
        "https://github.com/zhlhahaha/crosstool/archive/fedora_test.tar.gz",
    ],
)

load("@coral_crosstool//:configure.bzl", "cc_crosstool")
cc_crosstool(name = "crosstool")
register_toolchains("@crosstool//:cc-toolchain-multiarch")

http_archive(
    name = "io_bazel_rules_go",
    sha256 = "7904dbecbaffd068651916dce77ff3437679f9d20e1a7956bff43826e7645fcc",
    urls = [
	"https://github.com/bazelbuild/rules_go/releases/download/v0.25.1/rules_go-v0.25.1.tar.gz",
    ],
)

load("@io_bazel_rules_go//go:deps.bzl", "go_register_toolchains", "go_rules_dependencies")
go_rules_dependencies()
go_register_toolchains(version = "1.15.6")
