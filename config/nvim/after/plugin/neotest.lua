local neotest = require("neotest")

neotest.setup({
    adapters = {
        require('rustaceanvim.neotest'),
        require("neotest-python")({
            args = { "-vv" },
        }),
    },
})

vim.keymap.set('n', '<leader>tn', function()
    neotest.run.run()
end, {})
vim.keymap.set('n', '<leader>ta', function()
    neotest.run.attach()
end, {})
vim.keymap.set('n', '<leader>ts', function()
    neotest.run.stop()
end, {})
vim.keymap.set('n', '<leader>tf', function()
    neotest.run.run(vim.fn.expand("%"))
end, {})
