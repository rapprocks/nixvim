{
  plugins.snacks = {
    enable = true;
    settings = {
      input.enabled = true;
    };
  };
  plugins.opencode = {
    enable = true;
    settings = {
      auto_reload = false;
      #port = 8080;
      #prompts = {
      #  example = {
      #    description = "An example prompt configuration";
      #    prompt = "Write a function that returns the factorial of a number";
      #  };
      #};
    };
  };
  keymaps = [
    {
      mode = "n";
      key = "<C-o>";
      action.__raw = ''
        function()
          require("opencode").ask("@this: ", { submit = true})
        end
      '';
      options = {
        desc = "Ask opencode...";
      };
    }
  ];
}
