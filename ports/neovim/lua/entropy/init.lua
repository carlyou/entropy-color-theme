-- Entropy Color Theme for Neovim
-- Main module

local M = {}

local function apply_highlights(highlights)
  for group, settings in pairs(highlights) do
    local gui_attrs = {}
    local gui_sp = settings.sp

    -- Build the attribute string
    if settings.bold then table.insert(gui_attrs, "bold") end
    if settings.italic then table.insert(gui_attrs, "italic") end
    if settings.underline then table.insert(gui_attrs, "underline") end
    if settings.undercurl then table.insert(gui_attrs, "undercurl") end
    if settings.strikethrough then table.insert(gui_attrs, "strikethrough") end

    local gui = #gui_attrs > 0 and table.concat(gui_attrs, ",") or "NONE"

    -- Apply the highlight
    vim.api.nvim_set_hl(0, group, {
      fg = settings.fg,
      bg = settings.bg,
      sp = gui_sp,
      bold = settings.bold,
      italic = settings.italic,
      underline = settings.underline,
      undercurl = settings.undercurl,
      strikethrough = settings.strikethrough,
    })
  end
end

function M.setup(opts)
  opts = opts or {}

  -- Reset highlighting
  if vim.g.colors_name then
    vim.cmd("highlight clear")
  end

  if vim.fn.exists("syntax_on") then
    vim.cmd("syntax reset")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "entropy"

  -- Load colors and highlights
  local colors = require("entropy.colors")
  local highlights = require("entropy.highlights").setup(colors)

  -- Apply all highlights
  apply_highlights(highlights)

  -- Set terminal colors
  vim.g.terminal_color_0 = colors.entropy0
  vim.g.terminal_color_1 = colors.entropy13  -- Red/Error
  vim.g.terminal_color_2 = colors.entropy5   -- Green
  vim.g.terminal_color_3 = colors.entropy12  -- Yellow
  vim.g.terminal_color_4 = colors.entropy4   -- Blue
  vim.g.terminal_color_5 = colors.entropy14  -- Magenta
  vim.g.terminal_color_6 = colors.entropy15  -- Cyan
  vim.g.terminal_color_7 = colors.entropy9   -- White
  vim.g.terminal_color_8 = colors.entropy3   -- Bright Black
  vim.g.terminal_color_9 = colors.entropy13  -- Bright Red
  vim.g.terminal_color_10 = colors.entropy6  -- Bright Green
  vim.g.terminal_color_11 = colors.entropy12 -- Bright Yellow
  vim.g.terminal_color_12 = colors.entropy4  -- Bright Blue
  vim.g.terminal_color_13 = colors.entropy14 -- Bright Magenta
  vim.g.terminal_color_14 = colors.entropy15 -- Bright Cyan
  vim.g.terminal_color_15 = colors.entropy11 -- Bright White
end

return M
