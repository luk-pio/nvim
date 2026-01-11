# Neovim Configuration

A modern, feature-rich Neovim configuration optimized for web development with powerful LSP integration, fuzzy finding, and git workflows.

## Quick Start

```bash
# Clone to your Neovim config directory
git clone <your-repo> ~/.config/nvim

# Launch Neovim (plugins will auto-install)
nvim
```

## Features

- 🚀 **Fast & Lazy-loaded**: Optimized startup with lazy.nvim
- 🧠 **Smart LSP**: Full IDE features for TypeScript, Python, Rust, C/C++, Lua, and more
- 🔍 **Fuzzy Finding**: Telescope for files, text, and everything
- 🎨 **Beautiful UI**: Kanagawa theme with lualine and noice.nvim
- 🌳 **Git Integration**: Gitsigns + LazyGit for seamless version control
- 📦 **Auto-formatting**: Prettier, stylua, black, and more
- 💻 **Terminal Management**: Built-in terminal with easy toggling
- ⚡ **Quick Navigation**: Leap.nvim for lightning-fast jumps
- 🔧 **Auto-completion**: Intelligent completion with nvim-cmp
- 📝 **Syntax Highlighting**: Treesitter-powered highlighting

## Key Plugins

| Category | Plugins |
|----------|---------|
| **Plugin Manager** | lazy.nvim |
| **LSP** | nvim-lspconfig, mason.nvim, lspsaga.nvim, typescript-tools |
| **Completion** | nvim-cmp, luasnip, friendly-snippets |
| **Fuzzy Finder** | telescope.nvim, telescope-fzf-native |
| **Syntax** | nvim-treesitter, treesitter-context |
| **Git** | gitsigns.nvim, lazygit.nvim, vim-fugitive |
| **UI** | noice.nvim, lualine.nvim, which-key.nvim, dressing.nvim |
| **Navigation** | leap.nvim, spider, oil.nvim |
| **Editing** | vim-surround, vim-commentary, autopairs, substitute.nvim |
| **Formatting** | conform.nvim (prettier, stylua, black, isort) |
| **Terminal** | terminal.nvim |
| **Other** | auto-session, trouble.nvim, undotree, cinnamon.nvim |

## Quick Reference

### Leader Keys
- **Leader**: `Space`
- **Local Leader**: `,`

### Essential Keybindings

```
<Space>ff    - Find files
<Space>fa    - Search text in files (live grep)
<Space>fb    - Open buffers
<Space>lg    - Open LazyGit

gd           - Go to definition
gu           - Find references
gh           - Hover documentation
<Space>.     - Code actions
<Space>re    - Rename symbol

<Space>gs    - Git stage hunk
<Space>gp    - Git preview hunk
[h / ]h      - Previous/Next git hunk

<C-x>        - Toggle terminal
-            - Open file browser (Oil.nvim)
s            - Leap forward (2-char jump)

<Space>fo    - Format file
<Space>fd    - Toggle diagnostics (Trouble)
```

## Full Documentation

For comprehensive documentation including all keybindings, plugin usage, and tips, see **[USAGE_GUIDE.md](./USAGE_GUIDE.md)**.

## Structure

```
nvim/
├── init.lua                    # Entry point
├── lazy-lock.json             # Plugin version lock file
├── lua/
│   ├── plugin_manager.lua     # Lazy.nvim setup
│   ├── settings/
│   │   ├── init.lua           # Settings loader
│   │   ├── editor.lua         # Editor settings
│   │   ├── keybindings.lua    # General keybindings
│   │   ├── windows.lua        # Window settings
│   │   └── lsp/
│   │       └── keybindings.lua # LSP-specific keybindings
│   └── plugins/
│       ├── init.lua           # Basic plugins
│       ├── telescope.lua      # Fuzzy finder
│       ├── lsp.lua            # LSP configuration
│       ├── mason.lua          # LSP/formatter installer
│       ├── nvim-cmp.lua       # Completion
│       ├── treesitter.lua     # Syntax highlighting
│       ├── git.lua            # Git integration
│       ├── terminal.lua       # Terminal management
│       └── ...                # Other plugin configs
├── README.md                  # This file
└── USAGE_GUIDE.md            # Comprehensive usage guide
```

## Requirements

- **Neovim** >= 0.9.0
- **Git**
- **Node.js** (for LSP servers)
- **ripgrep** (for Telescope live grep)
- **A Nerd Font** (for icons)
- **fd** (optional, for faster file finding)

## Supported Languages

Out of the box LSP support for:
- TypeScript/JavaScript
- Python
- Rust
- C/C++
- Lua
- C#
- GraphQL
- JSON
- Bash

## Customization

All configuration is modular and organized by feature:

- **Add LSP servers**: Edit `lua/plugins/mason.lua`
- **Add formatters**: Edit `lua/plugins/formatter.lua`
- **Change theme**: Edit `lua/plugins/coloroscheme.lua`
- **Add keybindings**: Edit `lua/settings/keybindings.lua`
- **Add plugins**: Create new file in `lua/plugins/`

## Tips

1. Press `<Space>` and wait to see available keybindings (which-key)
2. Use `<Space>fk` to search all keymaps
3. Use `<Space>hh` to search Neovim help
4. Use `:Lazy` to manage plugins
5. Use `:Mason` to manage LSP servers and formatters

## Resources

- **Keybindings Reference**: See [USAGE_GUIDE.md](./USAGE_GUIDE.md#core-keybindings)
- **Plugin Features**: See [USAGE_GUIDE.md](./USAGE_GUIDE.md#plugin-specific-features)
- **Troubleshooting**: See [USAGE_GUIDE.md](./USAGE_GUIDE.md#troubleshooting)

## License

Feel free to use and modify this configuration for your own needs.

---

**Pro tip**: After installation, press `<Space>` in normal mode and wait a moment to see the which-key popup with all available commands!
