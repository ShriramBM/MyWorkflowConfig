return {
  -- Use TokyoNight as base and override to neon green
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "night",
      transparent = false,
      styles = {
        comments = { italic = true },
        keywords = { italic = true },
        functions = { bold = true },
      },
      on_colors = function(colors)
        colors.bg = "#000000"
        colors.bg_dark = "#000000"
        colors.bg_highlight = "#001a00"
        colors.bg_search = "#003300"
        colors.bg_visual = "#002200"
        colors.fg = "#00FF41"
        colors.fg_dark = "#00cc33"
        colors.fg_gutter = "#003300"
        colors.border = "#00FF41"
        colors.green = "#00FF41"
        colors.green1 = "#66FF88"
        colors.green2 = "#00cc33"
        colors.teal = "#00FFCC"
        colors.blue = "#00CCFF"
        colors.cyan = "#00FFCC"
        colors.red = "#FF3366"
        colors.orange = "#FFCC00"
        colors.yellow = "#CCFF00"
        colors.purple = "#FF00CC"
        colors.magenta = "#FF66FF"
        colors.comment = "#336633"
      end,
    },
  },

  -- Set it as the active colorscheme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
