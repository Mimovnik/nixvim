{
  globals.mapleader = " ";

  keymaps = [
    # WhichKey prefixes

    {
      mode = "n";
      key = "<leader>c";
      action = "+code";
    }

    {
      mode = "n";
      key = "<leader>b";
      action = "+buffer";
    }

    # Conform
    {
      mode = "n";
      key = "<leader>cf";
      action = "<cmd>lua require('conform').format()<cr>";
      options = {
        silent = true;
        desc = "Format Buffer";
      };
    }

    #BufferLine
    {
      mode = "n";
      key = "<Tab>";
      action = "<cmd>BufferLineCycleNext<cr>";
      options = {
        desc = "Cycle to next buffer";
      };
    }

    {
      mode = "n";
      key = "<S-Tab>";
      action = "<cmd>BufferLineCyclePrev<cr>";
      options = {
        desc = "Cycle to previous buffer";
      };
    }

    {
      mode = "n";
      key = "<S-Tab>";
      action = "<cmd>bdelete<cr>";
      options = {
        desc = "Delete buffer";
      };
    }

    # Save with ctrl-s
    {
      mode = "n";
      key = "<C-s>";
      action = "<cmd>w<cr><esc>";
      options = {
        silent = true;
        desc = "Save file";
      };
    }

    # nvim-tree
    {
      mode = "n";
      key = "<C-n>";
      action = "<cmd>NvimTreeToggle<cr>";
      options = {
        desc = "Toggle file explorer";
      };
    }

    {
      mode = "n";
      key = "<leader>e";
      action = "<cmd>NvimTreeFocus<cr>";
      options = {
        desc = "Focus file explorer";
      };
    }

    # Clear highlights
    {
      mode = ["n"];
      key = "<Esc>";
      action = "<cmd>noh<CR>";
      options = {
        desc = "Clear highlights";
      };
    }

    # System clipboard
    {
      mode = ["n" "v"];
      key = "<leader>y";
      action = "\"+y";
      options = {
        desc = "Copy to system clipboard";
      };
    }

    {
      mode = ["n" "v"];
      key = "<leader>Y";
      action = "\"+Y";
      options = {
        desc = "Copy to system clipboard";
      };
    }

    # Delete to void register
    {
      mode = ["n" "v"];
      key = "<leader>D";
      action = "\"_d";
      options = {
        desc = "Delete to void register";
      };
    }

    # Window movement
    {
      mode = "n";
      key = "<C-h>";
      action = "<C-w>h";
      options = {
        desc = "Switch to window on left";
      };
    }

    {
      mode = "n";
      key = "<C-l>";
      action = "<C-w>l";
      options = {
        desc = "Switch to window on right";
      };
    }

    {
      mode = "n";
      key = "<C-j>";
      action = "<C-w>j";
      options = {
        desc = "Switch to window down";
      };
    }

    {
      mode = "n";
      key = "<C-k>";
      action = "<C-w>k";
      options = {
        desc = "Switch to window up";
      };
    }

    # Disable arrow keys
    {
      mode = ["n" "i"];
      key = "<Up>";
      action = "<Nop>";
      options = {
        silent = true;
        noremap = true;
        desc = "Disable Up arrow key";
      };
    }
    {
      mode = ["n" "i"];
      key = "<Down>";
      action = "<Nop>";
      options = {
        silent = true;
        noremap = true;
        desc = "Disable Down arrow key";
      };
    }
    {
      mode = ["n" "i"];
      key = "<Right>";
      action = "<Nop>";
      options = {
        silent = true;
        noremap = true;
        desc = "Disable Right arrow key";
      };
    }
    {
      mode = ["n" "i"];
      key = "<Left>";
      action = "<Nop>";
      options = {
        silent = true;
        noremap = true;
        desc = "Disable Left arrow key";
      };
    }
  ];
}
