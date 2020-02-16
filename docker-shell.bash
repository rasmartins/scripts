#! /bin/bash
##########################################################################
# SPDX-License-Identifier: Apache-2.0                                    #
# Copyright (C) 2020 Ricardo Martins                                     #
##########################################################################
# Open a shell on a Docker container.                                    #
##########################################################################

if [ $# -ne 1 ]; then
    echo "Usage: $0 <container>"
    exit 1
fi

docker run \
       -v "$PWD:$PWD" \
       -i \
       --cap-add=SYS_PTRACE \
       -a stdin \
       -a stdout \
       -t "$1" \
       /bin/bash
