{...}: {
  imports = [
    ./bufdelete.nix
    ./bufferline.nix
    ./cmp.nix
    ./conform-nvim.nix
    ./dap.nix
    ./lsp.nix
    ./lspsaga.nix
    ./lualine.nix
    ./notify.nix
    ./nvim-tree.nix
    ./telescope.nix
    ./toggleterm.nix
  ];

  plugins = {
    which-key.enable = true;

    nvim-autopairs.enable = true;

    comment.enable = true;

    gitsigns.enable = true;

    luasnip.enable = true;

    oil.enable = true;

    treesitter.enable = true;
  };
}
