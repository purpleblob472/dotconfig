require("core.keymap")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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
    {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        dependencies = {'nvim-lua/plenary.nvim'}
    },
    {'ThePrimeagen/harpoon'},

--    {
--        'sainnhe/sonokai',
--        name = 'sonokai',
--        config = function()
--            vim.cmd('colorscheme sonokai')
--        end
--    },

      {
         'uZer/pywal16.nvim', 
	  name = 'pywal16',
	  config = function()
		  vim.cmd('colorscheme pywal16')
          end
      },

--    {
--          "folke/tokyonight.nvim",
--          name = "tokyonight",
--          config = function ()
--              vim.cmd('colorscheme tokyonight-storm')
--          end
--    },

    {
        'nvim-treesitter/nvim-treesitter', build = ':TSUpdate'
    },
--- Uncomment the two plugins below if you want to manage the language servers from neovim
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},
    {'mfussenegger/nvim-jdtls'},

    {
        'nvim-java/nvim-java',
        dependencies = {
            'nvim-java/lua-async-await',
            'nvim-java/nvim-java-refactor',
            'nvim-java/nvim-java-core',
            'nvim-java/nvim-java-test',
            'nvim-java/nvim-java-dap',
            'MunifTanjim/nui.nvim',
            'neovim/nvim-lspconfig',
            'mfussenegger/nvim-dap',
            {
                'williamboman/mason.nvim',
                opts = {
                    registries = {
                        'github:nvim-java/mason-registry',
                        'github:mason-org/mason-registry',
                    },
                },
            }
        },
    }


})

