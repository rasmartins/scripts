#! /bin/bash
##########################################################################
# SPDX-License-Identifier: Apache-2.0                                    #
# Copyright (C) 2020 Ricardo Martins                                     #
##########################################################################
# Completely remove Docker containers and images.                        #
##########################################################################

container_list=$(docker ps -a | awk '{ print $1 }' | tail -n +2)
image_list=$(docker images -a | awk '{ print $3 }' | tail -n +2)

if [ -n "$container_list" ]; then
    docker stop $container_list
    docker rm $container_list
fi

if [ -n "$image_list" ]; then
    docker rmi $image_list
fi
