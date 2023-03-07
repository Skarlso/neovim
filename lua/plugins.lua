local packer = require('packer')

packer.init {
  max_jobs = 10,
  display = {
    open_fn = function()
      return require("packer.util").float {border = "single"}
    end
  },
}

return packer.startup(function()
  use 'wbthomason/packer.nvim'

  -- GitHub {{{
  use {'pwntester/octo.nvim', config=function()
    require("octo").setup()
  end}
  -- }}}

  -- File browser {{{
  use {
    'kyazdani42/nvim-tree.lua',
    opt = false,
    cmd = "NvimTreeToggle",
    config = function()
      require("config.nvimtree")
    end
  }
  -- }}}

  -- Better search with telescope {{{
  use {'nvim-telescope/telescope-ui-select.nvim' }
  use {
    'nvim-telescope/telescope.nvim',
    requires = {
      {'nvim-lua/popup.nvim'},
      {'nvim-lua/plenary.nvim'},
      {"nvim-telescope/telescope-media-files.nvim"},
      {"nvim-telescope/telescope-github.nvim"},
      {"nvim-telescope/telescope-symbols.nvim"},
      {"crispgm/telescope-heading.nvim"},
    },
    config = function()
      require("config.telescope")
    end
  }
  use {
    'neovim/nvim-lspconfig',
    config = function ()
      local lsp = require('lspconfig')
      lsp.gopls.setup{}
      lsp.pylsp.setup{}
    end
  }
  -- }}}
  -- Cmp {{{
  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
    },
  }

  use({"petertriho/cmp-git", requires = "nvim-lua/plenary.nvim"})
  -- }}}
  -- Icons {{{
  use 'kyazdani42/nvim-web-devicons'
  use 'ryanoasis/vim-devicons'
  -- }}}

  -- Git related {{{
  use {
    "tpope/vim-fugitive",
    cmd = {
      "Git"
    }
  }
  use {
  "rinx/nvim-ripgrep",
  config = function()
    require("nvim-ripgrep").setup {}
  end
  }
  use {
    "lewis6991/gitsigns.nvim",
    opt = false,
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup()
    end
  }
  use 'rhysd/committia.vim'
  -- }}}

  -- Fancy UI {{{
  use 'vim-airline/vim-airline'
  use 'vim-airline/vim-airline-themes'

  -- Themes
  use 'mhartington/oceanic-next'
  use 'navarasu/onedark.nvim'
  use 'dracula/vim'
  use "rebelot/kanagawa.nvim"
  use 'folke/tokyonight.nvim'
  -- }}}

  -- Markdown zenify {{{
  use 'junegunn/limelight.vim'
  --use 'plasticboy/vim-markdown'
  use 'vim-pandoc/vim-pandoc-syntax'
  -- }}}
  -- Undo {{{
  use {
    'simnalamburt/vim-mundo',
    config = function ()
      require("config.mundo")
    end
  }
  -- }}}
  -- Extra Dev Stuff {{{
  --use 'Shougo/deoplete.nvim'
  --use {
  --  'neoclide/coc.nvim',
  --  branch = 'release',
  --  config = function()
  --    require('config.coc')
  --  end
  --}
  --use {
  --  'fatih/vim-go',
  --  run = ':GoUpdateBinaries',
  --  config = function()
  --    require("config.go")
  --  end
  --}
  use 'ray-x/go.nvim'
  use 'ray-x/guihua.lua' -- recommanded if need floating window support
  -- }}}
  use 'majutsushi/tagbar'
--  use 'ludovicchabant/vim-gutentags'
  use 'chuling/vim-equinusocio-material'
  use 'sheerun/vim-polyglot'
  use 'luochen1990/rainbow'
  -- vim-test {{{
  use 'vim-test/vim-test'
  use 'sebdah/vim-delve'
  -- }}}

  -- Syntax {{{
  --use {
  --  'nvim-treesitter/nvim-treesitter',
  --  run = ':TSUpdate'
  --}
  use {
    'nvim-treesitter/nvim-treesitter',
    config = function()
      require('nvim-treesitter.configs').setup {
        ensure_installed = {'go', 'markdown', 'lua'}
      }
    end
  }
  -- }}}

  -- Tabs {{{
--  use {
--    "nanozuki/tabby.nvim",
--    config = function() require("tabby").setup() end,
--  }
  -- }}}
  
  -- Org Mode {{{
  --  use {
  --      "nvim-neorg/neorg",
  --      run = ":Neorg sync-parsers", -- This is the important bit!
  --      after = "nvim-treesitter", -- You may want to specify Telescope here as well
  --      config = function()
  --          require('neorg').setup {
  --              load = {
  --                  ["core.defaults"] = {},
  --                  ["core.norg.completion"] = {
  --                      config = {
  --                          engine = "nvim-cmp"
  --                      }
  --                  }
  --              }
  --          }
  --      end,
  --      requires = "nvim-lua/plenary.nvim"
  --  }
  -- }}}
end)
