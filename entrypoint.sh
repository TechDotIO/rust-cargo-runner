#!/bin/bash

# Copy cargo registry
[ -d /project/target/.cargo ] && \
	rsync -av /project/target/.cargo/ ~/.cargo

# Copy answer code
cp -a /project/answer/* /project/target/source/

cd /project/target/source

cargo build && cargo test --lib $@
