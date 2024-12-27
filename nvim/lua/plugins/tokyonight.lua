return {
  "folke/tokyonight.nvim",
  priority = 1000, -- Make sure to load this before all the other start plugins.

  init = function()
    -- Load the colorscheme here.
    -- Like many other themes, this one has different styles, and you could load
    -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
    vim.cmd.colorscheme "tokyonight-night"

    -- You can configure highlights by doing something like:
    vim.cmd.hi "Comment gui=none"
  end,

  config = function()
    require("tokyonight").setup {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      -- relative line number color
      on_colors = function(colors)
        colors.fg_gutter = "#b2b8cf"
      end,
    }
    vim.cmd [[colorscheme tokyonight]]
  end,
}
