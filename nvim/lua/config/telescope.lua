local ts = require('telescope')

ts.setup {
  defaults = {
    file_ignore_patterns = {
      "node_modules",
      "__snapshots__",
      "*-lock.*",
      "venv"
    },
  },
  pickers = {
    colorscheme = {
      enable_preview = true,
    }
  }
}

ts.load_extension('notify')
