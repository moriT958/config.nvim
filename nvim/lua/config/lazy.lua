-- [[ Install Plugin Manager (Lazy) ]]
-- (https://lazy.folke.io/installation)よりコピー
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    error("Error cloning lazy.nvim:\n" .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- [[ Plugins ]]
require("lazy").setup({
  require("plugins.vim-sleuth"),
  require("plugins.gitsigins"),
  require("plugins.which-key"),
  require("plugins.telescope"),
  require("plugins.lazydev"),
  require("plugins.luvit-meta"),
  require("plugins.nvim-lspconfig"),
  require("plugins.conform"),
  require("plugins.nvim-cmp"),
  require("plugins.tokyonight"),
  require("plugins.todo-comments"),
  require("plugins.mini"),
  require("plugins.nvim-treesitter"),
  require("plugins.neo-tree"),
  require("plugins.debug"),
  require("plugins.indent_line"),
  require("plugins.lint"),
  require("plugins.autopairs"),
  require("plugins.hello"),
  require("plugins.present"),
  require("plugins.nvim-scrollbar"),
}, {
  ui = {
    icons = vim.g.have_nerd_font and {} or {
      cmd = "⌘",
      config = "🛠",
      event = "📅",
      ft = "📂",
      init = "⚙",
      keys = "🗝",
      plugin = "🔌",
      runtime = "💻",
      require = "🌙",
      source = "📄",
      start = "🚀",
      task = "📌",
      lazy = "💤 ",
    },
  },
})
