#!/bin/bash
set -euo pipefail

function generate() {
    pushd "$1"
    xcodegen generate
    popd
}

generate "LibE"
generate "LibA"
generate "LibB"
generate "LibC"
generate "LibD"
xcodegen generate