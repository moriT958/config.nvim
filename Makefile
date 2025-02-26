.PHONEY: link
link: nvim
	ln -fs ~/config.nvim/nvim ~/.config/nvim

.PHONEY: unlink
make unlink:
	unlink ~/.config/nvim
