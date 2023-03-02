local function map(mode, lhs, rhs, opts)
local options = {noremap = true}
    if opts then options = vim.tbl_extend('force', options, opts) end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end
-- <Tab> to navigate the completion menu
map("i", "<C-u>", "<c-o>o")         -- adds new line below (insert)
map("i", "<C-d>", "<c-o>O")         -- adds new line above (insert):
