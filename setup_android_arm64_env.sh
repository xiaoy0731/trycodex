#!/bin/bash
# Set up environment variables for building Android ARM64 native binaries.
#
# Usage: source setup_android_arm64_env.sh
# Ensure NDK_ROOT is set to your Android NDK directory before running.

set -euo pipefail

if [ -z "${NDK_ROOT:-}" ]; then
    echo "NDK_ROOT is not set. Please set it to your Android NDK path." >&2
    return 1 2>/dev/null || exit 1
fi

TOOLCHAIN="$NDK_ROOT/toolchains/llvm/prebuilt/linux-x86_64/bin"
export PATH="$TOOLCHAIN:$PATH"

export CC=aarch64-linux-android21-clang
export CXX=aarch64-linux-android21-clang++
export AR=llvm-ar
export AS=llvm-as
export LD=ld.lld
export NM=llvm-nm
export RANLIB=llvm-ranlib
export STRIP=llvm-strip

echo "Android ARM64 build environment configured."
