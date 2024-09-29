{
  programs.nixvim = {
    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };
    keymaps = [
      {
        mode = "n";
        key = "<leader>f";
        action = "<cmd>Telescope find_files<cr>";
        options.desc = "Fuzzy find files in cwd";
      }
      {
        mode = "n";
        key = "<leader>/";
        action = "<cmd>Telescope live_grep<cr>";
        options.desc = "Find string in cwd";
      }
      {
        mode = "n";
        key = "<leader>gf";
        action = "vim.lsp.buf.format";
        options.desc = "Format using none-ls";
      }
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
  };
}
