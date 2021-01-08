# Install required crosstool packages

For ubuntu
```
apt-get update && apt-get install -y build-essential crossbuild-essential-arm64
```

For fedora
```
dnf copr enable lantw44/aarch64-linux-gnu-toolchain
dnf install aarch64-linux-gnu-{binutils,gcc,glibc}
```

# Run cross compile
```
bazel build --config clang_config //example:hello
```
