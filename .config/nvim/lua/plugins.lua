return {
  { -- colorscheme
    'bluz71/vim-nightfly-guicolors',
    config = function()
      vim.cmd([[colorscheme nightfly]])
    end
  },


--  'editorconfig/editorconfig-vim',
--   {
--     'nvim-lualine/lualine.nvim',
--     dependencies = { 'nvim-tree/nvim-web-devicons' },
--     config = function()
--       require('config/lualine')
--     end
--   },

{'hrsh7th/nvim-cmp', event = 'InsertEnter, CmdlineEnter'},
{'hrsh7th/cmp-nvim-lsp', event = 'InsertEnter'}, 
{'hrsh7th/cmp-buffer', event = 'InsertEnter'},
{'hrsh7th/cmp-path', event = 'InsertEnter'},
{'hrsh7th/cmp-vsnip', event = 'InsertEnter'},
{'hrsh7th/cmp-cmdline', event = 'ModeChanged'}, --これだけは'ModeChanged'でなければまともに動かなかった。
{'hrsh7th/cmp-nvim-lsp-signature-help', event = 'InsertEnter'},
{'hrsh7th/cmp-nvim-lsp-document-symbol', event = 'InsertEnter'},
{'hrsh7th/cmp-calc', event = 'InsertEnter'},
{'onsails/lspkind.nvim', event = 'InsertEnter'
},
{'hrsh7th/vim-vsnip', event = 'InsertEnter'},
{'hrsh7th/vim-vsnip-integ', event = 'InsertEnter'},
{'rafamadriz/friendly-snippets', event = 'InsertEnter'},

    {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
-- or                              , branch = '0.1.1',
      dependencies = { 'nvim-lua/plenary.nvim' }
    },


  {'ziontee113/SelectEase', ft = {'*'}},
  {'ambv/black', cmd = {'Black'}},
  {'prettier/vim-prettier', ft = {'javascript', 'typescript', 'css', 'html', 'json', 'yaml', 'markdown'}},
  {'MDeiml/tree-sitter-markdown', ft = {'markdown'}},
  {'vim-jp/vimdoc-ja', ft = {'help'}},
  {'neovim/nvim-lspconfig', event = {'BufRead', 'BufNewFile'}},
{
    "williamboman/mason.nvim",
    build = ":MasonUpdate" -- :MasonUpdate updates registry contents
},



  {'williamboman/mason-lspconfig', event = {'BufRead', 'BufNewFile'}},


  {'jose-elias-alvarez/null-ls.nvim', event = {'BufRead', 'BufNewFile'}},
  --{'jayp0521/mason-null-ls.nvim', event = {'BufRead', 'BufNewFile'}},
  {'jay-babu/mason-null-ls.nvim', event = {'BufRead', 'BufNewFile'}},
  {'stevearc/dressing.nvim', event = {'BufRead', 'BufNewFile'}},
  {'glepnir/lspsaga.nvim', 
    event = "LspAttach",
    config = function()
        require("lspsaga").setup({

  symbol_in_winbar = {
    enable = false,
    separator = " ",
    ignore_patterns={},
    hide_keyword = true,
    show_file = true,
    folder_level = 2,
    respect_root = false,
    color_mode = true,
  },

    ui = {
    -- This option only works in Neovim 0.9
    title = true,
    -- Border type can be single, double, rounded, solid, shadow.
    border = "single",
    winblend = 0,
    expand = "",
    collapse = "",
    code_action = "💡",
    incoming = " ",
    outgoing = " ",
    hover = ' ',
    kind = {},



    
  },

        })
    end,
    dependencies = {
      {"nvim-tree/nvim-web-devicons"},
      --Please make sure you install markdown and markdown_inline parser
      {"nvim-treesitter/nvim-treesitter"}
    },
  },

  --{'tami5/lspsaga.nvim', event = {'BufRead', 'BufNewFile'}},


  {'onsails/lspkind-nvim', event = {'InsertEnter'}},
  {'j-hui/fidget.nvim', event = {'BufRead', 'BufNewFile'}},
  {'hrsh7th/nvim-cmp', event = {'InsertEnter'}},
  {'hrsh7th/cmp-nvim-lsp', after = {'nvim-cmp'}},
  {'hrsh7th/cmp-buffer', after = {'nvim-cmp'}},
  {'hrsh7th/cmp-path', after = {'nvim-cmp'}},
  {'hrsh7th/cmp-cmdline', after = {'nvim-cmp'}},
  {'hrsh7th/cmp-vsnip', after = {'nvim-cmp'}},
  {'hrsh7th/vim-vsnip', ft = {'*'}},
 {
  'lambdalisue/fern.vim',
  config = function()
    vim.cmd([[
      augroup my-fern
        autocmd!
        autocmd FileType fern lua vim.g['fern#renderer'] = 'nerdfont'
      augroup END
    ]])
  end,
  event = 'VimEnter',
  defer = true,
  requires = {
    'lambdalisue/fern-renderer-nerdfont.vim',
  },
  after = {
    'fern.vim',
  },
  config = function()
    vim.cmd([[
      autocmd FileType fern lua vim.g['fern#renderer'] = 'nerdfont'
    ]])

  end,
  cmd = {'Fern'},
  defer = true
},



   {'lambdalisue/fern-git-status.vim', after = {'fern.vim'}},

  {'nvim-lua/plenary.nvim', module = {'plenary'}},
  -- {'nvim-lua/telescope.nvim', cmd = {'Telescope'}},
  {'nvim-treesitter/nvim-treesitter', event = {'BufRead', 'BufNewFile'}},
  {'sainnhe/gruvbox-material', event = {'VimEnter'}},
  {'bluz71/vim-nightfly-guicolors', event = {'VimEnter'}},
  {'hrsh7th/cmp-copilot', after = {'nvim-cmp'}},
  {'zbirenbaum/copilot.lua', after = {'cmp-copilot'}},
  {'zbirenbaum/copilot-cmp', after = {'cmp-copilot'}},
  {'github/copilot.vim', after = {'cmp-copilot'}},
  {'ray-x/cmp-treesitter', after = {'nvim-cmp'}},
  {'rafamadriz/friendly-snippets', event = {'InsertEnter'}},

  -- " jsx syntax
  {'pangloss/vim-javascript', ft = {'javascript', 'javascript.jsx'}},
  {'mxw/vim-jsx', ft = {'javascript', 'javascript.jsx'}},
  {'maxmellon/vim-jsx-pretty', ft = {'javascript', 'javascript.jsx'}},
  'editorconfig/editorconfig-vim',
  {
    'nvim-lualine/lualine.nvim',
    --dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup(
      {
        options = {
          globalstatus = true,
          theme = "nightfly"
        }
      }
      )
    end
  },

 -- {'kyazdani42/nvim-web-devicons', module = {'nvim-web-devicons'}},
  {'romgrk/barbar.nvim', event = {'VimEnter'}},

  {'windwp/nvim-ts-autotag', ft = {'html', 'xml', 'javascript', 'javascript.jsx'}},
  {'windwp/nvim-autopairs', event = {'InsertEnter'}},

-- {'lambdalisue/fern-renderer-nerdfont.vim', after = {'fern.vim'}},

  {
  'lambdalisue/nerdfont.vim',
  config = function()
    vim.g.nerdfont_exclude_symbols = {'TeX'}
  end,
  event = 'VimEnter',
  defer = true
},

--{
--   'skywind3000/glyph-palette.vim',
--   config = function()
--     vim.cmd([[
--       augroup my-glyph-palette
--         autocmd!
--         autocmd FileType fern call glyph_palette#apply()
--         autocmd FileType nerdtree,startify call glyph_palette#apply()
--       augroup END
--     ]])
--   end,
--   defer = true
-- },
-- 


  {'CRAG666/code_runner.nvim', cmd = {'CodeRunner'}, requires = 'nvim-lua/plenary.nvim'},

  {'tyru/caw.vim', cmd = {'Caw'}},
  {'mattesgroeger/vim-bookmarks', ft = {'*'}},
  {'gko/vim-coloresque', ft = {'css', 'html', 'javascript', 'javascript.jsx'}},
  {'andrewradev/tagalong.vim', ft = {'html', 'xml'}},
  {'soramugi/auto-ctags.vim', event = {'BufRead', 'BufNewFile'}},
  {'majutsushi/tagbar', cmd = {'TagbarToggle'}},
  {'turbio/bracey.vim', cmd = {'Bracey'}},
  {'tpope/vim-fugitive', ft = {'gitcommit', 'gitrebase'}},
  {'tpope/vim-rhubarb', ft = {'gitcommit', 'gitrebase'}},

{
  "mattn/emmet-vim",
  config = function () -- load stuff before the plugin is loaded
    vim.g.user_emmet_leader_key = '<c-m>'
    vim.g.user_emmet_expandabbr_key = '<Tab>'
    vim.g.user_emmet_settings = {
      indent_blockelement = 1,
    }
  end
},


  {'alvan/vim-closetag', ft = {'html', 'xml'}},
  {'kylechui/nvim-surround', event = {'InsertEnter'}},
  {'AndrewRadev/linediff.vim', cmd = {'Linediff'}},
  {'unblevable/quick-scope', event = {'BufRead', 'BufNewFile'}},
  {'haya14busa/vim-edgemotion', event = {'BufRead', 'BufNewFile'}},
  {'easymotion/vim-easymotion', event = {'BufRead', 'BufNewFile'}},
  {'simeji/winresizer', cmd = {'WinResizerStartResize'}},
  {'iamcco/coc-tailwindcss', ft = {'css', 'html', 'javascript', 'javascript.jsx'}},
  {'lukas-reineke/indent-blankline.nvim', event = {'BufRead', 'BufNewFile'}},
  {'tpope/vim-repeat', event = {'BufRead', 'BufNewFile'}},
  {'elzr/vim-json', ft = {'json'}},
  {'numtostr/BufOnly.nvim', cmd = {'BufOnly'}},
  {'terryma/vim-expand-region', event = {'BufRead', 'BufNewFile'}},
  {'JoosepAlviste/nvim-ts-context-commentstring', ft = {'*'}},
  {'rust-lang/rust.vim', ft = {'rust'}},


  --{'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build', event = {'BufRead', 'BufNewFile'}},

 {
  "nvim-telescope/telescope-fzf-native.nvim",
  run = "make",
  config = function()
    require('telescope').load_extension('fzf')
  end,
  cmd = {'Telescope'}
},


  {'dimaportenko/telescope-simulators.nvim', event = {'BufRead', 'BufNewFile'}},
  {'nvim-telescope/telescope-frecency.nvim', event = {'BufRead', 'BufNewFile'}},
  {'gbrlsnchs/telescope-lsp-handlers.nvim', event = {'BufRead', 'BufNewFile'}},
  {'kkharji/sqlite.lua', event = {'BufRead', 'BufNewFile'}},
  {'tomtom/tcomment_vim', ft = {'*'}},
  {'lewis6991/gitsigns.nvim', event = {'BufRead', 'BufNewFile'}},
  {'folke/noice.nvim', cmd = {'Noice'}},
  {'MunifTanjim/nui.nvim', event = {'BufRead', 'BufNewFile'}},
  {'rcarriga/nvim-notify', event = {'BufRead', 'BufNewFile'}},
  {'ziontee113/syntax-tree-surfer', ft = {'*'}},
  {'nvim-treesitter/playground', cmd = {'TSPlaygroundToggle'}},
  {'norcalli/nvim-colorizer.lua', event = {'BufRead', 'BufNewFile'}},

{
   "nvim-telescope/telescope-file-browser.nvim",
   dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
},
{
  "aznhe21/actions-preview.nvim",
  config = function()
    vim.keymap.set({ "v", "n" }, "gf", require("actions-preview").code_actions)
    require("actions-preview").setup {
     diff = {
       algorithm = "patience",
       ignore_whitespace = true,
     },
     telescope = require("telescope.themes").get_dropdown { winblend = 10 },
   }
 end,
 event = "BufRead",
},
{'diepm/vim-rest-console', ft = {'rest'}},
  {'mbbill/undotree', cmd = {'UndotreeToggle'}},
  {'james1236/backseat.nvim', event = {'BufRead', 'BufNewFile'}},
{
  "jackMort/ChatGPT.nvim",
    event = "VeryLazy",
    config = function()
      require("chatgpt").setup(
      {
        keymaps = {
          submit = "<C-a>"
        }
      }

        )
    end,
    dependencies = {
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-telescope/telescope.nvim"
    }
},

{
    "dpayne/CodeGPT.nvim",
    dependencies = {
      'nvim-lua/plenary.nvim',
      'MunifTanjim/nui.nvim',
    },
    config = function()
        require("codegpt.config")
    end
},


}
