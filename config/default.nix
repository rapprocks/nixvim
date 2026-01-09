{pkgs, ...}: {
  imports = [
    ./options.nix
    ./colorscheme.nix
    ./keymaps.nix
    ./telescope2.0.nix
    ./treesitter.nix
    ./mini.nix
    ./bufferline.nix
    ./lsp.nix
    ./blink.nix
    ./conform.nix
  ];

  clipboard = {
    register = "unnamedplus";
    providers.wl-copy.enable = true;
  };
  # https://nix-community.github.io/nixvim/NeovimOptions/autoGroups/index.html
  autoGroups = {
    highlight-yank = {
      clear = true;
    };
  };

  # [[ Basic Autocommands ]]
  #  See `:help lua-guide-autocommands`
  # https://nix-community.github.io/nixvim/NeovimOptions/autoCmd/index.html
  autoCmd = [
    # Highlight when yanking (copying) text
    #  Try it with `yap` in normal mode
    #  See `:help vim.hl.on_yank()`
    {
      event = ["TextYankPost"];
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
  ];
  extraConfigLua = "
			require('render-markdown').setup({})
		";
}
