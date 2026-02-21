local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
-- vim.keymap.set('n', '<leader>ff', function()
--     require('telescope.builtin').find_files({
--         cwd = vim.fn.expand('%:p:h')
--     })
-- end, { desc = "Find files relative to current file" })
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc = 'Telescope find Git files' })
vim.keymap.set('n', '<leader>fg', function()
	builtin.grep_string({search = vim.fn.input("Grep >")});
end)
local opts = {noremap = true, silent = true }
-- Recently opened files
vim.keymap.set("n", "<leader>fh", "<cmd>Telescope oldfiles<cr>", opts)

-- Frecency/MRU (requires telescope-frecency extension)
vim.keymap.set("n", "<leader>fr", "<cmd>Telescope frecency<cr>", opts)

-- Jump to bookmarks (requires bookmark extension or plugin)
vim.keymap.set("n", "<leader>fm", "<cmd>Telescope marks<cr>", opts)

-- Open last session (depends on session management plugin)
vim.keymap.set("n", "<leader>sl", "<cmd>lua require('persistence').load({ last = true })<cr>", opts)

require('telescope').load_extension('project')
vim.api.nvim_set_keymap(
        'n',
        '<C-p>',
        ":lua require'telescope'.extensions.project.project{}<CR>",
        {noremap = true, silent = true}
)
