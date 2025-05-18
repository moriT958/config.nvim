return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = {},
  config = function()
    require("catppuccin").setup({
      transparent_background = true,
      default_integrations = true,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
      },
    })
    vim.cmd.colorscheme("catppuccin-mocha")
  end,
}
