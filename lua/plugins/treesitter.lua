return{
   "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.configs").setup({
        ensure_installed = { "c", "cpp", "lua", "bash", "json", "vim" },
        highlight = { enable = true },
        indent = { enable = true },
      })
    end,
}
