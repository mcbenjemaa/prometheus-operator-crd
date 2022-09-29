#!/bin/bash
#
# This script sync CRDs from upstream prometheus-operator helm chart
set -euo pipefail

version=${VERSION:-main}
tmp="$(mktemp -d -t helm-charts.XXXXX)"
upstream=https://github.com/prometheus-community/helm-charts
script_dir="$( cd "$( dirname "$0" )" && pwd )"


function main() {
    git clone --depth 1  --branch "kube-prometheus-stack-${version}" "$upstream" "$tmp"
    rm -rf  "$script_dir/../helm/prometheus-operator-crd/templates/"
    cp -rf "$tmp/charts/kube-prometheus-stack/crds/" "$script_dir/../helm/prometheus-operator-crd/templates/"
}

trap "rm -rf $tmp" EXIT
main

echo "=====> done"
