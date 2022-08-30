local opt = vim.opt

opt.syntax = 'on'
opt.expandtab = true
opt.smarttab = true
opt.shiftwidth = 4
opt.tabstop = 4

opt.hlsearch = true
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true

opt.wildmenu = true
opt.showmode = false

opt.splitbelow = true
opt.splitright = true
opt.wrap = false
opt.scrolloff = 5
opt.fileencoding = 'utf-8'
opt.termguicolors = true
opt.relativenumber = true
opt.number = true
opt.showcmd = true
--opt.cursorline = true
opt.hidden = true
opt.mouse = "a"
opt.fillchars = {
    vert = ' ',--"▏", -- alternatives │
    vertleft = ' ', --"▏",
    vertright = ' ', --"▏",
    verthoriz = ' ', --"▏",
    horiz = "─",
    horizup = "─",
    horizdown = "─",
    --fold = " ",
    eob = " ", -- suppress ~ at EndOfBuffer
    --diff = "╱", -- alternatives = ⣿ ░ ─
    --msgsep = "‾",
    foldopen = "▾",
    foldsep = "│",
    foldclose = "▸",
  }

local theme = vim.g.colors_name
if theme == "tokyodark" then
elseif theme == "gruvbox" then
 vim.cmd([[
    augroup MyColors
    autocmd!
    autocmd ColorScheme * highlight SignColumn guibg=#282828
    autocmd ColorScheme * highlight GitSignsAdd guibg=#282828 guifg=#b8bb26
    autocmd ColorScheme * highlight GitSignsChange guibg=#282828 guifg=#fabd2f
    autocmd ColorScheme * highlight GitSignsDelete guibg=#282828 guifg=#fb4934
    autocmd ColorScheme * highlight ColorColumn guifg='fg' guibg=#282828 gui=NONE
    autocmd ColorScheme * highlight DiagnosticHint guifg=#8ec07c guibg=#282828
    augroup end
    ]])
end
-- vim.cmd([[autocmd set titlestring=%t%(\ %M%)%(\ (%{expand(\"%:~:.:h\")})%)%(\ %a%)]])
