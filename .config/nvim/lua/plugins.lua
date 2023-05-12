vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "nightfly",
  callback = function()

vim.g.nightflyCursorColor = true
vim.api.nvim_set_hl(0, "ColorColumn", { fg = "#ff0000", bg = "#000000" })

    vim.api.nvim_set_hl(0, "Function", { fg = "#82aaff", bold = true })
    vim.api.nvim_set_hl(0, 'DiagnosticSignError', {bg='#00283d', fg='#ffc200'})
    -- vim.api.nvim_set_hl(0, 'DiagnosticSignWarn', {bg='#00283d', fg='#ffc200'})
    -- vim.api.nvim_set_hl(0, 'DiagnosticSignHint', {bg='#00283d', fg='#ffc200'})
    -- vim.api.nvim_set_hl(0, 'DiagnosticSignInfo', {bg='#00283d', fg='#ffc200'})

    vim.api.nvim_set_hl(0, 'DiagnosticError', {bg='#00283d', fg='#ffc200'})
    -- vim.api.nvim_set_hl(0, 'DiagnosticWarn', {bg='#00283d', fg='#fccc97'})
    -- vim.api.nvim_set_hl(0, 'DiagnosticInfo', {bg='#00283d', fg='#fccc97'})
    -- vim.api.nvim_set_hl(0, 'DiagnosticHint', {bg='#00283d', fg='#fccc97'})

    -- vim.api.nvim_set_hl(0, 'DiagnosticOk', {bg='#00283d', fg='#fccc97'})
    --
    -- 警告文の文字の色
    vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextError', {bg='#00283d', fg='#fccc97'})
    vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextError', {bg='#00283d', fg='#83aaff'})
    -- vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextWarn', {bg='#00283d', fg='#83aaff'})
    -- vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextInfo', {bg='#00283d', fg='#fccc97'})
    -- vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextHint', {bg='#00283d', fg='#fccc97'})

    -- vim.api.nvim_set_hl(0, 'DiagnosticFloatingError', {bg='#00283d', fg='#ffc0cb'})
    -- vim.api.nvim_set_hl(0, 'DiagnosticFloatingWarn', {bg='#00283d', fg='#fccc97'})
    -- vim.api.nvim_set_hl(0, 'DiagnosticFloatingHint', {bg='#00283d', fg='#fccc97'})
    -- vim.api.nvim_set_hl(0, 'DiagnosticFloatingInfo', {bg='#00283d', fg='#fccc97'})

    -- vim.api.nvim_set_hl(0, 'DiagnosticUnderlineError', {bg='#00283d', fg='#fccc97'})
    -- vim.api.nvim_set_hl(0, 'DiagnosticUnderlineWarn', {bg='#00283d', fg='#fccc97'})
    -- vim.api.nvim_set_hl(0, 'DiagnosticUnderlineInfo', {bg='#00283d', fg='#fccc97'})
    -- vim.api.nvim_set_hl(0, 'DiagnosticUnderlineHint', {bg='#00283d', fg='#fccc97'})

    -- vim.api.nvim_set_hl(0, 'DiagnosticDeprecated', {bg='#00283d', fg='#fccc97'})
    -- vim.api.nvim_set_hl(0, 'DiagnosticUnnecessary', {bg='#00283d', fg='#fccc97'})
    --
    vim.api.nvim_set_hl(0, 'RenameNormal', {fg='#fccc97'})
    vim.api.nvim_set_hl(0, 'DiagnosticText', { fg='#fccc97'})
    -- vim.api.nvim_set_hl(0, 'DiagnosticText', { fg='#ffc200'})
    --
    --
    --
  end,
  group = custom_highlight,
})

return {
  { -- colorscheme
    'bluz71/vim-nightfly-guicolors',
    name = "nightfly", lazy = false, priority = 1000,
    config = function()
      vim.cmd([[colorscheme nightfly]])
vim.g.nightflyCursorColor = true

    ---- Lua initialization file
    vim.g.nightflyWinSeparator = 2
    vim.g.nightflyUnderlineMatchParen = true
    vim.api.nvim_set_hl(0, "Function", { fg = "#82aaff", bold = true })

    vim.api.nvim_create_autocmd("ColorScheme", {
      pattern = "nightfly",
      callback = function()
        vim.api.nvim_set_hl(0, "Function", { fg = "#82aaff", bold = true })
        -- カーソルの色を変えたい
        vim.g.nightflyCursorColor = true
        vim.api.nvim_set_hl(0, "ColorColumn", { fg = "#ff0000", bg = "#000000" })

      end,
      group = custom_highlight,
    })
  end

  
  },

  -- color
 {'neanias/everforest-nvim' } ,
  { "catppuccin/nvim", name = "catppuccin" },
  {'mhartington/oceanic-next'},
  { 'shaunsingh/nord.nvim'},
  { 'rebelot/kanagawa.nvim'},
  { 'rose-pine/neovim', name = 'rose-pine' },
  {'Mofiqul/dracula.nvim'},
  {'folke/tokyonight.nvim'},
  {'EdenEast/nightfox.nvim'},
  { "bluz71/vim-moonfly-colors", name = "moonfly", lazy = false, priority = 1000 },
  {"savq/melange-nvim"},
  {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        require 'nordic' .load()
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


  {'ambv/black', cmd = {'Black'}},
--   {'prettier/vim-prettier', ft = {'javascript', 'typescript', 'css', 'html', 'json', 'yaml', 'markdown'}},
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


  diagnostic = {
    on_insert = false,
    on_insert_follow = false,
    insert_winblend = 0,
    show_code_action = true,
    show_source = true,
    jump_num_shortcut = true,
    --1 is max
    max_width = 0.7,
    custom_fix = nil,
    custom_msg = nil,
    text_hl_follow = false,
    border_follow = true,
    keys = {
      exec_action = "o",
      quit = "q",
      go_action = "g"
    },
  },

  code_action = {
    num_shortcut = true,
    show_server_name = false,
    extend_gitsigns = true,
    keys = {
      -- string | table type
      quit = "q",
      exec = "<CR>",
    },
  },


  symbol_in_winbar = {
    enable = true,
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

  lightbulb = {
    enable = false,
    enable_in_insert = true,
    sign = true,
    sign_priority = 40,
    virtual_text = true,
  }, 

  rename = {
    quit = "<C-c>",
    exec = "<C-a>",
    mark = "x",
    confirm = "<C-a>",
    in_select = false,
  },


        })
    end,
    dependencies = {
      {"nvim-tree/nvim-web-devicons"},
      --Please make sure you install markdown and markdown_inline parser
     -- {"nvim-treesitter/nvim-treesitter"}
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
   {'hrsh7th/vim-vsnip', event = 'InsertEnter'},

  {'nvim-lua/plenary.nvim', module = {'plenary'}},
  -- {'nvim-lua/telescope.nvim', cmd = {'Telescope'}},
  {
    'nvim-treesitter/nvim-treesitter',
    dependencies = {
      'JoosepAlviste/nvim-ts-context-commentstring',
    },
  },

  {'sainnhe/gruvbox-material', event = {'VimEnter'}},
  -- {'bluz71/vim-nightfly-guicolors', event = {'VimEnter'}},
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
          theme = "nightfly",
          component_separators = { left = '', right = ''},
    section_separators = { left = '', right = ''},

        },

sections = {
        lualine_a = {'mode'},
        lualine_b = {'branch', 'diff', 'diagnostics'},
        lualine_c = {'filename'},
        lualine_x = {'encoding', 'fileformat', 'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
  

        

 -- sections = {
--     lualine_a = { 'mode' },
--     lualine_b = { 'branch', 'diff', 'diagnostics' },
--     lualine_c = {},
--     lualine_x = { 'encoding', 'fileformat', 'filetype' },
--     lualine_y = { 'progress' },
--     lualine_z = { 'location' },
--   },
--   tabline = {
--     lualine_a = { 'buffers' },
--     lualine_b = {},
--     lualine_c = {},
--     lualine_x = {},
--     lualine_y = {},
--   --  lualine_z = { 'tabs' },
  --},



      }
      )
    end
  },

 -- {'kyazdani42/nvim-web-devicons', module = {'nvim-web-devicons'}},

  {'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {

      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },



  {'windwp/nvim-ts-autotag', ft = {'html', 'xml', 'javascript', 'javascript.jsx','typescript','typescriptreact'}},
  {'windwp/nvim-autopairs', event = {'InsertEnter'}},

  {
  'lambdalisue/nerdfont.vim',
  config = function()
    vim.g.nerdfont_exclude_symbols = {'TeX'}
  end,
  event = 'VimEnter',
  defer = true
},

  {'CRAG666/code_runner.nvim', cmd = {'CodeRunner'}, requires = 'nvim-lua/plenary.nvim'},

  {'mattesgroeger/vim-bookmarks', event = 'InsertEnter'},
  {'andrewradev/tagalong.vim', ft = {'html', 'xml'}},
  {'soramugi/auto-ctags.vim', event = {'BufRead', 'BufNewFile'}},
  {'majutsushi/tagbar', cmd = {'TagbarToggle'}},
  {'turbio/bracey.vim', cmd = {'Bracey'}},
 -- {'tpope/vim-fugitive', ft = {'gitcommit', 'gitrebase'}},
  -- {'tpope/vim-rhubarb', ft = {'gitcommit', 'gitrebase'}},

  {'alvan/vim-closetag', ft = {'html', 'xml'}},
  {
  "kylechui/nvim-surround",
  version = "*", -- Use for stability; omit to use `main` branch for the latest features
  event = "VeryLazy",
  config = function()
      require("nvim-surround").setup({
          -- Configuration here, or leave empty to use defaults
      })
  end
  },

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
 -- {'tomtom/tcomment_vim', event = 'InsertEnter'},

   { "numToStr/Comment.nvim",
    lazy = false,
    config = function()
      require('Comment').setup()
    end,
  },

{
  'lewis6991/gitsigns.nvim',
  config = function()
    require('gitsigns').setup()
  end
},

  {'folke/noice.nvim', cmd = {'Noice'}},
  {'MunifTanjim/nui.nvim', event = {'BufRead', 'BufNewFile'}},
  {'rcarriga/nvim-notify', event = {'BufRead', 'BufNewFile'}},
  {'ziontee113/syntax-tree-surfer', event = 'InsertEnter'},
  {'nvim-treesitter/playground', cmd = {'TSPlaygroundToggle'}},

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
          submit = "<C-t>"
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
  {
    "folke/which-key.nvim",
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
      require("which-key").setup({
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      })
    end,
  },

 {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    },
      "MunifTanjim/nui.nvim",

       config = function ()
       require("neo-tree").setup({
          window = {
            position = "left",
            width = 30,
          },
        })
    end,
  },

 {
"iamcco/markdown-preview.nvim",
ft = "markdown",
build = function()
  vim.fn["mkdp#util#install"]()
end,
},

  { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' },

  {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "theHamsta/nvim-dap-virtual-text",
    "mxsdev/nvim-dap-vscode-js",
    {
      "microsoft/vscode-js-debug",
      build = "npm install --legacy-peer-deps && npm run compile",
    },
  },
  lazy = true,
  config = function()
    require("plugins.configs.dap")
  end,
},

 {'nvim-tree/nvim-web-devicons'},

{
   'windwp/nvim-spectre',
   requires = { 'nvim-lua/plenary.nvim' },
   config = function()
      require('spectre').setup({})
   end
},
-- { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' },
{
      "TimUntersberger/neogit",
      config = function()
        require("neogit").setup({
          integrations = {
            diffview = true,
          },
        })
      end,
      requires = {
        "sindrets/diffview.nvim",
        "nvim-lua/plenary.nvim",
      },
},

 {'pechorin/any-jump.vim'},
 {'yamatsum/nvim-cursorline',},
 {'dinhhuy258/git.nvim'},
 {'yamatsum/nvim-cursorline'},
 -- {'aduros/ai.vim'},

 {
  "mattn/emmet-vim",lazy = false,
  config = function () -- load stuff before the plugin is loaded
    vim.g.user_emmet_leader_key = '<Tab>'
    vim.g.user_emmet_expandabbr_key = '<Tab>'
    vim.g.user_emmet_settings = {
      indent_blockelement = 1,
    }
  end
},

{
"ziontee113/SelectEase",
config = function()

local select_ease = require("SelectEase")

-- For more language support check the `Queries` section
local lua_query = [[
    ;; query
    ((identifier) @cap)
    ("string_content" @cap)
    ((true) @cap)
    ((false) @cap)
]]
local python_query = [[
    ;; query
    ((identifier) @cap)
    ((string) @cap)
]]

local php_query = [[
    ;; query
    ((string_value) @cap)
    ((integer) @cap)
]]

local tsx_query = [[
;; query
   ((identifier) @cap)
   ((string_fragment) @cap)
   ((property_identifier) @cap)
   ((number) @cap)
]]

local js_query = [[
;; query
   ((string_fragment) @cap)
]]

local html_query = [[
;; query
   ((tag_name) @cap)
   ((text) @cap)
   ((attribute_value) @cap)
]]

local json_query = [[
;; query
   ((string_content) @cap)
]]

local go_query = [[
;; query
((selector_expression) @cap) ; Method call
((field_identifier) @cap) ; Method names in interface

; Identifiers
((identifier) @cap)
((expression_list) @cap) ; pseudo Identifier
((int_literal) @cap)
((interpreted_string_literal) @cap)

; Types
((type_identifier) @cap)
((pointer_type) @cap)
((slice_type) @cap)

; Keywords
((true) @cap)
((false) @cap)
((nil) @cap)
]]

vim.keymap.set({ "n", "s", "i" }, "<C-u>", function()
    select_ease.select_node({ queries = queries, direction = "previous" })
end, {})
vim.keymap.set({ "n", "s", "i" }, "<C-d>", function()
    select_ease.select_node({ queries = queries, direction = "next" })
end, {})


end,
},

  -- {'ziontee113/SelectEase', fevent = 'InsertEnter'},

  {"tpope/vim-fugitive", fevent = 'InsertEnter'},

 {
    "Bryley/neoai.nvim",
    dependencies = {
        "MunifTanjim/nui.nvim",
    },
    cmd = {
        "NeoAI",
        "NeoAIOpen",
        "NeoAIClose",
        "NeoAIToggle",
        "NeoAIContext",
        "NeoAIContextOpen",
        "NeoAIContextClose",
        "NeoAIInject",
        "NeoAIInjectCode",
        "NeoAIInjectContext",
        "NeoAIInjectContextCode",
    },
    keys = {
        -- { "<leader>as", desc = "summarize text" },
        { "<leader>as", desc = " in japanese" },
        { "<leader>ag", desc = "generate git message" },
    },
    config = function()
        require("neoai").setup()
    end,
  },

  {'madox2/vim-ai', fevent = 'InsertEnter'},
  {'MunifTanjim/prettier.nvim', lazy = false},

  { 'simeji/winresizer',lazy = false },
  {'brenoprata10/nvim-highlight-colors',fevent = 'InsertEnter'},

{
"roobert/tailwindcss-colorizer-cmp.nvim",
-- optionally, override the default options:
config = function()
  require("tailwindcss-colorizer-cmp").setup({
    color_square_width = 2,
  })
end
},


}
