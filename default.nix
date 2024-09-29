{
  pkgs,
  lib,
  ...
}: let
  nixvim = import (builtins.fetchGit {
    url = "https://github.com/nix-community/nixvim";
    ref = "nixos-24.05";
  });
in {
  imports = [
    nixvim.nixosModules.nixvim
    ./colorscheme.nix
    ./lsp.nix
    ./completion.nix
    ./keymaps.nix
  ];

  programs.nixvim = {
    enable = true;
    opts = {
      clipboard = "unnamedplus";
      number = true;
      relativenumber = true;
      signcolumn = "yes";
      autoindent = true;
      tabstop = 2;
      shiftwidth = 2;
      updatetime = 100;
      termguicolors = true;
      mouse = "a";
      syntax = "on";
      splitright = true;
      splitbelow = true;
      swapfile = false;
      undofile = true;
      scrolloff = 999;
    };
    plugins = {
      treesitter = {
        enable = true;
        indent = true;
      };

      telescope = {
        enable = true;
        extensions = {
          fzf-native.enable = true;
        };
        settings = {
          defaults = {
            file_ignore_patterns = [
              "^.git/"
            ];

            border = {
              prompt = [1 1 1 1];
              results = [1 1 1 1];
              preview = [1 1 1 1];
            };

            borderchars = {
              prompt = ["─" "│" "─" "│" "┌" "┐" "│" "│"];
              results = [" " "│" "─" "│" "│" "│" "┘" "└"];
              preview = ["─" "│" "─" "│" "┌" "┐" "┘" "└"];
            };

            results_title = false;
            sorting_strategy = "ascending";
            layout_config = {
              horizontal = {
                width = 0.9;
                prompt_position = "top";
                preview_width = 0.5;
              };
            };
          };
        };
      };
    };
  };
}
