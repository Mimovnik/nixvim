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

    lualine.enable = true;

    which-key.enable = true;

    nvim-autopairs.enable = true;

    nvim-tree.enable = true;

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
        size = ''
          function(term)
            if term.direction == "horizontal" then
              return 15
                elseif term.direction == "vertical" then
              return vim.o.columns * 0.4
            end
          end
        '';
        open_mapping = "[[<A-i>]]";
        hide_numbers = true;
        shade_terminals = true;
        start_in_insert = true;
        terminal_mappings = true;
        persist_mode = true;
        insert_mappings = true;
        close_on_exit = true;
        shell = "zsh";
        direction = "horizontal"; # 'vertical' | 'horizontal' | 'window' | 'float'
        auto_scroll = true;
        float_opts = {
          border = "single"; # 'single' | 'double' | 'shadow' | 'curved' | ... other options supported by win open
          width = 80;
          height = 20;
          winblend = 0;
        };
        winbar = {
          enabled = true;
          name_formatter = ''
            function(term)
              return term.name
            end
          '';
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
