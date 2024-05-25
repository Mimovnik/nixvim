{
  plugins.hardtime = {
    enable = true;
    enabled = true;
    disableMouse = true;
    disabledFiletypes = ["Oil" "NvimTree"];
    hint = true;
    maxCount = 4;
    maxTime = 1000;
    restrictionMode = "block";
    restrictedKeys = {
      "h" = ["n" "x"];
      "j" = ["n" "x"];
      "k" = ["n" "x"];
      "l" = ["n" "x"];
    };
  };
}
