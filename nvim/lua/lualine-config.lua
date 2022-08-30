local function window()
  return vim.api.nvim_win_get_number(0)
end
local test = "test"
local gruvbox_colors = {
  black        = '#282828',
  white        = '#ebdbb2',
  red          = '#fb4934',
  green        = '#b8bb26',
  blue         = '#83a598',
  yellow       = '#fe8019',
  gray         = '#a89984',
  darkgray     = '#3c3836',
  lightgray    = '#504945',
  inactivegray = '#7c6f64',
}
local custom_gruvbox = {
  normal = {
    a = {bg = gruvbox_colors.gray, fg = gruvbox_colors.black, gui = 'bold'},
    b = {bg = gruvbox_colors.lightgray, fg = gruvbox_colors.white},
    c = {bg = gruvbox_colors.darkgray, fg = gruvbox_colors.gray},
    x = {bg = gruvbox_colors.black, fg = gruvbox_colors.white}
  },
  insert = {
    a = {bg = gruvbox_colors.blue, fg = gruvbox_colors.black, gui = 'bold'},
    b = {bg = gruvbox_colors.lightgray, fg = gruvbox_colors.white},
    c = {bg = gruvbox_colors.lightgray, fg = gruvbox_colors.white}
  },
  visual = {
    a = {bg = gruvbox_colors.yellow, fg = gruvbox_colors.black, gui = 'bold'},
    b = {bg = gruvbox_colors.lightgray, fg = gruvbox_colors.white},
    c = {bg = gruvbox_colors.lightgray, fg = gruvbox_colors.white}
  },
  replace = {
    a = {bg = gruvbox_colors.red, fg = gruvbox_colors.black, gui = 'bold'},
    b = {bg = gruvbox_colors.lightgray, fg = gruvbox_colors.white},
    c = {bg = gruvbox_colors.black, fg = gruvbox_colors.white}
  },
  command = {
    a = {bg = gruvbox_colors.gray, fg = gruvbox_colors.black, gui = 'bold'},
    b = {bg = gruvbox_colors.lightgray, fg = gruvbox_colors.white},
    c = {bg = gruvbox_colors.darkgray, fg = gruvbox_colors.gray}
  },
  inactive = {
    a = {bg = gruvbox_colors.black, fg = gruvbox_colors.gray, gui = 'bold'},
    b = {bg = gruvbox_colors.black, fg = gruvbox_colors.gray},
    c = {bg = gruvbox_colors.black, fg = gruvbox_colors.gray}
  }
}

local colors = {
  bg       = '#202328',
  fg       = '#bbc2cf',
  yellow   = '#ECBE7B',
  cyan     = '#008080',
  darkblue = '#081633',
  green    = '#98be65',
  orange   = '#FF8800',
  violet   = '#a9a1e1',
  magenta  = '#c678dd',
  blue     = '#51afef',
  red      = '#ec5f67',
}


local lualine = require('lualine')

local gruvboxconfig = {
    options = {
        icons_enabled = true,
        theme = custom_gruvbox,
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        -- '' '' '' ''
        disabled_filetypes = {
            statusline = {'NvimTree'},
            winbar = {'NvimTree'},
            NvimTree = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = true,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        },
    },

    sections = {
        lualine_a = {'mode'},
        lualine_b = {},
        --lualine_b = { 'branch', 'diff', 'diagnostics', }
        lualine_c = {'filename'},
        lualine_x = {},
        lualine_y = {'encoding', 'fileformat', 'filetype'},
        lualine_z = { window, 'location' },
    },
    inactive_sections = {
        lualine_a = {'filename'},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {'filetype'}
    },
    tabline = {},
    winbar = {},
    extensions = {}
}
local theme = vim.g.colors_name
local tokyonightconfig = {
    options = {
        icons_enabled = true,
        theme = "tokyodark",
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        -- '' '' '' ''
        disabled_filetypes = {
            statusline = {'NvimTree'},
            winbar = {'NvimTree'},
            NvimTree = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = true,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        },
    },

    sections = {
        lualine_a = {'mode'},
        lualine_b = {},
        --lualine_b = { 'branch', 'diff', 'diagnostics', }
        lualine_c = {'filename'},
        lualine_x = {},
        lualine_y = {'encoding', 'fileformat', 'filetype'},
        lualine_z = { window, 'location' },
    },
    inactive_sections = {
        lualine_a = {'filename'},
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = {'filetype'}
    },
    tabline = {},
    winbar = {},
    extensions = {}
}

if theme == "gruvbox" then
    config = gruvboxconfig
elseif theme == "tokyodark" then
    config = tokyonightconfig
end

local function ins_left(component)
    table.insert(config.sections.lualine_b, component)
end

ins_left {
  'branch',
}
ins_left {
  'diff',
  -- Is it me or the symbol for modified us really weird
  symbols = { added = ' ', modified = '柳', removed = ' ' },
  diff_color = {
    added = { fg = colors.green },
    modified = { fg = colors.orange },
    removed = { fg = colors.red },
  },
}
ins_left {
  'diagnostics',
  symbols = { error = ' ', warn = ' ', info = ' ' },
  diagnostics_color = {
    color_error = { fg = colors.red },
    color_warn = { fg = colors.yellow },
    color_info = { fg = colors.cyan },
  },
}
require('lualine').setup(config)
