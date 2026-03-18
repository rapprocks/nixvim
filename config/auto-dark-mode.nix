{ pkgs, ... }:
{
  extraPlugins = [
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
  extraConfigLua = ''
    	  require('auto-dark-mode').setup({
          update_interval = 1000,
          set_dark_mode = function()
            vim.opt.background = "dark"
            vim.cmd("colorscheme rose-pine")
          end,
          set_light_mode = function()
            vim.opt.background = "light"
            vim.cmd("colorscheme rose-pine")
          end,
        })
        require('auto-dark-mode').init()
    	'';
}
