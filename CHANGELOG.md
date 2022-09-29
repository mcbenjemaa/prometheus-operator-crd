# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Changed

- Upgrade CRDs from 23.2.0 (prometheus-operator 0.52.1) to 32.4.0 (prometheus-operator 0.54.0) - See [upstream changelog](https://github.com/prometheus-operator/prometheus-operator/blob/main/CHANGELOG.md#0420--2020-09-09) for more information

## [1.0.1] - 2022-03-11

### Added

- Make this chart a cluster singleton.

## [1.0.0] - 2022-01-20

### Added

- Add prometheus-operator CRD from https://github.com/giantswarm/prometheus-operator-app/tree/v0.12.1/helm/prometheus-operator-app/files

[Unreleased]: https://github.com/giantswarm/prometheus-operator-crd/compare/v1.0.1...HEAD
[1.0.1]: https://github.com/giantswarm/prometheus-operator-crd/compare/v1.0.0...v1.0.1
[1.0.0]: https://github.com/giantswarm/prometheus-operator-crd/releases/tag/v1.0.0
