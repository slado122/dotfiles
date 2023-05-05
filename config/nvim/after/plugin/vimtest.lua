vim.keymap.set("n", "<leader>tn", ":TestNearest<CR>")
vim.cmd [[
    let test#strategy = "neovim"
    let test#python#djangotest#options = "--keepdb"
]]

