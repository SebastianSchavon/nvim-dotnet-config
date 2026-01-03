# Neovim .NET Configuration

Opinionated Neovim setup for .NET / C# development.

## Features
- OmniSharp LSP
- Treesitter syntax highlighting
- VS Code / Rider-like keybindings
- netcoredbg debugging
- Telescope-powered navigation

## Requirements
- Neovim >= 0.9
- dotnet-sdk
- omnisharp
- netcoredbg
- ripgrep
- fd
- nodejs

## Install (Arch Linux)
```bash
sudo pacman -S neovim ripgrep fd nodejs npm dotnet-sdk
yay -S omnisharp-roslyn netcoredbg

