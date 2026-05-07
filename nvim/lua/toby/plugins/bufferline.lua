return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        require("bufferline").setup({
            options = {
                diagnostics = "nvim_lsp",
                offsets = {
                    {
                        filetype = "NvimTree",
                        text = "File Explorer",
                        separator = true,
                    },
                },
            },
        })

        vim.keymap.set("n", "<Tab>", "<cmd>BufferLineCycleNext<CR>")
        vim.keymap.set("n", "<S-Tab>", "<cmd>BufferLineCyclePrev<CR>")
        vim.keymap.set("n", "<leader>x", "<cmd>bdelete<CR>")
    end,
}
