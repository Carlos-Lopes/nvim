vim.g.mapleader = " "

vim.keymap.set("n", "<leader>ex", vim.cmd.Ex)
vim.keymap.set("n", "<C-L>", "<cmd>:TmuxNavigateLeft<CR>")
vim.keymap.set("n", "<C-Ç>", "<cmd>:TmuxNavigateRight<CR>")

vim.opt.number = true
vim.opt.tabstop = 2
vim.opt.termguicolors = true
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({ { import = "plugins" } })

vim.cmd.colorscheme('tokyonight')

