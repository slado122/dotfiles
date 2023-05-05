vim.keymap.set("n", "<leader>tn", ":TestNearest<CR>")
vim.cmd [[
    let test#strategy = "neovim"
    let test#python#djangotest#options = "--keepdb"
    let test#rust#cargotest#options = "-- --include-ignored --nocapture"
]]

