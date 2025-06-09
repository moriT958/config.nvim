return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  keys = {
    {
      "<leader>f",
      function()
        require("conform").format({ async = true, lsp_format = "fallback" })
      end,
      mode = "",
      desc = "[F]ormat buffer",
    },
  },
  opts = {
    notify_on_error = false,

    format_on_save = function(bufnr)
      local disable_filetypes = { c = true, cpp = true }
      local lsp_format_opt
      if disable_filetypes[vim.bo[bufnr].filetype] then
        lsp_format_opt = "never"
      else
        lsp_format_opt = "fallback"
      end
      return {
        timeout_ms = 500,
        lsp_format = lsp_format_opt,
      }
    end,

    -- ft => filetype (:echo &filetype)
    formatters_by_ft = {
      lua = { "stylua" },
      python = function(bufnr)
        if require("conform").get_formatter_info("ruff_format", bufnr).available then
          return { "ruff_format" }
        else
          return { "isort", "black" }
        end
      end,
      java = { "google-java-format" },
      html = { "prettierd", "prettier", stop_after_first = true },
      css = { "biome" },
      javascript = { "biome" },
      typescript = { "biome" },
      astro = { "prettierd", "prettier", stop_after_first = true },
      json = { "biome" },
      markdown = { "markdownlint", "prettier" },
      go = { "goimports", "gofmt" },
      toml = { "pyproject-fmt" },
      zsh = { "shfmt" },
    },
  },
}
