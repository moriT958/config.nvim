.PHONEY: link
link: nvim
	unlink ~/.config/nvim
	ln -fs ~/config.nvim/nvim ~/.config/nvim

.PHONEY: unlink
make unlink:
	unlink ~/.config/nvim
