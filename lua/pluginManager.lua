-- ==================================================================
-- PLUGIN MANAGER: LAZI.VIM
-- ==================================================================

local lazy = {}

function lazy.install(path)
  if not vim.loop.fs_stat(path) then
    print('Installing lazy.nvim....')
    vim.fn.system({
      'git',
      'clone',
      '--filter=blob:none',
      'https://github.com/folke/lazy.nvim.git',
      '--branch=stable', -- latest stable release
      path,
    })
  end
end

function lazy.setup(plugins)
  -- You can "comment out" the line below after lazy.nvim is installed
  -- lazy.install(lazy.path)

  vim.opt.rtp:prepend(lazy.path)
  require('lazy').setup(plugins, lazy.opts)
end

lazy.path = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
lazy.opts = {}




-- =========================================================
-- ADD PLUGINS
-- =========================================================

lazy.setup({
    {'ellisonleao/gruvbox.nvim'},
    {'nvim-lualine/lualine.nvim'},
    {'akinsho/bufferline.nvim', version = "*", dependencies = 'nvim-tree/nvim-web-devicons'},
    {'nvim-treesitter/nvim-treesitter'},
    {'nvim-treesitter/nvim-treesitter-textobjects'},
    {'wellle/targets.vim'},
    {'numToStr/Comment.nvim'},
    {'nvim-tree/nvim-tree.lua', dependencies = 'nvim-tree/nvim-web-devicons'},
    {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },

    
    { import = 'plugins' }
})


-- =========================================================
-- PLUGINS CONFIG
-- =========================================================

-- lualine
require('lualine').setup({
  options = {
        theme = "auto",
        globalstatus = true,
        disabled_filetypes = { statusline = { "dashboard", "alpha" } },
   icons_enabled = false,
   component_separators = '',
   disable_filetypes = {
       statusline = {'NvimTree'},
   }
  },
})

-- bufferline
require('bufferline').setup({
  options = {
    mode = 'buffers',
    separator_style = 'slant',
    offsets = {
      {filetype = 'NvimTree'}
    },
  },
  highlights = {
    buffer_selected = {
      italic = false
    },
    indicator_selected = {
      fg = {attribute = 'fg', highlight = 'Function'},
      italic = false
    },
  }
})

-- treesitter
require('nvim-treesitter.configs').setup({
  highlight = {
    enable = true,
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
        ['ac'] = '@class.outer',
        ['ic'] = '@class.inner',
      }
    },
  },
  ensure_installed = {
    'javascript',
    'typescript',
    'css',
    'json',
    'lua',
    'rust',
    'python',
    'java',
  },
})

-- Comment
require('Comment').setup({})

-- nvim-tree
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

-- 
