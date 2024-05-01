{
  plugins = {
    bufferline = {
      enable = true;
      offsets = [
        {
          filetype = "NvimTree";
          text = "File Explorer";
          highlight = "Directory";
        }
      ];
    };

    lualine = {
      enable = true;
      ignoreFocus = [
        "NvimTree"
      ];
    };

    which-key.enable = true;

    nvim-autopairs.enable = true;


    telescope = {
      enable = true;
      settings.defaults = {
        layout_config = {
          prompt_position = "top";
        };
      };
    };

    nvim-tree = {
      enable = true;
      autoClose = true;
    };

    lsp = {
      enable = true;
      servers = {
        nil_ls.enable = true;
      };
    };

    conform-nvim = {
      enable = true;
      formatOnSave = {
        lspFallback = true;
        timeoutMs = 500;
      };
      notifyOnError = true;
      formattersByFt = {
        nix = ["alejandra"];
      };
    };

    toggleterm = {
      enable = true;
      settings = {
        open_mapping = "[[<A-i>]]";
        hide_numbers = true;
        start_in_insert = true;
        terminal_mappings = true;
        persist_mode = true;
        insert_mappings = true;
        close_on_exit = true;
        shell = "zsh";
        direction = "float";
        auto_scroll = true;
        float_opts = {
          border = "curved";
          width = 120;
          height = 30;
          winblend = 0;
        };
      };
    };

    cmp = {
      enable = true;
      autoEnableSources = true;
      settings = {
        sources = [
          {name = "nvim_lsp";}
          {name = "path";}
          {name = "buffer";}
        ];
        mapping = {
          "<C-Space>" = "cmp.mapping.complete()";
          "<C-d>" = "cmp.mapping.scroll_docs(-4)";
          "<C-e>" = "cmp.mapping.close()";
          "<C-f>" = "cmp.mapping.scroll_docs(4)";
          "<CR>" = "cmp.mapping.confirm({ select = true })";
          "<S-Tab>" = "cmp.mapping(cmp.mapping.select_prev_item(), {'i', 's'})";
          "<Tab>" = "cmp.mapping(cmp.mapping.select_next_item(), {'i', 's'})";
        };
      };
    };

    treesitter = {
      enable = true;
    };
  };
}
