#!/bin/bash

repository_dir=$(git rev-parse --show-toplevel)

expected_format="^#.*"

for file in $(find "$repository_dir" -name "*.txt"); do
    if grep -Eq "$expected_format" "$file"; then
        echo "File format $file meets requirements."
    else
        echo "Error: File format $file does not meet requirements."
    fi
done