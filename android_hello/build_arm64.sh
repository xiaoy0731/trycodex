#!/bin/bash
set -e

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"

if [ -z "${CC:-}" ]; then
    : "${NDK_ROOT:?Set NDK_ROOT to your Android NDK path}"
    CC="$NDK_ROOT/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android21-clang"
fi

"$CC" "$SCRIPT_DIR/hello_android.c" -o "$SCRIPT_DIR/hello_android"
