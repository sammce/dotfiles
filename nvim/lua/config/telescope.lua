local ts = require('telescope')

ts.setup {
  defaults = {
    file_ignore_patterns = {
      "node_modules",
      "__snapshots__",
      "*-lock.*",
      "venv",
      ".venv",
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
  },
  extensions = {
    aerial = {
      -- Set the width of the first two columns (the second
      -- is relevant only when show_columns is set to 'both')
      col1_width = 4,
      col2_width = 30,
      -- How to format the symbols
      format_symbol = function(symbol_path, filetype)
        if filetype == "json" or filetype == "yaml" then
          return table.concat(symbol_path, ".")
        else
          return symbol_path[#symbol_path]
        end
      end,
      -- Available modes: symbols, lines, both
      show_columns = "both",
    },
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    }
  },
}

ts.load_extension('notify')
ts.load_extension('fzf')
