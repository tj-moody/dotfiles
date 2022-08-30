require("nvim-tree").setup{
    renderer = {
        add_trailing = true,
        group_empty = true,
        highlight_opened_files = "name",
        indent_markers = {
            enable = true,
            icons = { corner = "│", edge = "│", item = "│", none = " ", },
        },
        icons = {
            git_placement = "signcolumn",
        },
    },
}
local theme = vim.g.colors_name
if theme == "tokyodark" then
    vim.api.nvim_set_hl(0, 'NvimTreeNormal', {bg='#06080A'})
    vim.api.nvim_set_hl(0, 'NvimTreeEndOfBuffer', {bg = '#06080A'})
    vim.api.nvim_set_hl(0, 'NvimTreeWindowPicker', {bg='#5b8b5c', fg='fg'})
elseif theme == "gruvbox" then
    vim.api.nvim_set_hl(0, 'NvimTreeNormal', {bg='#1d2021'})
    vim.api.nvim_set_hl(0, 'NvimTreeWindowPicker', {bg='#5b8b5c', fg='fg'})
end

--:h signcolrmn
