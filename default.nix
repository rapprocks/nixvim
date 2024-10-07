{pkgs, ...}: let
  nixvim = import (builtins.fetchGit {
    url = "https://github.com/nix-community/nixvim";
    ref = "nixos-24.05"; # Main for latest?
  });
in {
  imports = [
    nixvim.nixosModules.nixvim

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

  environment.systemPackages = [pkgs.ripgrep];

  programs.nixvim = {
    enable = true;
    defaultEditor = true;

    plugins = {
      harpoon.enable = true;
      copilot-vim.enable = true;
    };
    extraPlugins = [
      pkgs.vimPlugins.render-markdown
    ];
    extraConfigLua = "
			require('render-markdown').setup({})
		";
  };
}
