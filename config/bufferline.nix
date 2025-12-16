{
  plugins.bufferline = {
    enable = true;
    settings = {
      options = {
        always_show_bufferline = false;
        offsets = [
          {
            filetype = "NvimTree";
            highlight = "Directory";
            text = "File Explorer";
            text_align = "center";
          }
        ];
      };
    };
  };
}
