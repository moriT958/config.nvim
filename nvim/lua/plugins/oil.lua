return {
  "stevearc/oil.nvim",
  opts = {},
  dependencies = { { "nvim-mini/mini.icons", opts = {} } },
  lazy = false,
  config = function()
    require("oil").setup({
      keymaps = {
        ["\\"] = "actions.close",
      },
    })
    vim.keymap.set("n", "\\", ":Oil<CR>")
  end,
}
