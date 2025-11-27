-- Entropy Color Theme - Color Definitions
-- Based on src/entropy.yml

local M = {}

-- Deep Night - Background colors
M.entropy0 = "#0d0e14"  -- Darkest background
M.entropy1 = "#15171f"  -- Dark background
M.entropy2 = "#1d2028"  -- Elevated background
M.entropy3 = "#2a2f3a"  -- Selection, borders

-- Verdant - Green and teal tones
M.entropy4 = "#4a7b9d"  -- Deep teal
M.entropy5 = "#4a9d6f"  -- Muted teal-green
M.entropy6 = "#6ba578"  -- Medium green
M.entropy7 = "#a3b087"  -- Sage green

-- Luminance - Bright text and highlights
M.entropy8 = "#b8c5a0"  -- Light sage
M.entropy9 = "#dfe4c2"  -- Pale green-cream
M.entropy10 = "#f0edd8" -- Warm cream
M.entropy11 = "#fffef5" -- Brightest cream

-- Aurora - Accent colors
M.entropy12 = "#d4c254" -- Muted yellow
M.entropy13 = "#d89668" -- Muted orange
M.entropy14 = "#b57ec0" -- Muted purple
M.entropy15 = "#75b5c7" -- Muted cyan

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
