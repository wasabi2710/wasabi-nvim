return {
	-- add plugins here --
	{
    		"hrsh7th/nvim-cmp",
    		-- load cmp on InsertEnter
    		event = "InsertEnter",
    		-- these dependencies will only be loaded when cmp loads
 		-- dependencies are always lazy-loaded unless specified otherwise
    		dependencies = {
      			"hrsh7th/cmp-nvim-lsp",
     			"hrsh7th/cmp-buffer",
    		},
    		config = function()
      			-- ...
    		end,
        },
	{
		"nvim-tree/nvim-tree.lua",
		opts = {},
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("nvim-tree").setup()
		end,
	},
	{
		"nvim-telescope/telescope.nvim", tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {},
		config = function()
			require("telescope").load_extension("file_browser")
		end,
	},
	{
    		"nvim-telescope/telescope-file-browser.nvim",
		opts = {},
    		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			require("telescope").setup({
				extensions = {
					file_browser = {
						theme = "center"
					},
				},
			})
		end,
	},
	{
  		"stevearc/oil.nvim",
 	 	opts = {},
  		dependencies = { { "echasnovski/mini.icons", opts = {} } },
		config = function()
			require("oil").setup({
				default_file_explorer = true
			})
		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 900,
		config = function()
			vim.cmd([[colorscheme tokyonight]])
		end,
	},	
	{ "nvim-tree/nvim-web-devicons", lazy = true },

}
