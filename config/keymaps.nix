{
  globals = {
    mapleader = " ";
    maplocalleader = " ";
  };
  keymaps = [
    {
      mode = "n";
      key = "<Esc>";
      action = "<cmd>nohlsearch<CR>";
    }
    {
      mode = "n";
      key = "<leader>gf";
      action = "vim.lsp.buf.format";
      options.desc = "Format using none-ls";
    }
    {
      mode = "n";
      key = "<C-t>";
      action = ":NvimTreeToggle<cr>";
      options.desc = "Toggle file explorer";
      options.silent = true;
      options.noremap = true;
    }
  ];
}
