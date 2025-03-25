return {
  "petertriho/nvim-scrollbar",
  dependencies = { "folke/tokyonight.nvim" },
  config = function()
    local colors = require("tokyonight.colors").setup()

    require("scrollbar").setup {
      handle = {
        color = colors.bg_highlight,
      },
      throttle_ms = 50,
      marks = {
        Search = { color = colors.orange },
        Error = { color = colors.error },
        Warn = { color = colors.warning },
        Info = { color = colors.info },
        Hint = { color = colors.hint },
        Misc = { color = colors.purple },
      },
    }
  end,
}
