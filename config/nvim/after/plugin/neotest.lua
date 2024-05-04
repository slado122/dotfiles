local neotest = require("neotest")

neotest.setup({
    adapters = {
        require("neotest-python")({}),
        require("neotest-rust") {
            args = { "--no-capture" },
        }
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
