vim.cmd [[packadd packer.nvim]]
require([[packer]]).startup(function(use)
--plugins
  use {
    [[VonHeikemen/lsp-zero.nvim]],
    requires = {
      -- not specified
      {[[wbthomason/packer.nvim]]},           --package manager
      {[[ryanoasis/vim-devicons]]},           --adds icons support
      {[[jpalardy/vim-slime]]},               --allows to run interpreter from nvim
      {[[shime/vim-livedown]]},               --realtime markdown
      {[[ap/vim-css-color]]},                 --enables hex colors in nvim
      {[[otavioschwanck/cool-substitute.nvim]]},     --enables multiple cursors
      {[[mattn/emmet-vim]]},                  --adds emmet like in vscode
      {[[preservim/nerdtree]]},              --adds filemanager in the left
      {[[onsails/lspkind.nvim]]},             --prettifies sugguestions
      {[[nvim-tree/nvim-web-devicons]]},      --option for dashboard-nvim
      {'glepnir/galaxyline.nvim',             --custom vim airline
        branch = 'main',
        config = Statusline_config,
        requires = { 'nvim-tree/nvim-web-devicons', opt = true },
      },
      {
	      [[glepnir/dashboard-nvim]],
      	event = [[VimEnter]],
	      config = function ()
          require([[dashboard]]).setup{
            theme = [[hyper]],
		        config = Dashboard_config
         }
      end,
             requires = {[[nvim-tree/nvim-web-devicons]]}
      },           --displays better dashboard
      -- LSP Support
      {[[neovim/nvim-lspconfig]]},
      {[[williamboman/mason.nvim]]},
      {[[williamboman/mason-lspconfig.nvim]]},

      -- Autocompletion
      {[[hrsh7th/nvim-cmp]]},
      {[[hrsh7th/cmp-buffer]]},
      {[[hrsh7th/cmp-path]]},
      {[[saadparwaiz1/cmp_luasnip]]},
      {[[hrsh7th/cmp-nvim-lsp]]},
      {[[hrsh7th/cmp-nvim-lua]]},

      -- Snippets
      {[[L3MON4D3/LuaSnip]]},
      {[[rafamadriz/friendly-snippets]]},
      --telescope
      {
        [[nvim-telescope/telescope.nvim]],
        tag = [[0.1.2]],
        requires = { {'nvim-lua/plenary.nvim'} },
      },


      {[[fatih/vim-go]]}, --should help with go projects
    },
    config = function ()
      require([[mason.settings]]).set({
        log_level = vim.log.levels.DEBUG
      })
    end,
  use {'akinsho/bufferline.nvim', tag = "*", requires = 'nvim-tree/nvim-web-devicons'} --filename tabs
  }
end)
