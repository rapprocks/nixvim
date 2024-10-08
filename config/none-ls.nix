{
  keymaps = [
    {
      mode = ["n" "v"];
      key = "<leader>gf";
      action = "<cmd>lua vim.lsp.buf.format()<cr>";
      options = {
        silent = true;
        desc = "Format";
      };
    }
  ];
  plugins.none-ls = {
    enable = true;
    enableLspFormat = true;
    sources.formatting = {
      alejandra.enable = true;
      prettier.enable = true;
      stylua.enable = true;
      yamlfmt.enable = true;
    };
  };
}
