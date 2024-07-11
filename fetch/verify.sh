#!/bin/sh

readonly IMAGE_FILE="archlinux-bootstrap-x86_64.tar.zst"
readonly IMAGE_SIGNATURE_FILE="archlinux-bootstrap-x86_64.tar.zst.sig"
readonly SIGNER_FILE="release-key.pgp"

apk add sequoia-sq
sq network wkd fetch pierre@archlinux.org -o ${SIGNER_FILE}
sq verify --signer-file ${SIGNER_FILE} --detached ${IMAGE_SIGNATURE_FILE} ${IMAGE_FILE}
