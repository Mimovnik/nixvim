{
  plugins.conform-nvim = {
    enable = true;
    notifyOnError = true;
    formattersByFt = {
      nix = ["alejandra"];
    };
  };
}
