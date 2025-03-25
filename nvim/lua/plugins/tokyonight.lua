return {
  "folke/tokyonight.nvim",
  priority = 1000,

  init = function()
    vim.cmd.colorscheme "tokyonight-storm"
    vim.cmd.hi "Comment gui=none"
  end,

  config = function()
    require("tokyonight").setup {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      on_colors = function(colors)
        colors.fg_gutter = "#b2b8cf"
      end,
    }
    vim.cmd [[colorscheme tokyonight]]
  end,
}
