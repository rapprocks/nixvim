{
  plugins = {
    conform-nvim = {
      enable = true;
      settings = {
        format_on_save = ''
          return { timeout_ms = 5000, lsp_format = "fallback" }
        '';
        formatters_by_ft = {
          lua = [ "stylua" ];
        };
      };
    };
  };
}
