local colors = require("tokyonight.colors").setup()

require("scrollbar").setup({
  throttle_ms = 50,
  handle = {
    color = colors.bg_highlight,
  },
  marks = {
    Cursor = {
      text = '•',
      color = colors.orange,
    },
    Search = { color = colors.orange },
    Error = { color = colors.error },
    Warn = { color = colors.warning },
    Info = { color = colors.info },
    Hint = { color = colors.hint },
    Misc = { color = colors.purple },
  }
})
