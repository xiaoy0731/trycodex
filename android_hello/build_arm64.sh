#!/bin/bash
set -e
: "${NDK_ROOT:?Set NDK_ROOT to your Android NDK path}"
"$NDK_ROOT"/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android21-clang \
    hello_android.c -o hello_android
