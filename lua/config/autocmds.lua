-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
vim.api.nvim_create_autocmd({ "BufEnter", "BufRead" }, {
    pattern = "*",
    callback = function()
        vim.o.conceallevel = 0
    end,
})

-- Turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
    pattern = "*",
    command = "set nopaste",
})

-- Fix conceallevel for all files
vim.api.nvim_create_autocmd("FileType", {
    pattern = "*",
    callback = function()
        vim.wo.spell = false
        vim.wo.conceallevel = 0
        vim.o.textwidth = 120
    end,
})

-- Disable autoformat for all files
vim.api.nvim_create_autocmd({ "FileType" }, {
    pattern = "*",
    callback = function()
        vim.b.autoformat = false
    end,
})


