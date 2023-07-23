return {
  "uga-rosa/ccc.nvim",
  lazy = false,
  config = function()
    require("ccc").setup {
      highlighter = {
        auto_enable = true,
        lsp = true,
      },
    }
  end,
}
