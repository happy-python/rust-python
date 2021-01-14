#!/usr/bin/env sh

cd rust
cargo build --release
cp target/release/libmylib.dylib ../mylib.so
