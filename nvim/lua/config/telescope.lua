local ts = require('telescope')

ts.setup {
  defaults = {
    file_ignore_patterns = {
      "node_modules",
      "__snapshots__",
      "*-lock.*",
      "venv",
    },
    layout_config = {
      anchor = "CENTER",
      height = 0.8,
      width = 0.8,
    }
  },
  pickers = {
    colorscheme = {
      enable_preview = true,
    }
  }
}

ts.load_extension('notify')
