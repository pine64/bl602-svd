#!/usr/bin/env bash

# This script generates the Rust library code from the bl602 SVD file.

fail() {
  echo "Error: $*"
  exit 1
}

if [ ! -f "scripts/regenerate-rust-code.sh" ]; then
  echo "This script must be run from the root of the repository"
  exit 1
fi

command -v svd2rust > /dev/null || fail "Please install rust2vd (https://github.com/rust-embedded/svd2rust)"
command -v form > /dev/null || fail "Please install form (https://github.com/djmcgill/form)"
command -v rustfmt > /dev/null || fail "Please install rustfmt"

svd_path="soc602_reg.svd"
src_path="src"

set -x

# Remove the existing code in the src directory
rm -v -rf "${src_path}/"

# Generate the new code
mkdir -v "${src_path}/"

# Generate the Rust code from the SVD
svd2rust -i $svd_path --target riscv

# Split the single generated lib.rs file into Rust modules
form -i lib.rs -o "${src_path}/" && rm lib.rs

# Reformat the code with rustfmt
find "${src_path}/" -name \*.rs -exec rustfmt -v {} \;
