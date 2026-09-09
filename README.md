<h1 align="center">Neovim Dev Setup</h1>

<p align="center">
  <strong>A fast, modern and AI-free configuration built for software development.</strong>
</p>

<div align="center">
  <img src="https://img.shields.io/badge/Lua-2C2D72?style=for-the-badge&logo=lua&logoColor=white" alt="Lua">
  <img src="https://img.shields.io/badge/Neovim-57A143?style=for-the-badge&logo=neovim&logoColor=white" alt="Neovim">
  <img src="https://img.shields.io/badge/Windows-0078D4?style=for-the-badge&logo=windows11&logoColor=white" alt="Windows">
  <img src="https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black" alt="Linux">
</div>

## Features

Designed primarily for C/C++, Rust, Python and Web Development, with a focus on keeping Neovim powerful without hiding how the editor actually works. It includes the following features:

- Fast plugin management with `lazy.nvim`.
- LSP-powered code intelligence.
- Signature help and documentation.
- Traditional autocompletion — **no AI-generated code.**
- Fuzzy finding with Telescope.
- File management with Oil.
- Automatic brackets, parentheses and quotes.
- Inline diagnostics and error information.
- Modern UI and smooth cursor animations.
- Split-window workflow.
- Support for multiple programming languages through LSP.

## Languages

| Language | Tooling |
| :------- | :------ |
| `C` | `clangd`, `clang-format` |
| `C++` | `clangd`, `clang-format` |
| `Rust` | `rust-analyzer`, `rustfmt`, `Clippy` |
| `Python` | `Pyright` |
| `JavaScript` | `TypeScript Language Server` |
| `TypeScript` | `TypeScript Language Server` |
| `HTML` | `HTML Language Server` |
| `CSS` | `CSS Language Server` |
| `JSON` | `JSON Language Server` |

## AI-Free by Design

This configuration intentionally does not include AI code completion tools such as GitHub Copilot, Codeium, Supermaven or Tabnine.

Autocompletion is provided through language servers and traditional completion sources.

For example, while writing C:

```c
malloc(
```

Neovim can show:

```c
void *malloc(size_t size)
```

It helps you understand and navigate the language without writing the implementation for you.

## Plugins

Some of the core plugins used by this configuration:

- `lazy.nvim` - **plugin manager**
- `nvim-lspconfig` - **LSP configuration**
- `mason.nvim` - **language server/tool management**
- `blink.cmp` - **autocompletion**
- `telescope.nvim` - **fuzzy finder**
- `oil.nvim` - **filesystem navigation**
- `nvim-autopairs` - **automatic pairs**
- `smear-cursor.nvim` - **smooth cursor animations**

## Structure

```text
nvim/
├── init.lua
├── lazy-lock.json
│
└── lua/
    ├── config/
    │   ├── options.lua
    │   ├── keymaps.lua
    │   └── lazy.lua
    │
    └── plugins/
        ├── animations.lua
        ├── autopairs.lua
        ├── colorscheme.lua
        ├── completion.lua
        ├── lsp.lua
        ├── telescope.lua
        └── ui.lua
```

## Windows Installation

Neovim configuration is stored at:

```text
%LOCALAPPDATA%\nvim
```

If you already have a configuration, back it up:

```powershell
Move-Item "$env:LOCALAPPDATA\nvim" "$env:LOCALAPPDATA\nvim.backup"
```

Clone this repository:

```powershell
git clone https://github.com/rodrigorierafiuba/my-neovim-config.git "$env:LOCALAPPDATA\nvim"
```

Check your Neovim version:

```powershell
nvim --version
```

Start Neovim:

```powershell
nvim
```

`lazy.nvim` will automatically install the required plugins.

## Linux Installation

Neovim configuration is stored at:

```text
~/.config/nvim
```

Back up an existing configuration:

```bash
mv ~/.config/nvim ~/.config/nvim.backup
```

Clone the repository:

```bash
git clone git@github.com:rodrigorierafiuba/my-neovim-config.git ~/.config/nvim
```

Start Neovim:

```bash
nvim
```

`lazy.nvim` will automatically install the required plugins.

## External Requirements

The configuration is portable, but language tooling must be available on the system.

### General

```text
Neovim
Git
ripgrep
Nerd Font
```

### C / C++

```text
LLVM
clang
clangd
clang-format
```

### Rust

Install Rust using `rustup` and make sure the following components are available:

```text
rustc
cargo
rust-analyzer
rustfmt
clippy
```

### Python

```text
Python 3
Pyright
```

### Web Development

```text
Node.js
npm
TypeScript Language Server
HTML Language Server
CSS Language Server
JSON Language Server
```

Some language servers can be installed automatically through Mason.

## Keybindings

`<leader>` is mapped to `Space`.

Here is where the fun begins. These keybindings will help you navigate through your code without ever leaving Neovim:

| Key | Action |
| --- | --- |
| `Space ff` | Find files |
| `Space fg` | Search project |
| `Space fb` | Open buffers |
| `Space e` | File explorer |
| `Space w` | Save |
| `Space q` | Quit |
| `Space sv` | Vertical split |
| `Space sh` | Horizontal split |
| `Space sx` | Close split |
| `Space se` | Equalize splits |
| `Ctrl+h` | Move left |
| `Ctrl+j` | Move down |
| `Ctrl+k` | Move up |
| `Ctrl+l` | Move right |
| `gd` | Go to definition |
| `gr` | Find references |
| `K` | Documentation |
| `Space rn` | Rename symbol |
| `Space ca` | Code action |
| `Space d` | Show diagnostic |
| `Ctrl+k` (Insert) | Signature help |

## Keeping the Configuration Updated

I'll keep improving this configuration as I use Neovim. New changes will be pushed to the main branch of this repository.

To keep your local setup updated, simply run:

```bash
git pull
```

This makes it easy to keep the same development environment synchronized across Windows and Linux machines.

## Philosophy

The goal isn't to turn Neovim into another heavyweight IDE like VS Code.

The goal is to combine Vim's editing model with modern development tooling while keeping the environment fast, understandable and under your control **(with a smooth cursor that actually looks insane btw)**.

There are no AI-generated implementations, no unnecessary abstractions and no magic you can't inspect.

Just your editor, your language tooling, and **your code**.

---

Built for people who enjoy understanding what their tools are doing.



