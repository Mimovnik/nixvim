{
  plugins.lsp = {
    enable = true;
    servers = {
      nil_ls.enable = true;
      pylsp.enable = true;
      clangd.enable = true;
    };
  };

  # IMPURE
  # angular-language-server can be installed via npm install -g @angular/language-server
  extraConfigLua = ''
    -- configure angular-language-server
    local project_library_path = vim.fn.getcwd()
    local cmd = {"ngserver", "--stdio", "--tsProbeLocations", project_library_path , "--ngProbeLocations", project_library_path}
    require'lspconfig'.angularls.setup{
      cmd = cmd,
      on_new_config = function(new_config,new_root_dir)
        new_config.cmd = cmd
      end,
    }
  '';
}
