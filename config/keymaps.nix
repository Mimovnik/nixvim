{
  globals.mapleader = " ";

  # Lsp
  plugins.lsp.keymaps.lspBuf = {
    "K" = "hover";
    "<leader>a" = "code_action";
    "<leader>r" = "rename";
  };

  keymaps = [
    # Lsp
    {
      mode = "n";
      key = "K";
      action = "+Lsp hover";
    }

    {
      mode = "n";
      key = "<leader>a";
      action = "+Code action";
    }

    {
      mode = "n";
      key = "<leader>r";
      action = "+Rename";
    }

    {
      mode = "n";
      key = "gd";
      action = "<cmd>Telescope lsp_definitions";
      options = {
        desc = "Go to definitions";
      };
    }

    {
      mode = "n";
      key = "gr";
      action = "<cmd>Telescope lsp_references";
      options = {
        desc = "Go to references";
      };
    }

    {
      mode = "n";
      key = "gI";
      action = "<cmd>Telescope lsp_implementations";
      options = {
        desc = "Go to implementations";
      };
    }

    # Quickfixlist
    {
      mode = "n";
      key = "<leader>k";
      action = "<cmd>cnext<CR>zz";
    }

    {
      mode = "n";
      key = "<leader>j";
      action = "<cmd>cprev<CR>zz";
    }

    # Dap
    {
      mode = "n";
      key = "<leader>d";
      action = "+Debbuger";
    }

    {
      mode = "n";
      key = "<leader>dB";
      action = "
        <cmd>lua require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: '))<cr>
      ";
      options = {
        silent = true;
        desc = "Breakpoint Condition";
      };
    }

    {
      mode = "n";
      key = "<leader>db";
      action = "<cmd>DapToggleBreakpoint<cr>";
      options = {
        silent = true;
        desc = "Toggle Breakpoint";
      };
    }

    {
      mode = "n";
      key = "<leader>dr";
      action = "<cmd>lua require('dap').continue({ before = get_args })<cr>";
      options = {
        silent = true;
        desc = "Run with Args";
      };
    }

    {
      mode = "n";
      key = "<leader>c";
      action = "<cmd>DapContinue<cr>";
      options = {
        silent = true;
        desc = "Debbuger Continue";
      };
    }

    {
      mode = "n";
      key = "<leader>n";
      action = "<cmd>DapStepOver<cr>";
      options = {
        silent = true;
        desc = "Debbuger Step Over (next)";
      };
    }

    {
      mode = "n";
      key = "<leader>s";
      action = "<cmd>DapStepInto<cr>";
      options = {
        silent = true;
        desc = "Debbuger Step into (step)";
      };
    }

    {
      mode = "n";
      key = "<leader>dt";
      action = "<cmd>DapTerminate<cr>";
      options = {
        silent = true;
        desc = "Terminate";
      };
    }

    {
      mode = "n";
      key = "<leader>do";
      action = "<cmd>DapStepOut<cr>";
      options = {
        silent = true;
        desc = "Step Out";
      };
    }

    {
      mode = "n";
      key = "<leader>dC";
      action = "<cmd>lua require('dap').run_to_cursor()<cr>";
      options = {
        silent = true;
        desc = "Run to cursor";
      };
    }

    {
      mode = "n";
      key = "<leader>dg";
      action = "<cmd>lua require('dap').goto_()<cr>";
      options = {
        silent = true;
        desc = "Go to line (no execute)";
      };
    }

    {
      mode = "n";
      key = "<leader>dj";
      action = "
        <cmd>lua require('dap').down()<cr>
      ";
      options = {
        silent = true;
        desc = "Down";
      };
    }

    {
      mode = "n";
      key = "<leader>dk";
      action = "<cmd>lua require('dap').up()<cr>";
      options = {
        silent = true;
        desc = "Up";
      };
    }

    {
      mode = "n";
      key = "<leader>dl";
      action = "<cmd>lua require('dap').run_last()<cr>";
      options = {
        silent = true;
        desc = "Run Last";
      };
    }

    {
      mode = "n";
      key = "<leader>dp";
      action = "<cmd>lua require('dap').pause()<cr>";
      options = {
        silent = true;
        desc = "Pause";
      };
    }

    {
      mode = "n";
      key = "<leader>drp";
      action = "<cmd>DapToggleRepl<cr>";
      options = {
        silent = true;
        desc = "Toggle REPL";
      };
    }

    {
      mode = "n";
      key = "<leader>ds";
      action = "<cmd>lua require('dap').session()<cr>";
      options = {
        silent = true;
        desc = "Session";
      };
    }

    {
      mode = "n";
      key = "<leader>du";
      action = "<cmd>lua require('dapui').toggle()<cr>";
      options = {
        silent = true;
        desc = "Dap UI";
      };
    }

    {
      mode = "n";
      key = "<leader>dw";
      action = "<cmd>lua require('dap.ui.widgets').hover()<cr>";
      options = {
        silent = true;
        desc = "Widgets";
      };
    }

    {
      mode = ["n" "v"];
      key = "<leader>de";
      action = "<cmd>lua require('dapui').eval()<cr>";
      options = {
        silent = true;
        desc = "Eval";
      };
    }

    # Telescope
    {
      mode = "n";
      key = "<leader>f";
      action = "+Find";
    }

    {
      mode = "n";
      key = "<leader>fh";
      action = "<cmd>Telescope help_tags<CR>";
      options = {
        desc = "Find help";
      };
    }

    {
      mode = "n";
      key = "<leader>fk";
      action = "<cmd>Telescope keymaps<CR>";
      options = {
        desc = "Find keymaps";
      };
    }

    {
      mode = "n";
      key = "<leader>ff";
      action = "<cmd>Telescope find_files<CR>";
      options = {
        desc = "Find files";
      };
    }

    {
      mode = "n";
      key = "<leader>fb";
      action = "<cmd>Telescope buffers<CR>";
      options = {
        desc = "Find buffers";
      };
    }

    {
      mode = "n";
      key = "<leader>fg";
      action = "<cmd>Telescope current_buffer_fuzzy_find<CR>";
      options = {
        desc = "Find in current buffer";
      };
    }

    {
      mode = "n";
      key = "<leader>fw";
      action = "<cmd>Telescope grep_string<CR>";
      options = {
        desc = "Find word under cursor in all files";
      };
    }

    # Git
    {
      mode = "n";
      key = "<leader>g";
      action = "+Git";
    }

    {
      mode = "n";
      key = "<leader>gs";
      action = "<cmd>Telescope git_status<CR>";
      options = {
        desc = "Show git status (with diff preview)";
      };
    }

    {
      mode = "n";
      key = "<leader>gc";
      action = "<cmd>Telescope git_commits<CR>";
      options = {
        desc = "Show git commits and diff preview";
      };
    }

    # Comments
    {
      mode = "n";
      key = "<leader>/";
      action = "<Esc><cmd>lua require('Comment.api').toggle.linewise.current()<cr>";
      options = {
        desc = "Toggle comment";
      };
    }

    {
      mode = "v";
      key = "<leader>/";
      action = "<ESC><cmd>lua require('Comment.api').toggle.linewise(vim.fn.visualmode())<CR>";
      options = {
        desc = "Toggle comment";
      };
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

    # Terminal
    {
      mode = "t";
      key = "<C-x>";
      action = "<C-\\><C-N>";
      options = {
        desc = "Escape terminal mode";
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
      key = "<leader>x";
      action = "<cmd>Bdelete<cr>";
      options = {
        desc = "Delete current buffer";
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

    {
      mode = ["n" "v"];
      key = "<leader>p";
      action = "\"+p";
      options = {
        desc = "Paste from system clipboard";
      };
    }

    {
      mode = ["n" "v"];
      key = "<leader>P";
      action = "\"+P";
      options = {
        desc = "Paste from system clipboard";
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
