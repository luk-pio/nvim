# Neovim Configuration Usage Guide

A modern, feature-rich Neovim configuration optimized for web development, with powerful LSP integration, fuzzy finding, and git workflows.

## Table of Contents

- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Leader Keys](#leader-keys)
- [Plugin Overview](#plugin-overview)
- [Core Keybindings](#core-keybindings)
  - [General Navigation](#general-navigation)
  - [File & Search Operations](#file--search-operations)
  - [Text Editing](#text-editing)
  - [LSP & Code Intelligence](#lsp--code-intelligence)
  - [Git Integration](#git-integration)
  - [Terminal Management](#terminal-management)
  - [Window Management](#window-management)
  - [Session Management](#session-management)
- [Plugin-Specific Features](#plugin-specific-features)
- [Tips & Tricks](#tips--tricks)

---

## Prerequisites

- Neovim >= 0.9.0
- Git
- A Nerd Font (for icons)
- Node.js (for LSP servers)
- ripgrep (for Telescope live grep)
- fd (optional, for faster file finding)

## Installation

1. Clone this repository to your Neovim config directory:
   ```bash
   git clone <your-repo> ~/.config/nvim
   ```

2. Launch Neovim:
   ```bash
   nvim
   ```

3. Lazy.nvim will automatically install all plugins on first launch
4. Mason will install configured LSP servers and formatters

## Leader Keys

- **Leader**: `Space`
- **Local Leader**: `,`

These are the prefix keys for most custom keybindings throughout this configuration.

---

## Plugin Overview

### Core Plugins

| Plugin | Purpose |
|--------|---------|
| **lazy.nvim** | Plugin manager |
| **telescope.nvim** | Fuzzy finder for files, text, and more |
| **nvim-treesitter** | Syntax highlighting and code understanding |
| **nvim-lspconfig** | LSP client configuration |
| **mason.nvim** | LSP/formatter/linter installer |
| **nvim-cmp** | Auto-completion engine |
| **gitsigns.nvim** | Git integration and decorations |
| **oil.nvim** | File browser |

### Enhancement Plugins

| Plugin | Purpose |
|--------|---------|
| **lspsaga.nvim** | Enhanced LSP UI |
| **which-key.nvim** | Keybinding popup helper |
| **leap.nvim** | Fast navigation with 2-character search |
| **vim-surround** | Manipulate surrounding characters |
| **vim-commentary** | Quick commenting |
| **autopairs** | Auto-close brackets and quotes |
| **substitute.nvim** | Enhanced substitute operations |
| **noice.nvim** | Better command line and notifications |
| **lualine.nvim** | Status line |
| **kanagawa.nvim** | Color scheme |
| **auto-session** | Session management |
| **trouble.nvim** | Pretty diagnostics list |
| **conform.nvim** | Code formatter |
| **lazygit.nvim** | LazyGit integration |
| **terminal.nvim** | Terminal management |
| **spider** | Smarter word motions |
| **cinnamon.nvim** | Smooth scrolling |
| **render-markdown** | Enhanced markdown rendering |
| **undotree** | Visualize undo history |
| **vim-tidal** | TidalCycles integration |

---

## Core Keybindings

### General Navigation

| Mode | Keybinding | Description |
|------|------------|-------------|
| N | `<Space>so` | Source (reload) current file |
| N | `J` | Join lines keeping cursor at start |
| N | `<C-d>` | Scroll down half page, center cursor |
| N | `<C-u>` | Scroll up half page, center cursor |
| N | `n` | Next search result, center screen |
| N | `N` | Previous search result, center screen |
| N | `<Space>ch` | Clear search highlighting |
| N | `<C-k>` | Next quickfix item |
| N | `<C-j>` | Previous quickfix item |
| N | `<Space>k` | Next location list item |
| N | `<Space>j` | Previous location list item |
| N | `<Space>cd` | Change to current file directory |
| N | `s` | Leap forward to character (2-char search) |
| N | `S` | Leap backward to character |
| N | `gs` | Leap from any window |
| N | `[c` | Go to context (parent block with treesitter) |
| N/O/X | `w` | Smart word motion (subword navigation) |

### File & Search Operations

#### Telescope Fuzzy Finding

| Mode | Keybinding | Description |
|------|------------|-------------|
| N | `<Space>ff` | Find files |
| N | `<Space>fi` | Find files (including ignored) |
| N | `<Space>fr` | Recently opened files |
| N | `<Space>fb` | Open buffers |
| N | `<Space>fa` | Live grep (search text in files) |
| N | `<Space>fp` | Registers |
| N | `<Space>fj` | Jump list |
| N | `<Space>fk` | Keymaps |
| N | `<Space>fc` | Commands |
| N | `<Space>fm` | Man pages |
| N | `<Space>se` | Show buffer diagnostics |
| N | `<Space>hh` | Help tags |
| N/T/I | `\\ff` | Find files (works in terminal mode too) |

**Telescope Navigation (in picker):**
- `<C-j>`: Move to next item
- `<C-k>`: Move to previous item
- `<C-q>`: Send selected to quickfix list

#### File Browser

| Mode | Keybinding | Description |
|------|------------|-------------|
| N | `-` | Open parent directory (Oil.nvim) |

#### File Management

| Mode | Keybinding | Description |
|------|------------|-------------|
| N | `<Space>fD` | Delete current file and close buffer |

### Text Editing

#### Insert Mode Navigation

| Mode | Keybinding | Description |
|------|------------|-------------|
| I | `<C-k>` | Move cursor up |
| I | `<C-h>` | Move cursor left |
| I | `<C-l>` | Move cursor right |
| I | `<C-j>` | Move cursor down |
| I | `jk` | Exit insert mode |
| I | `<C-c>` | Exit insert mode |

#### Copy/Paste/Delete

| Mode | Keybinding | Description |
|------|------------|-------------|
| X | `<Space>p` | Paste without yanking replaced text |
| N/V | `<Space>y` | Yank to system clipboard |
| N | `<Space>Y` | Yank line to system clipboard |
| N/V | `<Space>d` | Delete without saving to register |

#### Visual Mode

| Mode | Keybinding | Description |
|------|------------|-------------|
| V | `J` | Move selected lines down |
| V | `K` | Move selected lines up |
| V | `<Space>rs` | Replace selection in entire file |

#### Substitution

| Mode | Keybinding | Description |
|------|------------|-------------|
| N | `gr` | Substitute operator |
| N | `grr` | Substitute line |
| N | `gR` | Substitute to end of line |
| X | `gr` | Substitute selection |

#### Auto-completion (Insert Mode)

| Mode | Keybinding | Description |
|------|------------|-------------|
| I | `<C-k>` | Previous completion item |
| I | `<C-j>` | Next completion item |
| I | `<C-e>` | Abort completion |
| I | `<C-f>` | Trigger completion |
| I | `<C-u>` | Scroll docs up |
| I | `<C-d>` | Scroll docs down |
| I | `<CR>` | Confirm selection |

#### Treesitter Selection

| Mode | Keybinding | Description |
|------|------------|-------------|
| N | `<C-Space>` | Init/expand selection |
| X | `<C-Space>` | Increment node selection |
| X | `<BS>` | Decrement node selection |

### LSP & Code Intelligence

#### Navigation

| Mode | Keybinding | Description |
|------|------------|-------------|
| N | `gd` | Go to definition |
| N | `gu` | Find references (Telescope) |
| N | `<Space>pe` | Go to previous diagnostic |
| N | `<Space>ne` | Go to next diagnostic |

#### Information & Documentation

| Mode | Keybinding | Description |
|------|------------|-------------|
| N | `gh` | Show hover documentation |
| N | `<Space>gh` | Show signature help |
| N | `<Space>lh` | Hover documentation (Lspsaga) |
| N | `<Space>lf` | LSP finder (refs, defs, etc.) |

#### Code Actions & Refactoring

| Mode | Keybinding | Description |
|------|------------|-------------|
| N | `<Space>.` | Code actions |
| N | `<Space>re` | Rename symbol |
| N | `<Space>ld` | Peek definition |
| N | `<Space>lt` | Peek type definition |
| N | `<Space>li` | Show incoming calls |
| N | `<Space>lo` | Show outgoing calls |
| N | `<Space>vw` | Workspace symbols |

#### TypeScript-Specific

| Mode | Keybinding | Description |
|------|------------|-------------|
| N | `<Space>ri` | Organize imports |
| N | `<Space>ru` | Remove unused imports |
| N | `<Space>rm` | Add missing imports |
| N | `<Space>ra` | Fix all issues |
| N | `<Space>rr` | Rename file |
| N | `<Space>rf` | File references |

#### Diagnostics

| Mode | Keybinding | Description |
|------|------------|-------------|
| N | `<Space>fd` | Toggle trouble diagnostics window |

#### Formatting

| Mode | Keybinding | Description |
|------|------------|-------------|
| N/V | `<Space>fo` | Format file or range |

### Git Integration

#### Gitsigns

| Mode | Keybinding | Description |
|------|------------|-------------|
| N | `]h` | Next hunk |
| N | `[h` | Previous hunk |
| N | `<Space>gs` | Stage hunk |
| N | `<Space>gr` | Reset hunk |
| V | `<Space>gs` | Stage selected hunk |
| V | `<Space>gr` | Reset selected hunk |
| N | `<Space>gS` | Stage buffer |
| N | `<Space>gR` | Reset buffer |
| N | `<Space>gu` | Undo stage hunk |
| N | `<Space>gp` | Preview hunk |
| N | `<Space>gb` | Blame line (full) |
| N | `<Space>gB` | Toggle line blame |
| N | `<Space>gd` | Diff this |
| N | `<Space>gD` | Diff this ~ |
| O/X | `ig` | Git hunk text object |

#### LazyGit

| Mode | Keybinding | Description |
|------|------------|-------------|
| N | `<Space>lg` | Open LazyGit |

### Terminal Management

| Mode | Keybinding | Description |
|------|------------|-------------|
| N/T | `<C-x>` | Toggle terminal |
| N | `<Space>tT` | Toggle terminal in new buffer |
| N | `<Space>to` | Open terminal |
| N | `<Space>tR` | Run terminal in new buffer |
| N | `<Space>tk` | Kill terminal |
| N | `<Space>t]` | Cycle to next terminal |
| N | `<Space>t[` | Cycle to previous terminal |
| N | `<Space>tl` | Move terminal to right |
| N | `<Space>th` | Move terminal to bottom |
| N | `<Space>tf` | Move terminal to float |
| N/X | `<Space>ts` | Send to terminal (operator) |
| T | `<C-n>` | Enter normal mode (from terminal) |

### Window Management

#### Resizing

| Mode | Keybinding | Description |
|------|------------|-------------|
| N | `<A-J>` | Decrease window height |
| N | `<A-K>` | Increase window height |
| N | `<A-H>` | Decrease window width |
| N | `<A-L>` | Increase window width |

#### Display Options

| Mode | Keybinding | Description |
|------|------------|-------------|
| N | `<Space>ln` | Toggle line numbers |

### Session Management

| Mode | Keybinding | Description |
|------|------------|-------------|
| N | `<Space>wr` | Restore session for cwd |
| N | `<Space>ws` | Save session for cwd |

---

## Plugin-Specific Features

### Oil.nvim (File Browser)

Oil provides a buffer-based file browser where you can edit the filesystem like text.

- Press `-` to open the parent directory
- Edit filenames directly in the buffer
- Delete lines to delete files
- Use `dd` to cut, `p` to paste
- Save with `:w` to apply changes

### Leap.nvim (Fast Navigation)

Leap allows you to jump anywhere on screen with just 2 keystrokes:

1. Press `s` (forward) or `S` (backward)
2. Type 2 characters of your target location
3. Type the highlighted label to jump

### Vim-Surround

Manipulate surrounding characters (quotes, brackets, tags):

- `ds"` - Delete surrounding quotes
- `cs"'` - Change surrounding quotes from " to '
- `ysiw"` - Surround word with quotes
- `yss)` - Surround line with parentheses
- In visual mode: `S"` - Surround selection with quotes

### Vim-Commentary

Quick commenting:

- `gcc` - Toggle comment on current line
- `gc` (in visual mode) - Toggle comment on selection
- `gcap` - Toggle comment on paragraph

### Telescope

Powerful fuzzy finder with live preview:

- Type to search/filter
- `<C-j>`/`<C-k>` to navigate
- `<CR>` to open
- `<C-x>` to open in split
- `<C-v>` to open in vertical split
- `<C-t>` to open in new tab
- `<C-q>` to send to quickfix

### LSP Features

This configuration includes LSP support for:

- **TypeScript/JavaScript** (ts_ls via typescript-tools)
- **Lua** (lua_ls)
- **Python** (pyright)
- **Rust** (rust-analyzer)
- **C/C++** (clangd)
- **C#** (omnisharp)
- **GraphQL** (graphql-lsp)
- **JSON** (jsonls with schema support)
- **Bash** (bashls)

Features include:
- Auto-completion
- Go to definition
- Find references
- Hover documentation
- Signature help
- Diagnostics
- Code actions
- Rename refactoring

### Formatters

Auto-formatting is configured for:

- **JavaScript/TypeScript/React**: prettier
- **HTML/CSS/JSON/YAML/Markdown**: prettier
- **Lua**: stylua
- **Python**: isort + black
- **GraphQL**: prettier

Use `<Space>fo` to format the current file or visual selection.

### Mason

Mason manages LSP servers, formatters, and linters.

- `:Mason` - Open Mason UI
- `:MasonInstall <package>` - Install a package
- `:MasonUninstall <package>` - Uninstall a package

Pre-installed tools:
- LSP servers: lua_ls, ts_ls, graphql, jsonls, bashls, omnisharp, clangd, pyright
- Formatters: prettier, stylua, isort, black
- Linters: pylint

### Treesitter

Provides:
- Advanced syntax highlighting
- Smart text objects
- Auto-indentation
- Code folding
- Incremental selection (`<C-Space>`)

Installed parsers:
- JavaScript, TypeScript, HTML, Python, Rust, C, Lua, Vim, Markdown, GraphQL, Bash, Dockerfile

### Auto-Session

Automatically saves and restores your workspace sessions per directory.

- Sessions are auto-saved on exit
- Auto-restored when opening Neovim in a previously saved directory
- Use `<Space>wr` to manually restore
- Use `<Space>ws` to manually save

### Noice.nvim

Enhances the command line, messages, and notifications with a modern UI:

- Command palette mode
- Bottom search
- Popup notifications
- Better LSP progress messages

### Undotree

Visualize and navigate your undo history as a tree.

- `:UndotreeToggle` - Open undo tree
- Navigate through different undo states
- See the actual changes for each state

---

## Tips & Tricks

### Quick File Navigation

1. **Jump to file under cursor**: Use `gf` (built-in Vim)
2. **Recent files**: `<Space>fr`
3. **Current directory files**: `<Space>ff`
4. **Search across files**: `<Space>fa`

### Efficient Editing

1. **Repeat last change**: `.` (built-in Vim)
2. **Repeat last command**: `@:` (built-in Vim)
3. **Visual block mode**: `<C-v>` then edit multiple lines
4. **Join lines smartly**: `J` keeps cursor at start

### LSP Workflow

1. Hover over symbol: `gh`
2. Need more info: `<Space>lf` (LSP finder)
3. Jump to definition: `gd`
4. Find all uses: `gu`
5. Rename: `<Space>re`
6. Fix issues: `<Space>.` (code actions)

### Git Workflow

1. View changes: `<Space>gp` (preview hunk)
2. Stage changes: `<Space>gs`
3. View blame: `<Space>gb`
4. Full git UI: `<Space>lg` (LazyGit)

### Terminal Workflow

1. Quick toggle: `<C-x>`
2. Send code to terminal: `<Space>ts` (operator)
3. Example: `<Space>tsip` sends paragraph to terminal
4. Multiple terminals: `<Space>t]` to cycle

### Window Management

1. Split window: `:split` or `:vsplit`
2. Resize with Alt+hjkl
3. Navigate with `<C-w>` + hjkl (built-in)

### Search and Replace

1. Search in file: `/pattern`
2. Replace in file: `:%s/old/new/g`
3. Replace selection: Select text, `<Space>rs`
4. Substitute with operator: `gr` + motion

### Performance Tips

1. Lazy loading is enabled for most plugins
2. LSP servers start only when needed
3. Treesitter parsers are auto-installed on demand
4. Use `<Space>ch` to clear search highlighting

---

## Customization

### Adding LSP Servers

Edit `/lua/plugins/mason.lua`:

```lua
ensure_installed = {
  "lua_ls",
  "ts_ls",
  "your_new_server", -- Add here
}
```

### Adding Formatters

Edit `/lua/plugins/formatter.lua`:

```lua
formatters_by_ft = {
  javascript = { "prettier" },
  your_language = { "your_formatter" }, -- Add here
}
```

### Changing Color Scheme

Edit `/lua/plugins/coloroscheme.lua` and replace "kanagawa" with your preferred theme.

### Custom Keybindings

Add to `/lua/settings/keybindings.lua`:

```lua
vim.keymap.set("n", "<your-key>", "<your-command>", { desc = "Description" })
```

---

## Troubleshooting

### LSP Not Working

1. Check if server is installed: `:Mason`
2. Check LSP status: `:LspInfo`
3. Restart LSP: `:LspRestart`

### Formatter Not Working

1. Ensure formatter is installed: `:Mason`
2. Check configuration in `/lua/plugins/formatter.lua`
3. Try manual format: `:!prettier %` (or your formatter)

### Slow Startup

1. Check plugin load times: `:Lazy profile`
2. Most plugins are lazy-loaded
3. Consider disabling unused plugins

### Keybinding Conflicts

1. Check all keymaps: `<Space>fk` (Telescope keymaps)
2. Use `:verbose map <key>` to see what's mapped
3. Edit keybindings in relevant plugin files

---

## Additional Resources

- **Neovim Docs**: `:help`
- **Plugin Help**: `:help <plugin-name>`
- **Telescope Commands**: `:Telescope`
- **Mason UI**: `:Mason`
- **Lazy Plugin Manager**: `:Lazy`
- **Which-Key**: Press `<Space>` and wait to see available bindings

---

## Summary

This Neovim configuration provides:

✅ Modern LSP integration with auto-completion
✅ Powerful fuzzy finding with Telescope
✅ Git integration with Gitsigns and LazyGit
✅ Built-in terminal management
✅ Auto-formatting and linting
✅ Session persistence
✅ Fast navigation with Leap
✅ Enhanced UI with Noice
✅ Smart syntax highlighting with Treesitter
✅ Extensible and well-organized structure

**Remember**: Press `<Space>` and wait a moment to see available keybindings with which-key!

Happy coding! 🚀
