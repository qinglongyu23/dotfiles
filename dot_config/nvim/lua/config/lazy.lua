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

require("lazy").setup({
	{ "LazyVim/LazyVim", import = "lazyvim.plugins" },
	{ import = "plugins" },
	{ import = "lazyvim.plugins.extras.coding.copilot" },
	{ import = "lazyvim.plugins.extras.lang.rust" },
	{ import = "lazyvim.plugins.extras.lang.docker" },
}, {
	install = {
		colorscheme = { "catppuccin" },
	},
	checker = {
		enabled = true,
		notify = false,
	},
	change_detection = {
		notify = false,
	},
})

vim.cmd("highlight VertSplit guifg=#D8ABCE")

local chatgpt_config = {

	openai_params = {
		model = "gpt-4-turbo-preview",
		max_tokens = 4096,
	},
}
require("chatgpt").setup(chatgpt_config)
