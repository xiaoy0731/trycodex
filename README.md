# trycodex

Collection of small experiments.

## Android ARM64 environment

To configure a shell for building Android ARM64 binaries using the NDK:

```bash
$ export NDK_ROOT=/path/to/android-ndk
$ source setup_android_arm64_env.sh
```

You can then build the sample in `android_hello`:

```bash
$ cd android_hello
$ ./build_arm64.sh
```
