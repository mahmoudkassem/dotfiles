local file = {
  'filename',
  file_status = true
}

local lightMagenta = '#d3869b'
local lightOrange = '#fe8019'
local lightRed = '#fb4934'

local lspDiagnostics = {
  'diagnostics',
  sources = {
    'nvim_lsp'
  },
  sections = ({
    'error',
    'warn',
    'info'
  }),
  color_error = lightRed,
  color_warn = lightOrange,
  color_info = lightMagenta
}

require('lualine').setup {
  sections = {
    lualine_a = {
      {
        'mode',
        upper = true
      }
    },
    lualine_b = {
      {
        'branch',
        icon = ''
      },
      'diff'
    },
    lualine_c = {
      lspDiagnostics,
      file
    },
    lualine_x = {
      {
        'filetype',
        colored = false
      },
      'fileformat',
      'encoding',
      'progress',
      'location'
    },
    lualine_y = {},
    lualine_z = {}
  },
  inactive_sections = {
    lualine_a = {
      'diff',
      lspDiagnostics,
      file
    },
    lualine_b = {},
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = {},
  }
}
