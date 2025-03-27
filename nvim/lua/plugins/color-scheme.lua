return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      default_integrations = true,
      integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        treesitter = true,
        mini = {
          enabled = true,
          indentscope_color = "",
        },
      },
    })
    vim.cmd.colorscheme("catppuccin-frappe")
  end,
}
