#!/bin/bash
##########################################################################
# SPDX-License-Identifier: Apache-2.0                                    #
# Copyright (C) 2020 Ricardo Martins                                     #
##########################################################################
# Manually iterate over .pacnew files comparing with existing versions.  #
##########################################################################

pacnew=$(find /etc /usr -type f -name '*.pacnew')

for config in $pacnew; do
    meld ${config%\.*} $config
done
