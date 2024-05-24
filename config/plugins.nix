{pkgs, ...}: {
  plugins = {
    hardtime = {
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
        "-" = ["n" "x"];
        "+" = ["n" "x"];
        "gj" = ["n" "x"];
        "gk" = ["n" "x"];
        "<CR>" = ["n" "x"];
        "<C-M>" = ["n" "x"];
        "<C-N>" = ["n" "x"];
        "<C-P>" = ["n" "x"];
      };
    };

    notify = {
      enable = true;
      backgroundColour = "#000000";
      fps = 60;
      render = "default";
      timeout = 500;
      topDown = true;
    };

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

    comment.enable = true;

    gitsigns.enable = true;

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
        pylsp.enable = true;
        clangd.enable = true;
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

  extraPlugins = [
    (pkgs.vimUtils.buildVimPlugin {
      name = "bufdelete";
      src = pkgs.fetchFromGitHub {
        owner = "famiu";
        repo = "bufdelete.nvim";
        rev = "f6bcea78afb3060b198125256f897040538bcb81";
        hash = "sha256-ljUNfmpImtxFCS19HC9kFlaLlqaPDltKtnx1+/6Y33U=";
      };
    })
  ];
}
