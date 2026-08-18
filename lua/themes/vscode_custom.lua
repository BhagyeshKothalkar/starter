local M = {}

M.type = "dark"

M.base_30 = {
  white = "#d7dae0",
  black = "#16191d",          -- editor.background
  darker_black = "#13161a",   -- sidebar / statusline bg
  black2 = "#1e2227",         -- hover & dropdown bg
  one_bg = "#1e2227",         -- floating window bg
  one_bg2 = "#2c313c",        -- line highlight bg
  one_bg3 = "#323842",
  grey = "#5c6370",
  grey_fg = "#7f848e",
  grey_fg2 = "#abb2bf",
  light_grey = "#d7dae0",

  -- UI Accent Colors
  red = "#e06c75",
  baby_bold_red = "#ff616e",
  green = "#98c379",
  vibrant_green = "#a5e075",
  nord_blue = "#4aa5f0",
  blue = "#61afef",
  seablue = "#4dc4ff",
  yellow = "#e5c07b",
  sun = "#f0a45d",
  purple = "#c678dd",
  dark_purple = "#b180d7",
  teal = "#56b6c2",
  orange = "#d19a66",
  cyan = "#42b3c2",

  -- System & Menu UI
  statusline_bg = "#16191d",
  lightbg = "#23272e",
  pmenu_bg = "#1e2227",
  pmenu_sel = "#2c313a",
  folder_bg = "#61afef",
  line = "#2c313c",
}

M.base_16 = {
  base00 = "#16191d", -- default_background
  base01 = "#1e2227", -- lighter_background
  base02 = "#2c313c", -- selection_background
  base03 = "#3e4452", -- comments/secondary
  base04 = "#5c6370", -- dark_foreground
  base05 = "#abb2bf", -- default_foreground
  base06 = "#d7dae0", -- light_foreground
  base07 = "#e6e6e6", -- light_background
  base08 = "#e06c75", -- variables, XML tags
  base09 = "#d19a66", -- integers, constants
  base0A = "#e5c07b", -- classes, types
  base0B = "#98c379", -- strings
  base0C = "#56b6c2", -- regex, escape chars
  base0D = "#61afef", -- functions, methods
  base0E = "#c678dd", -- keywords, storage
  base0F = "#be5046", -- legacy/deprecated
}

M.polls = {}

return M
