-----------------------------------------------------------
-- Theme configuration file
-----------------------------------------------------------

-- See: https://github.com/brainfucksec/neovim-lua#appearance

-- Load nvim color scheme:
-- Change the "require" values with your color scheme
local status_ok, color_scheme = pcall(require, 'onedark')
if not status_ok then
  return
end

-- OneDark styles: dark, darker, cool, deep, warm, warmer, light
require('onedark').setup {
  style = 'darker',
  colors = { fg = '#b2bbcc' }, --default: #a0a8b7
}
require('onedark').load()
