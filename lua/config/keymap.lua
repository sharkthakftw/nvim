vim.g.mapleader = " "
vim.g.maplocalleader = " "
local map = vim.keymap.set

map("n", "-", "<cmd>Oil --float<CR>", { desc = "Open parent directory" }) -- oil
map("n", "_", "<cmd>Dashboard<CR>")                                       -- dashboard

-- explorer
map("n", "<leader>sE", ":Telescope file_browser<CR>", { desc = "Open Explorer" })
map("n", "<leader>se", function()
    require("telescope").extensions.file_browser.file_browser({
        path = "%:p:h", cwd = vim.fn.expand("%:p:h")
    })
end, { desc = "File Browser (current file dir)" })

-- toggle relative and absolute line numbers
map("n", "<leader>N", function()
    if vim.wo.relativenumber then
        vim.wo.relativenumber = false
        vim.wo.number = true
    else
        vim.wo.relativenumber = true
    end
end, { desc = "toggle relativenumber" })

-- barbar
map("n", "<A-h>", "<cmd>bprev<CR>")
map("n", "<A-l>", "<cmd>bnext<CR>")
map("n", "<A-c>", "<cmd>BufferClose<CR>")
map("n", "<A-C>", "<cmd>BufferRestore<CR>")
map('n', '<A-H>', '<cmd>BufferMovePrevious<CR>')
map('n', '<A-L>', '<cmd>BufferMoveNext<CR>')
map('n', '<A-p>', '<cmd>BufferPick<CR>')
map('n', '<A-P>', '<cmd>BufferPickDelete<CR>')

map('n', '<A-1>', '<cmd>BufferGoto 1<CR>')
map('n', '<A-2>', '<cmd>BufferGoto 2<CR>')
map('n', '<A-3>', '<cmd>BufferGoto 3<CR>')
map('n', '<A-4>', '<cmd>BufferGoto 4<CR>')
map('n', '<A-5>', '<cmd>BufferGoto 5<CR>')
map('n', '<A-6>', '<cmd>BufferGoto 6<CR>')
map('n', '<A-7>', '<cmd>BufferGoto 7<CR>')
map('n', '<A-8>', '<cmd>BufferGoto 8<CR>')
map('n', '<A-9>', '<cmd>BufferGoto 9<CR>')
map('n', '<A-0>', '<cmd>BufferLast<CR>')

map('n', '<leader>bb', '<Cmd>BufferOrderByBufferNumber<CR>', { desc = "Sort Buffers by Number" })
map('n', '<leader>bn', '<Cmd>BufferOrderByName<CR>', { desc = "Sort Buffers by Name" })
map('n', '<leader>bl', '<Cmd>BufferOrderByLanguage<CR>', { desc = "Sort Buffers by Language" })

-- switch windows with CTRL+<hjkl>
map("n", "<C-h>", "<C-w>h")
map("n", "<C-l>", "<C-w>l")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")

-- move windows with CTRL+SHIFT+<hjkl>
map("n", "<C-S-h>", "<C-w>H")
map("n", "<C-S-l>", "<C-w>L")
map("n", "<C-S-j>", "<C-w>J")
map("n", "<C-S-k>", "<C-w>K")

-- telescope keymaps
map("n", "<leader>sf", ":Telescope find_files<CR>", { desc = "[S]earch [F]iles" })
map("n", "<leader>sg", ":Telescope live_grep<CR>", { desc = "[S]earch by [G]rep" })
map("n", "<leader>sb", ":Telescope buffers<CR>", { desc = "[S]earch [B]uffers" })
map("n", "<leader>sh", ":Telescope help_tags<CR>", { desc = "[S]earch [H]elp Tags" })
map("n", "<leader>sr", ":Telescope oldfiles<CR>", { desc = "[S]earch [R]ecent" })
map("n", "<leader>sw", ":Telescope grep_string<CR>", { desc = "[S]earch Current [W]ord" })

-- obsidian keymaps
map("n", "<leader>oo", ":ObsidianQuickSwitch<CR>", { desc = "Obsidian Quick Switch" })
map("n", "<leader>of", ":ObsidianFollowLink<CR>", { desc = "Obsidian open link" })
map("n", "<leader>os", ":ObsidianSearch<CR>", { desc = "Obsidian search" })
map("n", "<leader>ol", ":ObsidianLinks<CR>", { desc = "Obsidian links in current buffer" })
map("n", "<leader>opi", ":ObsidianPasteImg<CR>", { desc = "Obsidian paste image" })

-- lazygit
map("n", "<leader>lg", "<cmd>LazyGit<CR>", { desc = "lazygit" })
-- render-markdown
map("n", "<leader>rt", "<cmd>RenderMarkdown buf_toggle<CR>")
map("n", "<leader>rp", "<cmd>RenderMarkdown preview<CR>")

-- useful maps
map("n", "<leader>w", "<cmd>update<CR>")
map("n", "<leader>q", "<cmd>q<CR>")
map({ "n", "v" }, "<leader>n", ":norm")
map("n", "<leader>W", ":set wrap!<CR>", { desc = "toggle wrap" })
map("n", "<leader>S", ":%s/")
map("n", "<leader>R", ":so %<CR>")                             -- reload neovim config
map("n", "<Esc>", "<cmd>noh<CR>")                              -- clear search highlights
map('n', '<leader>vs', '<cmd>vsplit<CR> <cmd>bnext<CR>')       -- ver split + open next buffer
map("n", "<leader>f", vim.lsp.buf.format, { desc = "format" }) -- format

map("n", "H", "^")
map("n", "L", "g_")

map("n", "<C-u>", "<C-u>zz")
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-i>", "<C-i>zz")
map("n", "<C-o>", "<C-o>zz")
