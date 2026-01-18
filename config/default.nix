{pkgs, ...}: {
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
