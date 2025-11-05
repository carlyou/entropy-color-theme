-- Entropy Color Theme - Color Definitions
-- Based on src/entropy.yml

local M = {}

-- Deep Night - Background colors
M.entropy0 = "#282a3a"  -- Darkest background
M.entropy1 = "#313647"  -- Dark background
M.entropy2 = "#3a3f54"  -- Elevated background
M.entropy3 = "#435663"  -- Selection, borders

-- Verdant - Green and teal tones
M.entropy4 = "#31688e"  -- Deep teal
M.entropy5 = "#35b779"  -- Vibrant teal-green
M.entropy6 = "#5dbd7a"  -- Medium green
M.entropy7 = "#a3b087"  -- Sage green

-- Luminance - Bright text and highlights
M.entropy8 = "#b8c5a0"  -- Light sage
M.entropy9 = "#d4d9b8"  -- Pale green-cream
M.entropy10 = "#e8e5c8" -- Warm cream
M.entropy11 = "#fff8d4" -- Brightest cream

-- Aurora - Accent colors
M.entropy12 = "#fde724" -- Viridis yellow
M.entropy13 = "#fd971f" -- Orange
M.entropy14 = "#dc5fe6" -- Purple
M.entropy15 = "#6ec9e0" -- Cyan

-- Semantic color mappings for easier use
M.bg = {
  primary = M.entropy0,
  secondary = M.entropy1,
  elevated = M.entropy2,
  selection = M.entropy3,
}

M.fg = {
  primary = M.entropy9,
  secondary = M.entropy8,
  emphasized = M.entropy10,
  bright = M.entropy11,
}

M.border = {
  default = M.entropy3,
  active = M.entropy5,
  inactive = M.entropy7,
}

M.syntax = {
  keyword = M.entropy14,
  func = M.entropy4,
  variable = M.entropy6,
  string = M.entropy15,
  number = M.entropy13,
  comment = M.entropy7,
  constant = M.entropy12,
  operator = M.entropy14,
  type = M.entropy10,
}

M.ui = {
  selection = M.entropy3,
  search = M.entropy12,
  match = M.entropy5,
  error = M.entropy13,
  warning = M.entropy12,
  info = M.entropy15,
  success = M.entropy5,
}

-- Special colors
M.none = "NONE"

return M
