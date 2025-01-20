{
  plugins.conform-nvim = {
    enable = true;
    settings = {
      notify_on_error = true;
      formatters_by_ft = {
        nix = ["alejandra"];
        python = ["black" "isort"];
        json = ["jq"];
        "_" = ["trim_whitespace"];
      };
      default_format_opts.lsp_format = "first";
    };
  };
}
