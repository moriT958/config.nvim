return {
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {
      --indent = { char = "│" },
      --scope = { enabled = true },
    },
    config = function()
      require("ibl").setup()

      -- NOTE:
      -- タブでのインデントガイドを適用
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "go", "make" },
        callback = function()
          require("ibl").setup_buffer(0, { indent = { tab_char = "│" } })
        end,
      })
    end,
  },
}
