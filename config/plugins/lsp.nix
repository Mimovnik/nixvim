{
  plugins.lsp = {
    enable = true;
    servers = {
      clangd.enable = true;

      nil_ls = {
        enable = true;
        settings.nil = {
          formatting.command = ["alejandra"];
        };
      };

      basedpyright.enable = true;

      marksman.enable = true;

      jsonls.enable = true;
    };
  };
}
