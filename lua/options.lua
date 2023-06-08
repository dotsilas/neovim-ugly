local opt = vim.opt

opt.number = true
opt.mouse = 'a'
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.wrap = false
opt.breakindent = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.termguicolors = true
opt.showmode = false
opt.cursorline = true -- Enable highlighting of the current line
opt.relativenumber = true -- Relative line numbers
opt.shiftround = true -- Round indent
opt.smartindent = true -- Insert indents automatically
opt.whichwrap="b,s,<,>,h,l,[,]"

-- copie pero no entiendo del todo

opt.autowrite = true -- Enable auto write
-- opt.clipboard = "unnamedplus" -- Sync with system clipboard
opt.completeopt = "menu,menuone,noselect"
opt.conceallevel = 3 -- Hide * markup for bold and italic
opt.confirm = false -- Confirm to save changes before exiting modified buffer
-- opt.formatoptions = "jcroqlnt" -- tcqj
opt.grepformat = "%f:%l:%c:%m"
opt.grepprg = "rg --vimgrep"
opt.inccommand = "nosplit" -- preview incremental substitute
opt.laststatus = 0
-- opt.list = true -- Show some invisible characters (tabs...
opt.pumblend = 10 -- Popup blend
opt.pumheight = 10 -- Maximum number of entries in a popup
opt.scrolloff = 4 -- Lines of context
opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize" }
opt.shortmess:append({ W = true, I = true, c = true })
opt.sidescrolloff = 8 -- Columns of context
opt.signcolumn = "number" -- Always show the signcolumn, otherwise it would shift the text each time
opt.spelllang = { "en" }
opt.splitbelow = true -- Put new windows below current
opt.splitright = true -- Put new windows right of current
opt.timeoutlen = 300
opt.undofile = true
opt.undolevels = 10000
opt.updatetime = 200 -- Save swap file and trigger CursorHold
opt.wildmode = "longest:full,full" -- Command-line completion mode
opt.winminwidth = 5 -- Minimum window width

vim.cmd.colorscheme('gruvbox')
vim.g.markdown_recommended_style = 0

vim.o.background = "dark"
vim.cmd [[
    silent! colorscheme gruvbox
    hi Normal guibg=#191919
    hi SignColumn guibg=#191919
]]

-- Desactiva el relleno de líneas vacías (~) en Neovim
opt.fillchars = { eob = " " }
