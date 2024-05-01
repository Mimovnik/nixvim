{
  imports = [
    ./keymaps.nix
    ./opts.nix
    ./plugins.nix
  ];

  colorschemes.base16 = {
    enable = true;
    colorscheme = "onedark";
  };
}
