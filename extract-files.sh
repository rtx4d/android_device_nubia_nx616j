#!/bin/bash
#
# Copyright (C) 2018-2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

function blob_fixup() {
    case "${1}" in
    vendor/lib/hw/audio.primary.sdm845.so)
        "${PATCHELF}" --replace-needed "libcutils.so" "libprocessgroup.so" "${2}"
        ;;
    vendor/lib64/hw/audio.primary.sdm845.so)
        "${PATCHELF}" --replace-needed "libcutils.so" "libprocessgroup.so" "${2}"
        ;;
    vendor/lib64/libgoodixhwfingerprint.so)
        "${PATCHELF}" --remove-needed "libkeymaster_messages.so" "${2}"
        "${PATCHELF}" --remove-needed "libsoftkeymasterdevice.so" "${2}"
        ;;
    esac
}

# If we're being sourced by the common script that we called,
# stop right here. No need to go down the rabbit hole.
if [ "${BASH_SOURCE[0]}" != "${0}" ]; then
    return
fi

set -e

export DEVICE=nx616j
export DEVICE_COMMON=sdm845-common
export VENDOR=nubia

"./../../${VENDOR}/${DEVICE_COMMON}/extract-files.sh" "$@"
