#!/bin/bash

# Needed for registry in ~/.cargo
HOME=/project/target

# Copy answer code
cp -a /project/answer/* /project/target/source/

cd /project/target/source

cargo build -q && cargo test -q --lib $@
