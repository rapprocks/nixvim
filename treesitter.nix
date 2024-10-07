{
  programs.nixvim.plugins.treesitter = {
    enable = true;
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
        additional_vim_regex_highlighting = true;
      };
    };
    folding = false;
  };
}
