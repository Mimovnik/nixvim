{
  imports = [
    ./keymaps.nix
    ./opts.nix
    ./plugins
  ];

  colorschemes.base16 = {
    enable = true;
    colorscheme = "onedark";
  };
}
