-- encoding

--元の設定
-- vim.bo.buftype = "nofile"
-- vim.o.compatible = false

-- Set buftype to "nofile"

 vim.g.vsnip_snippet_dir = vim.fn.stdpath("config") .. "/snippets/"

-- set options
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.updatetime = 100
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 2
vim.opt.hidden = true
vim.opt.pumblend = 10
vim.opt.ignorecase = true
vim.opt.swapfile = false --スワップファイルを生成しない
vim.opt.wrap = true --端までコードが届いた際に折り返す
vim.opt.winblend = 5 --フロートウィンドウなどを若干透明に
vim.opt.cursorline = true --カーソル

vim.opt.ambiwidth = "single"
-- vim.cmd('autocmd FileType * startinsert')
--

--改行でオートインデント
vim.opt.autoindent = true

vim.api.nvim_set_option('clipboard', 'unnamedplus')

      -- Neovim initialization file
vim.g.nightflyCursorColor = true


-- local buf = vim.api.nvim_create_buf(false, true)
-- vim.api.nvim_buf_set_option(buf, 'buftype', '')
-- vim.api.nvim_buf_set_option(buf, 'buftype', 'nofile')


vim.opt.hlsearch = true

vim.cmd('set background=dark')

--カーソルカラー

-- カーソルのフォアグラウンド色とバックグラウンド色を設定します
vim.cmd('hi Cursor guifg=#FF0000 guibg=#FF0000')

-- カラースキームを変更する場合、カーソルの色も変わる可能性があるため、変更後に再度カーソルの色を設定する必要があります
-- vim.cmd('colorscheme gruvbox')
-- vim.cmd('hi Cursor guifg=#00FF00 guibg=#00FF00')
vim.cmd [[
  autocmd ColorScheme * highlight Cursor guifg=#333333 guibg=#33300
]]

-- edit next
-- vim.keymap.set({ 'n', 's','i','v' }, '<c-w>', '<ESC>wviwo<C-g>',opts)
-- vim.keymap.set({ 'n', 's','i','v' }, '<c-w>', '<ESC>viwo<C-g>',opts)
-- 選択
vim.keymap.set({ 'n'}, '<c-h>', '<ESC>viwo<C-g>',opts)
vim.keymap.set({ 'n'}, '<s-h>', '<ESC>viwo<C-g>',opts)



-- vim.keymap.set({ 'n', 's','i','v' }, '<c-b>', '<ESC>bbviwo<C-g>',opts)
-- map prefix
vim.g.mapleader = ' '
vim.keymap.set({ 'n', 'x' }, '<Space>', '<Nop>')
vim.keymap.set({ 'n', 'x' }, '<Plug>(lsp)', '<Nop>')
vim.keymap.set({ 'n', 'x' }, ',', '<Plug>(lsp)')
vim.keymap.set({ 'n', 'x' }, '<Plug>(ff)', '<Nop>')
vim.keymap.set({ 'n', 'x' }, ';', '<Plug>(ff)')

local opts = { noremap = true, silent = true }

--削除キーでyankしない
vim.keymap.set("n", "x", '"_x', opts)
-- vim.keymap.set("n", "d", '"_d', opts)
vim.keymap.set("n", "D", '"_D', opts)
vim.keymap.set("n", "c", '"_c', opts)

--"行頭まで削除"
vim.keymap.set("n", "U", 'd0', opts)

--すべて選択
vim.keymap.set("n", "<C-a>", '<ESC>ggVG', opts)
vim.keymap.set("i", "<C-a>", '<ESC>ggVG', opts)
vim.keymap.set("v", "<C-a>", '<ESC>ggVG', opts)

vim.keymap.set("n", "<C-i>", 'i})', opts)
vim.keymap.set("i", "<C-i>", '})', opts)

vim.keymap.set('n', 'j', 'gj', {noremap = true})
vim.keymap.set('n', 'k', 'gk', {noremap = true})
--"「H」「L」で行頭・行末に移動する

vim.keymap.set('n', '<S-h>', '^', {noremap = true})
vim.keymap.set('n', '<S-l>', '$', {noremap = true})

vim.keymap.set("i", "<C-b>", '<Left>', opts)
vim.keymap.set("i", "<C-f>", '<Right>', opts)
vim.keymap.set("i", "<C-l>", '<Right>', opts)

--"貼り付け先のインデントに合わせてペーストする
vim.keymap.set('n', 'p', ']p', {noremap = true})
vim.keymap.set('n', 'P', ']P', {noremap = true})


vim.keymap.set("n", "<Space><Space>", '', opts)

vim.keymap.set("v", "p", '_xP', opts)
vim.keymap.set('n', '<C-]>', '<Esc><Right>', {noremap = true})

--バッファの切り替え
vim.keymap.set("n", "<C-p>", ':bprev<CR>', opts)
vim.keymap.set("n", "<C-n>", ':bnext<CR>', opts)

-- vim.keymap.set("n", "<C-S>", "<Esc>:set buftype=<cr><Esc>:update<cr>", { noremap = true })
-- vim.keymap.set("i", "<C-S>", "<Esc>:set buftype=<cr><Esc>:update<cr>", { noremap = true })
-- vim.keymap.set("v", "<C-S>", "<Esc>:set buftype=<cr><Esc>:update<cr>", { noremap = true })
-- 
vim.keymap.set("n", "<C-S>", "<Esc>:update<cr>", { noremap = true })
vim.keymap.set("i", "<C-S>", "<Esc>:update<cr>", { noremap = true })
vim.keymap.set("v", "<C-S>", "<Esc>:update<cr>", { noremap = true })

-- vim.keymap.set('n', '<C-s>', '<ESC>:w<CR>',)

--ファイルパス表示 path
vim.keymap.set('n', '<Leader>p', ':echo expand("%:p")<CR>', {noremap = true})
vim.keymap.set('n', '<Leader>cp', ':let @*=expand("%:p")<CR>:echo expand("%:p")<CR>', {noremap = true})
vim.keymap.set("n", ";p", ':BufferPin<CR>', opts)

--" ESCキー２度押しでハイライトを消す
-- vim.keymap.set('n', '<ESC><ESC>', ':nohlsearch<CR>', {silent=true})
--" ESCキー２度押しでハイライトを消すウィンドウも閉じる
-- vim.keymap.set('n', '<ESC>', ':nohlsearch<CR>:only<CR>', {silent=true})
vim.keymap.set('n', '<ESC>', ':nohlsearch<CR>', {silent=true})

vim.keymap.set('n', '<C-l>', ':nohlsearch<CR>', {silent=true})
--  "githubをブラウザで開く"
vim.keymap.set('n', 'go', ':GBrowse<CR>', {silent=true})


--ff ;
vim.keymap.set({ 'n' }, 'K', "<cmd>Lspsaga hover_doc<CR>")
vim.keymap.set({ 'n' }, 'T', "<cmd>Lspsaga term_toggle<CR>")
vim.keymap.set({ 'n' }, '<Plug>(ff)r', "<cmd>Lspsaga rename<CR>")

-- vim.keymap.set({ 'n' }, '<Plug>(ff)f', vim.lsp.buf.fmt = require("tailwindcss-colorizer-cmp").formatter}
-- rmat)

vim.keymap.set('n', '<C-c>', '<C-w>o', opts)

vim.keymap.set('n', ',f', '<C-u><Cmd>Lspsaga lsp_finder<CR>', opts)
-- vim.keymap.set('i', ',k', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
vim.keymap.set('n', '<c-]>', '<Cmd>Lspsaga goto_definition<CR>', opts)
vim.keymap.set('n', ',p', '<Cmd>Lspsaga peek_definition<CR>', opts)
-- vim.keymap.set('n', '<C-]>', '<Cmd>Lspsaga peek_definition<CR>', opts)
vim.keymap.set('n', ',o', '<Cmd>Lspsaga outline<CR>', opts)

--lsp ,
vim.keymap.set({ 'n' }, '<Plug>(lsp)o', '<Cmd>Lspsaga outline<CR>')
vim.keymap.set({ 'n' }, '<Plug>(lsp)e', '<Cmd>Lspsaga show_buf_diagnostics<CR>')
vim.keymap.set({ 'n' }, '<Plug>(lsp)q', '<Cmd>Lspsaga show_line_diagnostics<CR>')
vim.keymap.set({ 'n' }, '<Plug>(lsp)n', '<Cmd>Lspsaga diagnostic_jump_next<CR>')
vim.keymap.set({ 'n' }, '<Plug>(lsp)p', '<Cmd>Lspsaga diagnostic_jump_prev<CR>')

vim.keymap.set({ 'n' }, '<Plug>(lsp)i', '<Cmd>Telescope lsp_implementations<CR>')
vim.keymap.set({ 'n' }, '<Plug>(lsp)t', '<Cmd>Telescope lsp_type_definitions<CR>')
vim.keymap.set({ 'n' }, '<Plug>(lsp)r', '<Cmd>Telescope lsp_references<CR>')
vim.keymap.set({ 'n' }, '<Leader>f', '<Cmd>Telescope find_files<CR>')
vim.keymap.set({ 'n' }, '<Plug>(lsp)s', '<Cmd>Telescope git_status<CR>')
vim.keymap.set({ 'n' }, '<Plug>(lsp)b', '<Cmd>Telescope buffers<CR>')
vim.keymap.set({ 'n' }, '<Plug>(lsp)g', '<Cmd>Telescope live_grep<CR>')
vim.keymap.set({ 'n' }, '<Plug>(lsp)h', '<Cmd>Telescope frecency workspace=CWD<CR>')
vim.keymap.set({ 'n' }, '<Plug>(lsp)l', '<Cmd>Telescope current_buffer_fuzzy_find<CR>')

vim.keymap.set("n", "<leader>te", '<cmd>Telescope<cr>', opts)
vim.keymap.set("n", "<leader>h", '<cmd>Telescope help_tags<cr>', opts)
vim.keymap.set("n", "<leader>si", '<cmd>Telescope simulators run<cr>', opts)
vim.keymap.set("n", "<leader>co", '<cmd>Telescope colorscheme<cr>', opts)
vim.keymap.set("n", "<leader>e", '<cmd>Telescope file_browser<cr>', opts)

-- Telescope Git Pickers
vim.keymap.set("n", "<leader>gf", "<cmd>Telescope git_files<CR>", {})
vim.keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<CR>", {})
vim.keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<CR>", {})
-- undotree
vim.keymap.set("n", "<leader>u", "<cmd>UndotreeToggle<CR>", {})

-- previous / next node that matches query
-- vim.keymap.set({ "n", "s", "i" }, "<C-u>", function()
    -- select_ease.select_node({ queries = queries, direction = "previous" })
-- end, {})
-- vim.keymap.set({ "n", "s", "i" }, "<C-d>", function()
    -- select_ease.select_node({ queries = queries, direction = "next" })
-- end, {})

--neo-tree
  vim.keymap.set({ 'n' }, '<Leader>n', '<Cmd>NeoTreeFocusToggle<CR>')
  vim.keymap.set({ 'n' }, '<Leader>m', '<Cmd>MarkdownPreview<CR>')

-- vim.keymap.set('n', '<leader>r', ':RunCode<CR><CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>r', ':set buftype=<CR>:RunCode<CR><CR>', { noremap = true, silent = false })
-- vim.keymap.set('n', '<leader>q', '<C-w><C-w>:only<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>q', ':only<CR>', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>w', '<C-w>o', { noremap = true, silent = false })

vim.keymap.set("n", "<leader>b", ':Bracey<CR>', opts)
vim.keymap.set("n", "<leader>t", ':<C-u>TagbarToggle<CR>', opts)

vim.keymap.set("n", "<C-j>", '<Plug>(edgemotion-j)', opts)
vim.keymap.set("n", "<C-k>", '<Plug>(edgemotion-k)', opts)
vim.keymap.set("n", "s", '<Plug>(easymotion-overwin-f2)', opts)

vim.keymap.set("n", "<leader>xx", ':BufOnly<CR>:BufOnly<CR>', opts)
--"git"
vim.keymap.set("n", "<leader>ga", ':Git add %:p<CR><CR>', opts)
vim.keymap.set("n", "<leader>gc", ':Git commit<CR><CR>', opts)
vim.keymap.set("n", "<leader>gs", ':Git<CR>', opts)
vim.keymap.set("n", "<leader>gp", ':Git push<CR>', opts)
vim.keymap.set("n", "<leader>gd", ':Gdiffsplit<CR>', opts)
vim.keymap.set("n", "<leader>gl", ':Gclog<CR>', opts)
vim.keymap.set("n", "<leader>gb", ':Git blame<CR>', opts)

vim.keymap.set("n", ";p", ':BufferPin<CR>', opts)

-- コメント
vim.keymap.set('n', '<Leader>c', '<cmd>update_commentstring()<CR>', {noremap = true})

-- ChatGPT
-- https://github.com/jackMort/ChatGPT.nvim
vim.keymap.set('n', '<Leader>tk', '<cmd>:ChatGPT<cr>')
vim.keymap.set('n', '<Leader>tj', '<cmd>:ChatGPTActAs<cr>')
vim.keymap.set('n', '<Leader>tt', '<cmd>:ChatGPTEditWithInstructions<cr>')

-- c-/でコメント
-- vim.keymap.set("n", "<C-_>", function() require('Comment.api').toggle.linewise.current() end, { noremap = true, silent = true })

vim.keymap.set({ "n", "s", "i" }, "<C-_>", "<esc>:lua require('Comment.api').toggle.linewise.current()<cr>", { noremap = true, silent = true })

vim.keymap.set({ "n", "s", "i" }, "<c-/>", "<esc>:lua require('Comment.api').toggle.linewise.current()<cr>", { noremap = true, silent = true })


-- 新しいファイルを保存するときに、ディレクトリが存在しなければ、
-- ユーザーに確認を取ってから新しくディレクトリを作る
vim.cmd([[
  augroup AutoMkdir
    autocmd!
    function! s:auto_mkdir(dir, force)  " {{{
      if !isdirectory(a:dir) && (a:force || input(printf('"%s" does not exist. Create? [y/N]', a:dir)) =~? '^y\%[es]$')
        call mkdir(iconv(a:dir, &encoding, &termencoding), 'p')
      endif
    endfunction
    autocmd BufWritePre * call s:auto_mkdir(expand('<afile>:p:h'), v:cmdbang)
  augroup END
]])




-- 保存時にprettierを実行
vim.cmd([[

function! GoFmt()
cexpr system('gofmt -e -w ' . expand('%'))
edit!
endfunction
command! GoFmt call GoFmt()

augroup my-prettier
autocmd!
  autocmd BufWritePre *.py Black
  autocmd BufWritePost *.go GoFmt
  autocmd BufWritePre *.rs RustFmt
  autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.svelte,*.yaml,*.html,*.vue :Prettier
augroup END
]])

-- vueのファイルタイプをhtmlに

-- vim.cmd([[
-- augroup FileTypeHTML
--   autocmd!
--   autocmd BufNewFile,BufRead *.{html,htm,vue*} set filetype=html
-- augroup END
-- ]])
-- 
-- -- prettierの設定
vim.g['prettier#config#single_quote'] ='true'
vim.g['prettier#config#semi'] ='true'
vim.g['prettier#config#trailingComma'] ='all'

--行末にセミコロン追加
vim.api.nvim_set_keymap('n', ';;', [[:normal A;<cr>]], {noremap = true})
--行末にコロン追加
--vim.api.nvim_set_keymap('n', '::', [[:normal A:<cr>]], {noremap = true})
--行末にカンマ追加
--vim.api.nvim_set_keymap('n', ',,', [[:normal A,<cr>]], {noremap = true})

vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"

-- load lazy.nvim
require('lazy_nvim')

--あと設定する。

--'autocmd Comment * highlight Normal ctermbg=none guibg=none'
-- telescope.nvim
require('telescope').setup({
  defaults = {
    mappings = {
      n = {
        ['<Esc>'] = require('telescope.actions').close,
        ['<C-q>'] = require('telescope.actions').close,
      },
      i = {
        ['<C-q>'] = require('telescope.actions').close,
        ['<Esc>'] = require('telescope.actions').close,
      },
    },
  },

  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
      -- the default case_mode is "smart_case"
    },
    file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
        },
      },
    },

  }

})

-- require('telescope').load_extension('fzf')
-- require("telescope").load_extension ("file_browser")

local lspconfig = require('lspconfig')
local configs = require('lspconfig/configs')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.emmet_ls.setup({
    -- on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { 'html', 'typescriptreact', 'javascriptreact', 'css', 'sass', 'scss', 'less','vue' },
    init_options = {
      html = {
        options = {
          -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
          ["bem.enabled"] = true,
        },
      },
    }
})

-- nvim-lsp
local lsp_config = require('lspconfig')
local mason = require('mason')
local mason_lspconfig = require('mason-lspconfig')
local mason_null_ls = require('mason-null-ls')
local null_ls = require('null-ls')

require('dressing').setup()
require('fidget').setup()

mason.setup()

mason_null_ls.setup({
  ensure_installed = { 'prettier' },
  automatic_installation = true,
})
null_ls.setup({
  sources = { null_ls.builtins.formatting.prettier },
})

mason_lspconfig.setup({
  ensure_installed = {
    'tsserver',
    -- 'eslint',
    'gopls',
    'intelephense',
    'pyright',
    'rust_analyzer',
    -- 'volar',
    'tailwindcss',
  },
  automatic_installation = true,
})
require'lspconfig'.tailwindcss.setup{}

-- mason_lspconfig.setup_handlers({
--   function(server_name)
--     local opts = {
--       capabilities = require('cmp_nvim_lsp').default_capabilities(),
--     }
--
--     lsp_config[server_name].setup(opts)
--   end,
-- })
--

  -- Diagnostics signs and highlights
--   Error:   ✘
--   Warn:   ⚠ 
--   Hint:  
--   Info:   ⁱ

-- Diagnostic symbols in the sign column (gutter)
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

vim.diagnostic.config({
  virtual_text = {
    prefix = '●'
  },
  update_in_insert = true,
  float = {
    source = "always", -- Or "if_many"
  },
})
-- nvim-cmp
local cmp = require('cmp')

local lspkind = require('lspkind')
require('lspkind').init({
-- DEPRECATED (use mode instead): enables text annotations
--
-- default: true
-- with_text = true,

-- defines how annotations are shown
-- default: symbol
-- options: 'text', 'text_symbol', 'symbol_text', 'symbol'
mode = 'symbol_text',

-- default symbol map
-- can be either 'default' (requires nerd-fonts font) or
-- 'codicons' for codicon preset (requires vscode-codicons font)
--
-- default: 'default'
preset = 'codicons',

-- override preset symbols
--
-- default: {}
symbol_map = {
  Text = "",
  Method = "",
  Function = "",
  Constructor = "",
  Field = "ﰠ",
  Variable = "",
  Class = "ﴯ",
  Interface = "",
  Module = "",
  Property = "ﰠ",
  Unit = "塞",
  Value = "",
  Enum = "",
  Keyword = "",
  Snippet = "",
  color = "",
  File = "",
  Reference = "",
  Folder = "",
  EnumMember = "",
  Constant = "",
  Struct = "פּ",
  Event = "",
  Operator = "",
  TypeParameter = "",
  Copilot = "" 
},
})

cmp.setup({
  enabled = true,

    snippet = {
    -- REQUIRED - you must specify a snippet engine
    expand = function(args)
      vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
    end
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-p>"] = cmp.mapping.select_prev_item(),
    ["<C-n>"] = cmp.mapping.select_next_item(),
    ['<C-u>'] = cmp.mapping.scroll_docs(-4),
    ['<C-d>'] = cmp.mapping.scroll_docs(4),
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
  }),
  window = {
    -- completion = cmp.config.window.bordered(),
    -- documentation = cmp.config.window.bordered(),
      documentation = {
        border = 'rounded',
        -- winhighlight = 'Normal:Pmenu,FloatBorder:CmpPmenuBorder,CursorLine:PmenuSel,Search:None,NormalFloat:TelescopeNormal,FloatBorder:TelescopeBorder', 
              -- winhighlight = 'NormalFloat:TelescopeNormal,FloatBorder:TelescopeBorder',
    },
      completion = {
        border = 'rounded',
        -- winhighlight = 'Normal:Pmenu,FloatBorder:CmpPmenuBorder,CursorLine:PmenuSel,Search:None,NormalFloat:TelescopeNormal,FloatBorder:TelescopeBorder', 
        -- winhighlight = 'NormalFloat:TelescopeNormal,FloatBorder:TelescopeBorder',
    },

  },
  sources = cmp.config.sources({

      {name = "copilot", keyword_length = 0, priority = 100},
      {name = "path", keyword_length = 1, priority = 2},
      {name = "nvim_lsp", keyword_length = 2, priority = 2},
      {name = "vsnip", keyword_length = 1, priority = 2},
      {name = "buffer", keyword_length = 1, priority = 2}
  }),
  formatting = {
    fields = { 'abbr', 'kind', 'menu' },
    format = lspkind.cmp_format({
    -- before = require('tailwindcss-colorizer-cmp').formatter,
      mode = 'symbol',
      -- mode = 'text_symbol',
    }),
      -- format = require("tailwindcss-colorizer-cmp").formatter,
  },
})


local select_ease = require("SelectEase")

local queries = {
    lua = lua_query,
    python = python_query,
    typescriptreact = tsx_query,
    typescript = tsx_query,
    react = tsx_query,
    tsx = tsx_query,
    javascript = tsx_query,
    jsx = tsx_query,
    js = tsx_query,
    go = go_query,
    php = php_query,
    html = html_query,
    json = json_query,
}
-- treesitter
require('nvim-treesitter.configs').setup({
  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false, -- Whether the query persists across vim sessions
    keybindings = {
      toggle_query_editor = 'o',
      toggle_hl_groups = 'i',
      toggle_injected_languages = 't',
      toggle_anonymous_nodes = 'a',
      toggle_language_display = 'I',
      focus_language = 'f',
      unfocus_language = 'F',
      update = 'R',
      goto_node = '<cr>',
      show_help = '?',
    },
  },

  ensure_installed = {
    'lua',
    'typescript',
    'vim',
    'tsx',
    "css",
    "html",
    "json",
    "regex",
    "scss",
    "vim",
    "javascript",
    "go",
    "python",
     "markdown_inline",
     "markdown",
    "query",
    "yaml",
    "http",
    "php",
    "vue"
  },
  highlight = {
    enable = true,
  },
      autotag = {
    enable = true,
  },

  context_commentstring = {
    enable = true,
    enable_autocmd = false,
    config = {
      css = '// %s',
      php = { __default = '// %s', __multiline = '/* %s */' },
      -- vue = { __default = '// %s', __multiline = '/* %s */' },
      --
      --
      javascript = {
        __default = '// %s',
        jsx_element = '{/* %s */}',
        jsx_fragment = '{/* %s */}',
        jsx_attribute = '// %s',
        comment = '// %s'
      },
    }
  },
})





  --   require("lspsaga").setup({})
-- require("lspsaga").setup({
--
--   show_outline = {
--     win_width = 50,
--     -- auto_preview = false,
--   },
-- })
--
--

    require('lualine').setup({
      options = {
        globalstatus = true,
                  theme = "nightfly"
      }
    })
vim.g.barbar_auto_setup = false -- disable auto-setup
    require'barbar'.setup (
    {
      icons = {
    pinned = {button = '車', filename = true, separator = {right = ''}},
      },
insert_at_start = false,
  insert_at_end = true,
    animation = true,p

    }
    )



vim.opt.list = true
vim.opt.listchars:append "space:⋅"
vim.opt.listchars:append "eol:↴"


require("indent_blankline").setup {
    space_char_blankline = " ",
    show_current_context = true,
    show_current_context_start = true,
}

require("nvim-autopairs").setup {}
require'nvim-treesitter.configs'.setup {
  autotag = {
    enable = true,Vw
  }
}

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline({ '/', '?' }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })


require('telescope').setup{
  extensions = {
    frecency = {
    }
  },
}
 require('telescope').load_extension('frecency')
 require('telescope').load_extension('lsp_handlers')
require("telescope").load_extension ("file_browser")
-- require('telescope').load_extension('fzf')


require("copilot_cmp").setup {
  method = "getCompletionsCycling",
}

require("copilot").setup({
 suggestion = { enabled = false },
 panel = { enabled = false },
})


-- color
vim.cmd.colorscheme('nightfly')

-- 対応する括弧のハイライト
-- vim.cmd "highlight MatchParen  guifg='#ffd5ac' ctermfg=155 cterm=underline"
--vim.cmd "highlight MatchParen  guifg='#feacff' guibg='#00283d' ctermfg=155 cterm=underline"
vim.cmd "highlight MatchParen  guifg='#ffd5ac' guibg='#5e81ac' "
vim.cmd "hi comment guifg='lightblue'"
vim.cmd "hi NormalFloat guifg='lightblue'"
-- vim.cmd "hi normal guibg=#00283d"

vim.cmd "hi Visual term=reverse cterm=reverse guibg=Grey"

-- vim.cmd "hi BufferCurrent guifg='#efefef' guibg='#00283d'"
-- vim.cmd "hi BufferCurrentSign guibg='#00283d' guifg='#efefef' gui='bold'"
vim.cmd "highlight QuickScopePrimary guifg='#ffd5ac' gui=underline ctermfg=155 cterm=underline"
vim.cmd "highlight QuickScopeSecondary guifg='#feacff' gui=underline ctermfg=81 cterm=underline"

vim.api.nvim_command([[
    augroup ChangeBackgroudColour
        " autocmd colorscheme * :hi normal guibg=#00283d
    augroup END
]])

vim.api.nvim_set_hl(0, "Function", { fg = "#82aaff", bold = true })

vim.cmd [[silent! colorscheme snow]]
--
vim.api.nvim_set_hl(0, 'LspNormal', {bg='#00283d', fg='#5E81AC'})
vim.api.nvim_set_hl(0, 'LspBorder', {bg='#00283d', fg='#5E81AC'})

vim.api.nvim_set_hl(0, 'CallHierarchyNormal', {bg='#00283d', fg='#5E81AC'})
vim.api.nvim_set_hl(0, 'CallHierarchyBorder', {bg='#00283d', fg='#5E81AC'})

vim.api.nvim_set_hl(0, 'DefinitionBorder', {bg='#00283d', fg='#5E81AC'})
vim.api.nvim_set_hl(0, 'DefinitionNormal', {bg='#00283d', fg='#5E81AC'})

vim.api.nvim_set_hl(0, 'DiagnosticBorder', {bg='#00283d', fg='#5E81AC'})
vim.api.nvim_set_hl(0, 'DiagnosticNormal', {bg='#00283d', fg='#5E81AC'})


vim.api.nvim_set_hl(0, 'DiagnosticError', {bg='#00283d', fg='#f5cbcb'})
vim.api.nvim_set_hl(0, 'DiagnosticError', {bg='#00283d', fg='#ffc200'})
vim.api.nvim_set_hl(0, 'DiagnosticError', {bg='#00283d', fg='#FEBA4F'})
vim.api.nvim_set_hl(0, 'DiagnosticError', {bg='#00283d', fg='#FFC0CB'})
vim.api.nvim_set_hl(0, 'DiagnosticError', {bg='#00283d', fg='#ffd700'})
-- vim.api.nvim_set_hl(0, 'DiagnosticError', {bg='#00283d', fg='#fdb86d'})
-- vim.api.nvim_set_hl(0, 'DiagnosticError', {bg='#00283d', fg='#fccc97'})

-- vim.api.nvim_set_hl(0, 'DiagnosticWarn', {bg='#00283d', fg='#fccc97'})
-- vim.api.nvim_set_hl(0, 'DiagnosticInfo', {bg='#00283d', fg='#fccc97'})
-- vim.api.nvim_set_hl(0, 'DiagnosticHint', {bg='#00283d', fg='#fccc97'})
-- vim.api.nvim_set_hl(0, 'DiagnosticOk', {bg='#00283d', fg='#fccc97'})
-- vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextError', {bg='#00283d', fg='#fccc97'})
-- vim.api.nvim_set_hl(0, 'DiagnosticVirtualTextWarn', {bg='#00283d', fg='#fccc97'})

-- vim.api.nvim_set_hl(0, 'DiagnosticFloatingError', {bg='#00283d', fg='#ffc0cb'})
-- vim.api.nvim_set_hl(0, 'DiagnosticFloatingWarn', {bg='#00283d', fg='#fccc97'})
-- vim.api.nvim_set_hl(0, 'DiagnosticUnderlineError', {bg='#00283d', fg='#fccc97'})

vim.api.nvim_set_hl(0, 'DiagnosticSignError', {bg='#00283d', fg='#ffc200'})
vim.api.nvim_set_hl(0, 'DiagnosticError', {bg='#00283d', fg='#ffc200'})

vim.api.nvim_set_hl(0, 'NormalFloat', { fg='#5E81AC'})
 vim.api.nvim_set_hl(0, 'FloatBorder', { fg='#5E81AC'})
vim.api.nvim_set_hl(0, 'TelescopeBorder', {fg='#5e81ac'})

-- vim.api.nvim_set_hl(0, 'BufferCurrent', {fg='#efefef', bg='#00283d'})

--選択バッファ
vim.api.nvim_set_hl(0, 'BufferCurrent', {fg='#efefef', bg='#364D69'})
-- vim.api.nvim_set_hl(0, 'BufferCurrent', {fg='#efefef', bg='#5e81ac'})
-- vim.api.nvim_set_hl(0, 'BufferCurrent', {fg='#efefef', bg='#2260B0'})
-- vim.api.nvim_set_hl(0, 'BufferCurrent', {fg='#efefef', bg='#03417F'})
-- vim.api.nvim_set_hl(0, 'BufferCurrent', {fg='#efefef', bg='#00283D'})
-- vim.api.nvim_set_hl(0, 'BufferCurrentTarget', {fg='#efefef', bg='#5e81ac',})
-- vim.api.nvim_set_hl(0, 'BufferCurrentIndex', {fg='#efefef', bg='#5e81ac'})


-- vim.api.nvim_set_hl(0, 'BufferCurrent', {fg='#efefef', bg='#364D69'})
vim.api.nvim_set_hl(0, 'BufferCurrentTarget', {fg='#efefef', bg='#364D69',})
vim.api.nvim_set_hl(0, 'BufferCurrentIndex', {fg='#efefef', bg='#364D69'})

vim.api.nvim_set_hl(0, 'BufferCurrentMod', {fg='#efefef', bg='#364D69'})
vim.api.nvim_set_hl(0, 'BufferCurrentSign', {fg='#efefef', bg='#364D69'})
-- vim.api.nvim_set_hl(0, 'BufferCurrentMod', {fg='#efefef', bg='#5e81ac'})
-- vim.api.nvim_set_hl(0, 'BufferCurrentSign', {fg='#efefef', bg='#5e81ac'})
 
vim.api.nvim_set_hl(0, 'LspReferenceRead', {fg='#efefef', bg='#00283d'})
vim.api.nvim_set_hl(0, 'LspReferenceText', {fg='#efefef', bg='#00283d'})
vim.api.nvim_set_hl(0, 'LspReferenceWrite', {fg='#efefef', bg='#00283d'})

-- copilot icon color
vim.api.nvim_set_hl(0, 'CmpItemKindCopilot', { fg='#fccc97'})
vim.api.nvim_set_hl(0, 'CmpItemKindCopilot', { fg='#fff3bf'})
-- vim.api.nvim_set_hl(0, 'CmpItemKindCopilot', { fg='lightblue'})
--test メニューの色
vim.api.nvim_set_hl(0, 'Pmenu', {fg='#cccccc', bg='#00283d'})
vim.api.nvim_set_hl(0, 'PmenuSel', {fg='#cccccc', bg='#5E81AC'})

--
--color
  vim.cmd [[
    " Light theme: Compatible with Pmenu (#fff3bf)

  ]]

--keymap
vim.g.copilot_no_tab_map = true
-- vim.api.nvim_set_keymap("i", "<C-k>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
vim.api.nvim_set_keymap("i", "<C-k>", 'copilot#Accept("<CR>")', { silent = true, expr = true, script = true, replace_keycodes = false })


require("neo-tree").setup({
        close_if_last_window = false, -- Close Neo-tree if it is the last window left in the tab
  popup_border_style = "rounded",
  enable_git_status = true,
  enable_diagnostics = true,
  
  window = {
    position = "left",
    width = 30,
  },
})

--next

require('code_runner').setup({

mode ='term',
  -- put here the commands by filetype
    term = {
    position = "bot",
    focus = false,
    -- position = "vert",
    size = 10,
  },


  filetype = {
    java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
    python = "python3 -u",
    php = "php",
    go = "go run",
    typescript = "deno run",
    typescriptreact = "deno run",
    rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt"
  },
})


require("chatgpt").setup(
{

popup_input = {
    prompt = "  ",
    border = {
      highlight = "FloatBorder",
      style = "rounded",
      text = {
        top_align = "center",
        top = " Prompt ",
      },
    },
    win_options = {
      winhighlight = "Normal:Normal,FloatBorder:FloatBorder",
    },
    submit = "<C-a>",
  },

}
)


require('git').setup()

local diagnostic = require("lspsaga.diagnostic")


-- code action
local codeaction = require("lspsaga.codeaction")
vim.keymap.set("n", "<leader>ca", function() codeaction:code_action() end, { silent = true })
vim.keymap.set("v", "<leader>ca", function()
  vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-U>", true, false, true))
  codeaction:range_code_action()
end, { silent = true })


-- vim.keymap.set('n', '<Leader>c', "<cmd>lua require('ts_context_commentstring.internal').update_commentstring()<cr>", {noremap = true})
vim.g['bookmark_auto_close'] = 1
vim.g['tagalong_verbose'] = 1
vim.g['auto_ctags'] = 1
vim.g['bracey_auto_start_browser'] = 1
-- vim.g['sandwich_no_default_key_mappings'] = 1
-- vim.g['operator_sandwich_no_default_key_mappings'] = 1
vim.g['EasyMotion_do_mapping'] = 0
vim.g['EasyMotion_smartcase'] = 1
vim.g['vim_json_syntax_conceal'] = 0

vim.g['tcomment#filetype#guess_javascriptreact '] = 1
vim.g['tcomment#filetype#guess_typescriptreact '] = 1
vim.g['tcomment#filetype#guess_javascript'] = 1
vim.g['tcomment#filetype#guess_typescript '] = 1
vim.g['tcomment#filetype#guess_php '] = 1

vim.g['rustfmt_autosave'] = 1
vim.g['rustfmt_command'] = '$HOME/.cargo/bin/rustfmt'

-- vim.cmd('autocmd BufNewFile,BufRead *.tsx set filetype=typescriptreact')
-- vim.cmd('autocmd BufNewFile,BufRead *.jsx set filetype=javascriptreact')
-- vim.cmd('autocmd BufNewFile,BufRead *.ts set filetype=typescript')
-- vim.cmd('autocmd BufNewFile,BufRead *.js set filetype=js')

vim.api.nvim_set_keymap("n", "<C-t>", ":AI<CR> ", { noremap = true })
vim.api.nvim_set_keymap("v", "<C-t>", ":AI<CR> ", { noremap = true })
vim.api.nvim_set_keymap("i", "<C-t>", "<Esc>:AI<CR>b", { noremap = true })

vim.keymap.set('n', '<Leader>ai', ':AI:<CR>', {noremap = true})

--すべて選択
vim.keymap.set("n", "<C-a>", '<ESC>ggVG', opts)
vim.keymap.set("i", "<C-a>", '<ESC>ggVG', opts)
vim.keymap.set("v", "<C-a>", '<ESC>ggVG', opts)

--ai-vim
-- vim.api.nvim_set_keymap('n', '<leader>a', ':AI<CR>', { noremap =
-- true, silent = true })
 -- vim.api.nvim_set_keymap('x', '<leader>a', ':AI<CR>', { noremap =
-- true, silent = true })

        require("neoai").setup({
            -- Options go here
    -- Below are the default options, feel free to override what you would like changed
    ui = {
        output_popup_text = "NeoAI",
        input_popup_text = "Prompt",
        width = 30,      -- As percentage eg. 30%
        output_popup_height = 80, -- As percentage eg. 80%
    },
    models = {
        {
            name = "openai",
            -- model = "gpt-3.5-turbo"
            model = "gpt-4"
        },
    },
    register_output = {
        ["g"] = function(output)
            return output
        end,
        ["c"] = require("neoai.utils").extract_code_snippets,
    },
    inject = {
        cutoff_width = 75,
    },
    prompts = {
        context_prompt = function(context)
            return "Hey, I'd like to provide some context for future "
                .. "messages. Here is the code/text that I want to refer "
                .. "to in our upcoming conversations:\n\n"
                .. context
        end,
    },
    open_api_key_env = "OPENAI_API_KEY",
    shortcuts = {
        {
            name = "textify",
            key = "<leader>as",
            desc = "日本語で返信してください",
            use_context = false,
            prompt = function ()
                return [[
                    Using the following git diff generate a consise and
                    clear git commit message, with a short title summary
                    that is 75 characters or less:
                ]] 
            end,
            modes = { "n" },
            strip_function = nil,
        },
        {
            name = "gitcommit",
            key = "<leader>ag",
            desc = "generate git commit message",
            use_context = false,
            prompt = function ()
                return [[
                    Using the following git diff generate a consise and
                    clear git commit message, with a short title summary
                    that is 75 characters or less:
                ]] .. vim.fn.system("git diff --cached")
            end,
            modes = { "n" },
            strip_function = nil,
        },
    },


          
        })


--require'lspconfig'.volar.setup{
 -- filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'}
--}

require('nvim-highlight-colors').setup {
  enable_tailwind = true,
}

require('Comment').setup {
pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
}

