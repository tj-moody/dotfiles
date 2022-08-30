local theme = vim.g.colors_name

-- The 'CursorColumn' highlight group is being used for a totally unrelated purpose, so do not use the cursorcolumn option.
function gruvboxbufferline()
    require('bufferline').setup {
        options = {
            diagnostics = "nvim_lsp",
            separator_style = {' ', ' '},
            indicator = {
                icon = '▎',
                style = 'icon',
            },
            offsets = {
                {
                    filetype = "NvimTree",
                    text = "",
                    highlight = 'NvimTreeNormal',
                    --separator = '▏',
                }
            },
        },
        highlights = {
            offset_separator = {
                bg = '#1d2021'
            },
            indicator_selected = {
                fg = '#8ed07c',
                bg = 'bg'
            },
            separator = {
                bg = '#1d2021'
            },
            buffer_selected = {
                bg = 'bg'
            },
            buffer_visible = {
                bg = '#1d2021'
            },
            fill = {
                fg = '#1d2021',
                bg = '#1d2021'
            },
            background = {
                bg = '#1d2021'
            },
            tab = {
                bg = '#1d2021'
            },
            tab_close = {
                fg = 'fg',
                bg = '#ec5f67'
            },
            close_button = {
                bg = '#1d2021'
            },
            close_button_visible = {
                bg = '#1d2021'
            },
            close_button_selected = {
                bg = 'bg'
            },
        },
    }
end

function darkerbufferline()
    require('bufferline').setup {
        options = {
            diagnostics = "nvim_lsp",
            separator_style = {' ', ' '},
            indicator = {
                icon = '▎',
                style = 'icon',
            },
            offsets = {
                {
                    filetype = "NvimTree",
                    text = "",
                    highlight = 'NvimTreeNormal',
                    --separator = '▏',
                }
            },
        },
        highlights = {
            offset_separator = {
                bg = '#06080A'
            },
            indicator_selected = {
                fg = '#8ed07c',
                bg = 'bg'
            },
            fill = {
                fg = 'bg',
                bg = '#06080A'
            },
            background = {
                bg = '#06080A'
            },
            close_button = {
                bg = '#06080A'
            },
            close_button_visible = {
                bg = '#06080A'
            },
            close_button_selected = {
                bg = 'bg'
            },
            separator = {
                bg = '#06080A'
            },
            tab_close = {
                fg = '#ccccee',
                bg = '#ec5f67'
            },
        },
    }
end
if theme == "gruvbox" then
    gruvboxbufferline()
elseif theme == "tokyodark" then
    darkerbufferline()
end
