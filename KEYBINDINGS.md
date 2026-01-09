# Neovim Keybindings Reference

## Leader Keys
- `<leader>` = Space
- `<localleader>` = Comma

## General

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>so` | Normal | Source current file |
| `<leader>ln` | Normal | Toggle line numbers |
| `<leader>ch` | Normal | Clear search highlighting |

## Navigation

| Key | Mode | Description |
|-----|------|-------------|
| `J` | Normal | Join lines keeping cursor at start |
| `<C-d>` | Normal | Scroll down half page, center cursor |
| `<C-u>` | Normal | Scroll up half page, center cursor |
| `n` | Normal | Next search result, center screen |
| `N` | Normal | Previous search result, center screen |
| `<C-k>` | Normal | Jump to next quickfix item |
| `<C-j>` | Normal | Jump to previous quickfix item |
| `<leader>k` | Normal | Jump to next location list item |
| `<leader>j` | Normal | Jump to previous location list item |
| `-` | Normal | Open parent directory in file browser |
| `w` | Normal, Operator, Visual | Enhanced word motion (spider.nvim) |

## Leap Motion (Fast Navigation)

| Key | Mode | Description |
|-----|------|-------------|
| `s` | Normal, Visual, Operator | Leap forward to character |
| `S` | Normal, Visual, Operator | Leap backward to character |
| `gs` | Normal, Visual, Operator | Leap from any window |

## File Operations

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>cd` | Normal | Change directory to current file location |
| `<leader>fD` | Normal | Delete current file and close buffer |

## Telescope Fuzzy Finder

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>ff` | Normal | Find files |
| `<leader>fi` | Normal | Find files (including ignored) |
| `<leader>fr` | Normal | Recently opened files |
| `<leader>fb` | Normal | Open buffers |
| `<leader>fa` | Normal | Live grep (search text in files) |
| `<leader>fp` | Normal | Registers |
| `<leader>fj` | Normal | Jump list |
| `<leader>fk` | Normal | Keymaps |
| `<leader>fc` | Normal | Commands |
| `<leader>fm` | Normal | Man pages |
| `<leader>fd` | Normal | Toggle trouble diagnostic list |
| `<leader>hh` | Normal | Help tags |
| `\\ff` | Normal, Terminal, Insert | Find files (works in terminal) |

### Telescope Insert Mode Mappings
| Key | Mode | Description |
|-----|------|-------------|
| `<C-j>` | Insert | Move to next selection |
| `<C-k>` | Insert | Move to previous selection |
| `<C-q>` | Insert | Send selected to quickfix list |

## Editing

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>p` | Visual | Paste without yanking replaced text |
| `<leader>y` | Normal, Visual | Yank to system clipboard |
| `<leader>Y` | Normal | Yank line to system clipboard |
| `<leader>d` | Normal, Visual | Delete without saving to register |
| `J` | Visual | Move selected lines down |
| `K` | Visual | Move selected lines up |
| `<leader>rs` | Visual | Replace selection in entire file |
| `gr` | Normal | Substitute operator |
| `grr` | Normal | Substitute line |
| `gR` | Normal | Substitute to end of line |
| `gr` | Visual | Substitute selection |

### Insert Mode

| Key | Mode | Description |
|-----|------|-------------|
| `jk` | Insert | Exit insert mode |
| `<C-k>` | Insert | Move cursor up |
| `<C-j>` | Insert | Move cursor down |
| `<C-h>` | Insert | Move cursor left |
| `<C-l>` | Insert | Move cursor right |
| `<C-c>` | Insert | Exit insert mode (same as Esc) |

## Completion (nvim-cmp)

| Key | Mode | Description |
|-----|------|-------------|
| `<C-k>` | Insert | Previous completion item |
| `<C-j>` | Insert | Next completion item |
| `<C-e>` | Insert | Abort completion |
| `<C-f>` | Insert | Trigger completion |
| `<C-u>` | Insert | Scroll completion docs up |
| `<C-d>` | Insert | Scroll completion docs down |
| `<CR>` | Insert | Confirm completion |

## Windows & Splits

| Key | Mode | Description |
|-----|------|-------------|
| `<A-J>` | Normal | Decrease window height |
| `<A-K>` | Normal | Increase window height |
| `<A-H>` | Normal | Decrease window width |
| `<A-L>` | Normal | Increase window width |

## LSP (Language Server Protocol)

| Key | Mode | Description |
|-----|------|-------------|
| `gd` | Normal | Go to definition |
| `gu` | Normal | Find references (Telescope) |
| `gh` | Normal | Show hover documentation |
| `<leader>gh` | Normal | Show signature help |
| `<leader>vw` | Normal | Workspace symbols |
| `<leader>re` | Normal | Rename symbol |
| `<leader>.` | Normal | Code actions |
| `<leader>se` | Normal | Show buffer diagnostics |
| `<leader>pe` | Normal | Go to previous diagnostic |
| `<leader>ne` | Normal | Go to next diagnostic |

## LSP Saga

| Key | Mode | Description |
|-----|------|-------------|
| `<leader>lh` | Normal | Hover documentation |
| `<leader>li` | Normal | Show incoming calls |
| `<leader>lo` | Normal | Show outgoing calls |
| `<leader>ld` | Normal | Peek definition |
| `<leader>lt` | Normal | Peek type definition |
| `<leader>lf` | Normal | LSP finder (references, definitions, etc.) |

## Git

| Key | Mode | Description |
|-----|------|-------------|
| `]h` | Normal | Next hunk |
| `[h` | Normal | Previous hunk |
| `<leader>gs` | Normal | Stage hunk |
| `<leader>gs` | Visual | Stage selected hunk |
| `<leader>gr` | Normal | Reset hunk |
| `<leader>gr` | Visual | Reset selected hunk |
| `<leader>gS` | Normal | Stage entire buffer |
| `<leader>gR` | Normal | Reset entire buffer |
| `<leader>gu` | Normal | Undo stage hunk |
| `<leader>gp` | Normal | Preview hunk |
| `<leader>gb` | Normal | Show line blame (full) |
| `<leader>gB` | Normal | Toggle current line blame |
| `<leader>gd` | Normal | Diff this file |
| `<leader>gD` | Normal | Diff this file against HEAD~ |
| `<leader>lg` | Normal | Open LazyGit |
| `ig` | Operator, Visual | Select git hunk text object |

## Terminal

| Key | Mode | Description |
|-----|------|-------------|
| `<C-x>` | Normal, Terminal | Toggle terminal |
| `<C-n>` | Terminal | Enter normal mode |
| `<leader>ts` | Normal, Visual | Send to terminal (operator) |
| `<leader>tT` | Normal | Toggle terminal in new buffer |
| `<leader>to` | Normal | Open terminal |
| `<leader>tR` | Normal | Run terminal in new buffer |
| `<leader>tk` | Normal | Kill terminal |
| `<leader>t]` | Normal | Cycle to next terminal |
| `<leader>t[` | Normal | Cycle to previous terminal |
| `<leader>tl` | Normal | Move terminal to right split |
| `<leader>th` | Normal | Move terminal to bottom split |
| `<leader>tf` | Normal | Move terminal to floating window |
