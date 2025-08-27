# Android Native Hello

This directory contains a minimal native program for Android that prints
`Hello Android from NDK!`.

## Build for ARM64 using Android NDK

1. Download and extract the [Android NDK](https://developer.android.com/ndk) for Linux.
2. Set `NDK_ROOT` to the extracted directory.
3. Compile using the `aarch64` toolchain:

```bash
$ $NDK_ROOT/toolchains/llvm/prebuilt/linux-x86_64/bin/aarch64-linux-android21-clang \
    hello_android.c -o hello_android
```

The resulting `hello_android` binary runs on Android ARM64 devices or emulators.

## Build for host (optional)

To verify the code on the host system:

```bash
$ gcc hello_android.c -o hello_android
$ ./hello_android
```

