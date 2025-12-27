{pkgs, ...}: {
  plugins.treesitter = {
    enable = true;
    grammarPackages = with pkgs.vimPlugins.nvim-treesitter.builtGrammars; [
      bash
      json
      lua
      markdown
      nix
      regex
      toml
      vim
      vimdoc
      xml
      yaml
      html
      css
      typescript
      javascript
      powershell
    ];
    settings = {
      auto_install = false;
      ensureInstalled = [
        "bash"
        "markdown"
        "nix"
        "lua"
        "html"
        "css"
        "typescript"
        "javascript"
        "powershell"
        "yaml"
        "toml"
      ];
      indent.enable = true;
      highlight = {
        enable = true;
        additional_vim_regex_highlighting = false;
      };
    };
    folding = false;
  };
}
