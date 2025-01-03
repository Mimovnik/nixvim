{
  plugins.conform-nvim = {
    enable = true;
    settings = {
      notify_on_error = true;
      formatters_by_ft = {
        nix = ["alejandra"];
      };
    };
  };
}
