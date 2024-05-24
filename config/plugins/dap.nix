{
  plugins.dap = {
    enable = true;

    signs = {
      dapBreakpoint = {
        text = "●";
        texthl = "DapBreakpoint";
      };
      dapBreakpointCondition = {
        text = "●";
        texthl = "DapBreakpointCondition";
      };
      dapLogPoint = {
        text = "◆";
        texthl = "DapLogPoint";
      };
    };

    extensions = {
      dap-python = {
        enable = true;
      };
      dap-ui = {
        enable = true;
        floating.mappings = {
          close = ["<ESC>" "q"];
        };
      };
      dap-virtual-text = {
        enable = true;
      };
    };

    adapters.executables.gdb = {
      command = "gdb";
      args = ["-i" "dap"];
    };

    configurations = {
      c = [
        {
          name = "C gdb launch";
          type = "gdb";
          request = "launch";
          program = "build/main";
        }
      ];

      java = [
        {
          name = "Debug (Attach) - Remote";
          type = "java";
          request = "launch";
          hostName = "127.0.0.1";
          port = 5005;
        }
      ];
    };
  };
}
