return {
  -- File explorer
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
			"nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    }
  },

  -- Search
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = {
			'nvim-lua/plenary.nvim'
		},
    config = function()
      local builtin = require('telescope.builtin')
      vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
      vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
      vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
      vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
    end
  },

	-- Status
	{
    'nvim-lualine/lualine.nvim',
    dependencies = {
			'nvim-tree/nvim-web-devicons'
		},
		config = function()
			require('lualine').setup({
				options = {
					theme = 'catppuccin'
				}
			})
		end
	},

	-- Buffer
	{
		'akinsho/bufferline.nvim',
		version = "*",
		dependencies = {
			'nvim-tree/nvim-web-devicons'
		},
		config = function()
			require('bufferline').setup({})
		end
	},

	-- Dashboard
	{
		"goolord/alpha-nvim",
     config = function ()
         local alpha = require('alpha')
         local dashboard = require('alpha.themes.dashboard')
         dashboard.section.header.val = {
					 [[]],
					 [[]],
					 [[]],
					 [[]],
					 [[]],
					 [[████████╗ ██████╗ ██╗██╗      █████╗ ██╗   ██╗██╗███╗   ██╗██╗  ██╗]],
					 [[╚══██╔══╝██╔═══██╗██║██║     ██╔══██╗██║   ██║██║████╗  ██║██║  ██║]],
					 [[   ██║   ██║   ██║██║██║     ███████║██║   ██║██║██╔██╗ ██║███████║]],
					 [[   ██║   ██║   ██║██║██║     ██╔══██║╚██╗ ██╔╝██║██║╚██╗██║██╔══██║]],
					 [[   ██║   ╚██████╔╝██║███████╗██║  ██║ ╚████╔╝ ██║██║ ╚████║██║  ██║]],
					 [[   ╚═╝    ╚═════╝ ╚═╝╚══════╝╚═╝  ╚═╝  ╚═══╝  ╚═╝╚═╝  ╚═══╝╚═╝  ╚═╝]],
				 }
				 dashboard.section.footer.val = ""
         alpha.setup(dashboard.config)
     end
	}
}
