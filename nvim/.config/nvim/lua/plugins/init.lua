return {
  {
    "airblade/vim-gitgutter"
  },
  {
    "tpope/vim-fugitive"
  },
  {
    "tpope/vim-commentary"
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = {
          "lua",
          "rust",
          "python",
          "bash",
        }
      })
    end
  }
}
