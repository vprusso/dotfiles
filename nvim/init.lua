-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- Why the fuck would I ever want to set a conceallevel higher than 0!?
vim.opt.conceallevel = 0


return {
    {
        "neovim/nvim-lspconfig",
        ---@class PluginLspOpts
        opts = function(_, opts)
            opts.autoformat = false
        end,
    },
}
