local ts = require('telescope')

ts.setup {
    defaults = { 
        file_ignore_patterns = { 
          "node_modules",
          "__snapshots__"
        }
    }
}

ts.load_extension('notify')
