{ pkgs, ... }:
{
  imports = [
    ./options.nix
    ./colorscheme.nix
    ./keymaps.nix
    ./telescope.nix
    ./treesitter.nix
    ./mini.nix
    ./bufferline.nix
    ./lsp.nix
    ./blink.nix
    ./conform.nix
    ./auto-dark-mode.nix
  ];

  clipboard = {
    register = "unnamedplus";
    providers.wl-copy.enable = true;
  };
  autoGroups = {
    highlight-yank = {
      clear = true;
    };
  };

  autoCmd = [
    {
      event = [ "TextYankPost" ];
      desc = "Highlight when yanking (copying) text";
      group = "highlight-yank";
      callback.__raw = ''
        function()
          vim.hl.on_yank()
        end
      '';
    }
  ];
  plugins = {
    colorizer.enable = true;
    web-devicons.enable = true;
    nvim-autopairs.enable = true;
    nvim-tree = {
      enable = true;
      autoClose = true;
      settings.git.enable = true;
    };
    typescript-tools.enable = true;
    gitsigns = {
      enable = true;
      settings = {
        signs = {
          add.text = "+";
          change.text = "~";
          changedelete.text = "~";
          delete.text = "_";
          topdelete.text = "‾";
          untracked.text = "┆";
        };
      };
    };
  };
  extraPlugins = [
    pkgs.vimPlugins.render-markdown-nvim
    (pkgs.vimUtils.buildVimPlugin {
      name = "my-plugin";
      src = pkgs.fetchFromGitHub {
        owner = "f-person";
        repo = "auto-dark-mode.nvim";
        rev = "e300259ec777a40b4b9e3c8e6ade203e78d15881";
        hash = "sha256-PhhOlq4byctWJ5rLe3cifImH56vR2+k3BZGDZdQvjng=";
      };
    })
  ];
  extraConfigLua = "
			require('render-markdown').setup({})
		";
}
