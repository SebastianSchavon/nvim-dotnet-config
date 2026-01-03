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

--------------------------------------------------------------------------------

## Windows 11 Installation

### Recommended: WSL (Best Experience)

This configuration works best under WSL, providing the same experience as Linux.

#### Install WSL
Open PowerShell as Administrator:

```powershell
wsl --install

sudo apt update
sudo apt install -y \
  neovim \
  git \
  ripgrep \
  fd-find \
  nodejs \
  npm \
  dotnet-sdk-8.0

ln -s $(which fdfind) ~/.local/bin/fd

git clone https://github.com/<your-username>/nvim-dotnet-config ~/.config/nvim
nvim

