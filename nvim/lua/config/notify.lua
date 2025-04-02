vim.notify = require("notify")

vim.notify.setup {
  fps = 60,
  render = "default",
  stages = "slide",
  top_down = false,
  icons = {
    DEBUG = "",
    ERROR = "",
    INFO = "",
    TRACE = "✎",
    WARN = ""
  },
}
