# qemu-jos

A patched version of QEMU that handles triple faults in a way better for OS development.

Used in CS 444 at Oregon State University.

To use this, set the `QEMU` variable in `conf/env.mk` to:

```sh
QEMU = docker run --rm -i -v "$(shell pwd):/workdir" --net=host detjensrobert/qemu-jos
```

Exit qemu with `^D` instead of the normal `^A+x`.
