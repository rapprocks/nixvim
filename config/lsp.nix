{
  diagnostic.settings = {
    virtual_text.enable = true;
    underline = true;
  };
  lsp.inlayHints.enable = true;
  lsp.keymaps = [
    {
      key = "gd";
      lspBufAction = "definition";
    }
    {
      key = "gD";
      lspBufAction = "references";
    }
  ];
  lsp.servers = {
    lua_ls.enable = true;
  };
  plugins = {
    lsp-format = {
      enable = true;
    };
    lsp = {
      enable = true;
      servers = {
        eslint = {
          enable = true;
        };
        html = {
          enable = true;
        };
        lua_ls = {
          enable = true;
        };
        nil_ls = {
          enable = true;
        };
        marksman = {
          enable = true;
        };
        pyright = {
          enable = true;
        };
        gopls = {
          enable = true;
        };
        yamlls = {
          enable = true;
        };
      };
    };
  };
}
