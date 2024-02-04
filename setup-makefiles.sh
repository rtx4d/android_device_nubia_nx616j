#!/bin/bash
#
# Copyright (C) 2018-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

set -e

export DEVICE=nx616j
export DEVICE_COMMON=sdm845-common
export VENDOR=nubia

"./../../${VENDOR}/${DEVICE_COMMON}/setup-makefiles.sh" "$@"
