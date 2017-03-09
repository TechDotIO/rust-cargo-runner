#!/bin/bash

cd /project/target

# Run the given testcase(s)
cargo build -q \
    && cargo test -q --lib $@
