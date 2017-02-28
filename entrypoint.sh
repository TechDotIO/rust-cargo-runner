#!/bin/bash

# Copy answer code
cp -a /project/answer/* /project/target

cd /project/target

# Run the given testcase(s)
cargo build -q && cargo test -q --lib $@
