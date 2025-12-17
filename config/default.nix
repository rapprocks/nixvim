{ pkgs, ... }:
{
  imports = [
    ./options.nix
    ./colorscheme.nix
    ./keymaps.nix
    ./telescope.nix
    ./treesitter.nix
    #./alpha.nix
    ./bufferline.nix
    ./lsp.nix
    ./none-ls.nix
    ./cmp.nix
  ];

  clipboard = {
    register = "unnamedplus";
    providers.wl-copy.enable = true;
  };
  plugins = {
    web-devicons.enable = true;
    nvim-tree = {
      enable = true;
      autoClose = true;
      settings.git.enable = true;
    };
    typescript-tools.enable = true;
  };
  extraPlugins = [
    pkgs.vimPlugins.render-markdown-nvim
  ];
  extraConfigLua = "
			require('render-markdown').setup({})
		";
}
