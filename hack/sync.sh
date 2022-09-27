#!/bin/bash
#
# This script sync CRDs from upstream prometheus-operator helm chart

version=${VERSION:-main}
tmp="/tmp/helm-charts-$version"
upstream=https://github.com/prometheus-community/helm-charts


function main() {
git clone --depth 1  --branch "kube-prometheus-stack-${version}" "$upstream" "$tmp"
rm -rf ./helm/prometheus-operator-crd/templates/
cp -rf "$tmp/charts/kube-prometheus-stack/crds/" ./helm/prometheus-operator-crd/templates/
}

main
rm -rf "$tmp"

echo "=====> done"
