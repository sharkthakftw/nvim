local opt = vim.opt
local cmd = vim.cmd
vim.g.have_nerd_font = true

-- my muted camellia palette color scheme
cmd.colorscheme "camellia"

-- ui
opt.number = true
opt.numberwidth = 2
opt.relativenumber = true
opt.cursorline = true
opt.signcolumn = "yes"
opt.termguicolors = true
opt.scrolloff = 8
opt.sidescrolloff = 8
opt.showmode = false
opt.cmdheight = 1
opt.winborder = "rounded"
opt.conceallevel = 2
opt.concealcursor = "nc"

-- tabs & Indentations
opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true
opt.wrap = false
opt.breakindent = true

-- search
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true
opt.inccommand = "split"

-- files
opt.swapfile = false
opt.backup = false
opt.undofile = true
opt.autoread = true

-- mouse and clipboard
opt.mouse = "a"
opt.clipboard = "unnamedplus"

-- behaviour
opt.updatetime = 300
opt.timeoutlen = 1000
opt.splitright = true
opt.splitbelow = true
opt.equalalways = true
opt.confirm = true

-- text Display
opt.showbreak = "↪ "
opt.list = true
opt.listchars = {
    tab = "» ",
    trail = "·",
    nbsp = "␣"
}

vim.api.nvim_set_hl(0, "HighlightUndo", { bg = "#2d3a2d" })
