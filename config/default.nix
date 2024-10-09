{pkgs, ...}: {
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

  #environment.systemPackages = [pkgs.ripgrep];

  plugins = {
    harpoon.enable = true;
    copilot-vim.enable = true;
    web-devicons.enable = true;
  };
  extraPlugins = [
    pkgs.vimPlugins.render-markdown-nvim
  ];
  extraConfigLua = "
			require('render-markdown').setup({})
		";
}
