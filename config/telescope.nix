{
  plugins.telescope = {
    enable = true;
    extensions = {
      fzf-native.enable = true;
      ui-select.enable = true;
    };
    settings = {
      defaults = {
        file_ignore_patterns = [
          "^.git/"
          "node_modules"
        ];

        border = {
          prompt = [
            1
            1
            1
            1
          ];
          results = [
            1
            1
            1
            1
          ];
          preview = [
            1
            1
            1
            1
          ];
        };

        borderchars = {
          prompt = [
            "─"
            "│"
            "─"
            "│"
            "┌"
            "┐"
            "│"
            "│"
          ];
          results = [
            " "
            "│"
            "─"
            "│"
            "│"
            "│"
            "┘"
            "└"
          ];
          preview = [
            "─"
            "│"
            "─"
            "│"
            "┌"
            "┐"
            "┘"
            "└"
          ];
        };

        results_title = false;
        sorting_strategy = "ascending";
        layout_config = {
          horizontal = {
            width = 0.9;
            prompt_position = "top";
            preview_width = 0.5;
          };
        };
      };
    };
  };
}
