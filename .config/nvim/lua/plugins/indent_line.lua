--return {
--  {
--    "lukas-reineke/indent-blankline.nvim",
--    main = "ibl",
--    opts = {},
--  },
--}
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

			-- Goファイルのみにタブでのインデントガイドを適用
			vim.api.nvim_create_autocmd("FileType", {
				pattern = "go",
				callback = function()
					require("ibl").setup_buffer(0, { indent = { tab_char = "│" } })
				end,
			})
		end,
	},
}
