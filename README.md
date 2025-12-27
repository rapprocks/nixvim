# nixvim
Nixvim config

## TODO

### Critical
- [x] Remove duplicate `lua_ls` definition in `lsp.nix` (lines 17-19)
- [x] Remove `lsp-format` plugin from `lsp.nix` (conflicts with conform)
- [ ] Consolidate format keymaps (currently 3 different ones exist)

### Cleanup
- [x] Remove duplicate `clipboard` setting from `options.nix`
- [x] Remove duplicate `nu = true` from `options.nix` (same as `number`)
- [ ] Delete unused config files: `telescope.nix`, `cmp.nix`, `none-ls.nix`, `alpha.nix`
- [ ] Fix typo: "lanuages" → "languages" in `conform.nix`

### Optimizations
- [x] Set `additional_vim_regex_highlighting = false` in `treesitter.nix`
- [x] Add missing options: `ignorecase`, `smartcase`, `inccommand`, `breakindent`, `showmode = false`
- [x] Change `updatetime` from 50 to 250 (less aggressive)

### Enhancements
- [ ] Use native `plugins.render-markdown.enable` instead of `extraPlugins`
- [ ] Add LSP servers: `cssls`, `jsonls`, `bashls`
- [ ] Add buffer navigation keymaps for bufferline (`<S-h>`, `<S-l>`, `<leader>bd`)
- [ ] Consolidate `extraConfigLua` blocks into one location
