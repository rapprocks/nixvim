{ pkgs, ... }:
{
  imports = [
    ./options.nix
    ./gruvbox.nix
    ./keymaps.nix
    ./telescope.nix
    ./treesitter.nix
    ./alpha.nix
    ./bufferline.nix
    ./lsp.nix
    ./none-ls.nix
    ./cmp.nix
  ];

  plugins = {
    web-devicons.enable = true;
    nvim-tree.enable = true;
    typescript-tools.enable = true;
  };
  extraPlugins = [
    pkgs.vimPlugins.render-markdown-nvim
  ];
  extraConfigLua = "
			require('render-markdown').setup({})
		";
}
