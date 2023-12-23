return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function () 
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = { 
				"c", 
				"go", 
				"html", 
				"java", 
				"javascript", 
				"kotlin", 
				"lua", 
				"query", 
				"typescript", 
				"vim", 
				"vimdoc", 
				"xml", 
				"yaml" 
			},
			sync_install = false,
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },  
		})
	end
}
