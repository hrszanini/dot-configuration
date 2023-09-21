lua << END
require('telescope').setup{
  defaults = {
  },
  pickers = {
	live_grep = {
		theme = "ivy",	
	},
    find_files = {
		theme = "ivy",
    },
	treesitter = {
		theme = "ivy"
	}
  },
  extensions = {
   
  }
}
END
