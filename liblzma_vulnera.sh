#!/bin/bash
set -u
set -x  # Print commands and their arguments as they are executed.

# Find the path to liblzma used by sshd
path="$(ldd $(which sshd) | grep liblzma | grep -o '/[^ ]*')" || echo "liblzma not found for sshd"

# If the path is empty, the script will now continue instead of exiting due to set -e being removed.
if [ "$path" == "" ]
then
    echo "probably not vulnerable (liblzma not used by sshd)"
else
    # Check for function signature
    if hexdump -ve '1/1 "x"' "$path" | grep -q f30f1efa554889f54c89ce5389fb81e70000000084883ec28488954241848894c2410
    then
        echo "probably vulnerable"
    else
        echo "probably not vulnerable (no matching signature)"
    fi
fi
