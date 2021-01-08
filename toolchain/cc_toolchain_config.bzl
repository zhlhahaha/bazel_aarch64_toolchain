load("@bazel_tools//tools/cpp:cc_toolchain_config_lib.bzl", "tool_path")

def _impl(ctx):
    tool_paths = [ # NEW
        tool_path(
            name = "gcc",
            path = "bin/aarch64-none-linux-gnu-gcc",
        ),
        tool_path(
            name = "ld",
            path = "bin/aarch64-none-linux-gnu-ld",
        ),
        tool_path(
            name = "ar",
            path = "bin/aarch64-none-linux-gnu-ar",
        ),
        tool_path(
            name = "cpp",
            path = "bin/aarch64-none-linux-gnu-cpp",
        ),
        tool_path(
            name = "gcov",
            path = "bin/aarch64-none-linux-gnu-gcov",
        ),
        tool_path(
            name = "nm",
            path = "bin/aarch64-none-linux-gnu-nm",
        ),
        tool_path(
            name = "objdump",
            path = "bin/aarch64-none-linux-gnu-objdump",
        ),
        tool_path(
            name = "strip",
            path = "bin/aarch64-none-linux-gnu-strip",
        ),
    ]
    return cc_common.create_cc_toolchain_config_info(
        ctx = ctx,
	cxx_builtin_include_directories = [ # NEW
          "/yourAbsolutePath/toolchain/aarch64-none-linux-gnu/include/c++/9.2.1/",
          "/yourAbsolutePath/toolchain/lib/gcc/aarch64-none-linux-gnu/9.2.1/include",
          "/yourAbsolutePath/lib/gcc/aarch64-none-linux-gnu/9.2.1/include-fixed",
          "/yourAbsolutePath/aarch64-none-linux-gnu/libc/usr/include/",
        ],
        toolchain_identifier = "aarch64-toolchain",
        host_system_name = "local",
        target_system_name = "local",
        target_cpu = "aarch64",
        target_libc = "unknown",
        compiler = "compiler",
        abi_version = "unknown",
        abi_libc_version = "unknown",
	tool_paths = tool_paths,
    )

cc_toolchain_config = rule(
    implementation = _impl,
    attrs = {},
    provides = [CcToolchainConfigInfo],
)
