{
  programs.nixvim.plugins = {
    lsp-format = {enable = true;};
    lsp = {
      enable = true;
      servers = {
        eslint = {enable = true;};
        html = {enable = true;};
        lua-ls = {enable = true;};
        nil-ls = {enable = true;};
        marksman = {enable = true;};
        pyright = {enable = true;};
        gopls = {enable = true;};
        terraformls = {enable = true;};
        ansiblels = {enable = true;};
        yamlls = {
          enable = true;
        };
      };
    };

    none-ls = {
      enable = true;
      enableLspFormat = true;
      sources.formatting = {
        alejandra.enable = true;
        prettier.enable = true;
        stylua.enable = true;
        yamlfmt.enable = true;
      };
    };
  };
}
