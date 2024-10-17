#!/bin/bash

# Define the relative path to the header file to be patched
FILE="thirdparty/diff-gaussian-rasterization-w-pose/cuda_rasterizer/auxiliary.h"

# Backup the original file before modifying
cp "$FILE" "${FILE}.bak"

# Use sed to find and replace the specific threshold value
sed -i 's/p_view.z <= 0.2f/p_view.z <= 0.001f/g' "$FILE"

# Optionally, print a message to indicate success
echo "Patch applied: Threshold changed from 0.2 to 0.001 in $FILE"

