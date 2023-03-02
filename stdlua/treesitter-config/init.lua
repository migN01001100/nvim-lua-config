require'nvim-treesitter.configs'.setup {
  ensure_installed = { "lua", "javascript", "html", "typescript", "rust", "css", "php"},
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false, },
}
