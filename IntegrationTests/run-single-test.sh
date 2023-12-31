#!/bin/bash
##===----------------------------------------------------------------------===##
##
## This source file is part of the SwiftCertificates open source project
##
## Copyright (c) 2023 Apple Inc. and the SwiftCertificates project authors
## Licensed under Apache License v2.0
##
## See LICENSE.txt for license information
## See CONTRIBUTORS.txt for the list of SwiftCertificates project authors
##
## SPDX-License-Identifier: Apache-2.0
##
##===----------------------------------------------------------------------===##

(
# this sub-shell is where the actual test is run
set -eu
set -x
set -o pipefail

test="$1"
tmp="$2"
root="$3"
g_show_info="$4"
here="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$here/test_functions.sh"
source "$test"
wait
)
exit_code=$?
exit $exit_code
