local autocmd = vim.api.nvim_create_autocmd

-- highlight on yank
autocmd('TextYankPost', {
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
      vim.hl.on_yank()
  end,
})

-- remove trailing whitespaces on save
autocmd("BufWritePre", {
    pattern = "*.md",
    callback = function()
        local save_cursor = vim.fn.getpos(".")
        vim.cmd([[%s/\s\+$//e]])
        vim.fn.setpos(".", save_cursor)
    end,
})

-- spellcheck in .md
autocmd("FileType", {
    pattern = "markdown",
    command = "setlocal spell wrap",
})

-- change local directory to file's parent
autocmd({ "BufEnter", "BufWinEnter" }, {
  callback = function()
    local file = vim.api.nvim_buf_get_name(0)
    if file ~= "" and vim.fn.filereadable(file) == 1 then
      local dir = vim.fn.fnamemodify(file, ":h")
      vim.cmd("lcd " .. vim.fn.fnameescape(dir))
    end
  end,
})

-- automatically split help buffers to the right
autocmd("FileType", {
    pattern = "help",
    command = "wincmd L",
})
