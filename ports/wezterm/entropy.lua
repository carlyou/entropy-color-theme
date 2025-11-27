-- Entropy Color Theme for WezTerm
-- Based on viridis colormap and natural earth tones
--
-- Usage:
--   local entropy = require('entropy')
--   config.colors = entropy.colors()

local M = {}

function M.colors()
  return {
    -- Base colors
    foreground = "#d4d9b8", -- entropy9 - primary text
    background = "#282a3a", -- entropy0 - darkest background

    -- Cursor
    cursor_bg = "#d4d9b8",  -- entropy9
    cursor_fg = "#282a3a",  -- entropy0
    cursor_border = "#d4d9b8", -- entropy9

    -- Selection
    selection_bg = "#435663", -- entropy3
    selection_fg = "#fff8d4", -- entropy11

    -- Scrollbar
    scrollbar_thumb = "#435663", -- entropy3

    -- Split separators
    split = "#435663", -- entropy3

    -- ANSI colors (normal)
    ansi = {
      "#282a3a", -- black (entropy0)
      "#fd971f", -- red (entropy13 - orange)
      "#35b779", -- green (entropy5)
      "#fde724", -- yellow (entropy12)
      "#31688e", -- blue (entropy4)
      "#dc5fe6", -- magenta (entropy14 - purple)
      "#6ec9e0", -- cyan (entropy15)
      "#d4d9b8", -- white (entropy9)
    },

    -- ANSI colors (bright)
    brights = {
      "#435663", -- bright black (entropy3)
      "#fd971f", -- bright red (entropy13)
      "#5dbd7a", -- bright green (entropy6)
      "#fde724", -- bright yellow (entropy12)
      "#31688e", -- bright blue (entropy4)
      "#dc5fe6", -- bright magenta (entropy14)
      "#6ec9e0", -- bright cyan (entropy15)
      "#fff8d4", -- bright white (entropy11)
    },

    -- Indexed colors for extended color support
    indexed = {
      [16] = "#3a3f54", -- entropy2 - elevated background
      [17] = "#313647", -- entropy1 - dark background
      [18] = "#a3b087", -- entropy7 - sage green
      [19] = "#b8c5a0", -- entropy8 - light sage
      [20] = "#e8e5c8", -- entropy10 - warm cream
    },

    -- Tab bar colors
    tab_bar = {
      background = "#313647", -- entropy1

      active_tab = {
        bg_color = "#282a3a", -- entropy0
        fg_color = "#fff8d4", -- entropy11
        intensity = "Bold",
      },

      inactive_tab = {
        bg_color = "#313647", -- entropy1
        fg_color = "#b8c5a0", -- entropy8
      },

      inactive_tab_hover = {
        bg_color = "#3a3f54", -- entropy2
        fg_color = "#d4d9b8", -- entropy9
      },

      new_tab = {
        bg_color = "#313647", -- entropy1
        fg_color = "#a3b087", -- entropy7
      },

      new_tab_hover = {
        bg_color = "#3a3f54", -- entropy2
        fg_color = "#35b779", -- entropy5
        intensity = "Bold",
      },
    },
  }
end

return M
