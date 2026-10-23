#!/bin/bash
set -e

if [ -n "${MESON_ARGS:-}" ]; then
    # Cross-compilation (e.g., osx-arm64)
    ${PYTHON} -m pip install . -vv --no-deps --no-build-isolation -Csetup-args=${MESON_ARGS// / -Csetup-args=}
else
    # Native build (Linux-64, OSX-64)
    ${PYTHON} -m pip install . -vv --no-deps --no-build-isolation
fi
