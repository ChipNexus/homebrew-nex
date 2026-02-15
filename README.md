# Homebrew Tap for NEX

<p align="center">
  <img src="https://docs.chipnexus.ai/images/logo.png" alt="ChipNexus logo" width="250" />
</p>

<p align="center">
  <img src="https://img.shields.io/github/v/release/ChipNexus/homebrew-nex?color=7C3AED" alt="GitHub release" />
  <img src="https://img.shields.io/badge/status-preview-F59E0B" alt="Preview status" />
  <img src="https://img.shields.io/badge/platform-macOS%20arm64%20%7C%20Linux%20amd64%20%7C%20WSL2-8B5CF6" alt="Platform" />
  <img src="https://img.shields.io/github/downloads/ChipNexus/homebrew-nex/total?color=A855F7" alt="Downloads" />
</p>

This repository provides the official Homebrew tap for installing and updating the `nex` CLI. The software is distributed as prebuilt binaries for macOS (Apple Silicon) and Linux (amd64), including Windows Subsystem for Linux (WSL2).

## Requirements

- macOS (Apple Silicon), Linux (amd64), or Windows Subsystem for Linux (WSL2)
- Homebrew installed: https://brew.sh

## Install

```bash
brew tap ChipNexus/nex
brew install nex
```

## Upgrade

To upgrade to the latest released version:

```bash
brew update
brew upgrade nex
```

## Verify installation

```bash
nex --version
```

## Uninstall

```bash
brew uninstall nex
```

To remove the tap entirely:

```bash
brew untap ChipNexus/nex
```

## Support

If you need help, want to request a feature, or encounter issues:

- Read the official documentation: https://docs.chipnexus.ai
- Open an issue on this repository: https://github.com/ChipNexus/homebrew-nex/issues
- Contact support via email: [support@chipnexus.ai](mailto:support@chipnexus.ai)
