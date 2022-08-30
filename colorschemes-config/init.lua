local themefile = io.open("/Users/tj/programming/bin/temp/theme.txt", 'r')
local THEME = themefile:read("*all")
themefile:close()

vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
require("catppuccin").setup()

function SetGruvbox()
    vim.cmd([[
    colorscheme gruvbox
    set background=dark]])
end

function SetDarker()
    require('material').setup{

    }
    vim.g.tokyodark_color_gamma = "1.0"
    vim.cmd [[colorscheme tokyodark]]
    --vim.g.material_style = "deep ocean"
    --vim.cmd [[colorscheme material]]
end

if (THEME == "Darker\n") then
    SetDarker()
else
    SetGruvbox()
end
