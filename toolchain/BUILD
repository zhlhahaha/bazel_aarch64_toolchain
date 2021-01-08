package(default_visibility = ["//visibility:public"])
load(":cc_toolchain_config.bzl", "cc_toolchain_config")

cc_toolchain_config(name = "aarch64_toolchain_config")

cc_toolchain_suite(
    name = "clang_suite",
    toolchains = {
        "aarch64": ":aarch64_toolchain",
    },
)

filegroup(
    name = "empty",
    srcs = [],
)

filegroup(
    name = "all",
    srcs = glob([
        "aarch64-none-linux-gnu/**",
        "libexec/**",
        "lib/gcc/aarch64-none-linux-gnu/**",
	"include/**",
	"bin/*",
    ]),
)

cc_toolchain(
    name = "aarch64_toolchain",
    toolchain_identifier = "aarch64-toolchain",
    toolchain_config = ":aarch64_toolchain_config",
    all_files = ":all",
    compiler_files = ":all",
    dwp_files = ":empty",
    linker_files = ":all",
    objcopy_files = ":all",
    strip_files = ":all",
    supports_param_files = 0,
)

