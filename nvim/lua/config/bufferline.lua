require("bufferline").setup{
  options = {
      diagnostics = "nvim_lsp",
      diagnostics_indicator = function(count, level, diagnostics_dict, context)
        local icon = level:match("error") and " " or " "
        return " " .. icon .. count
      end,
      separator_style = "slant",
  },
  highlights = {
    tab_selected = {
      bg = "NONE"
    },
    close_button_selected = {
      bg = "NONE"
    },
    buffer_selected = {
      bg = "NONE"
    },
    tab_separator_selected = {
      bg = "NONE"
    },
    separator_selected = {
      bg = "NONE"
    },
    numbers_selected = {
      bg = "NONE"
    },
    diagnostic_selected = {
      bg = "NONE"
    },
    hint_selected = {
      bg = "NONE"
    },
    hint_diagnostic_selected = {
      bg = "NONE"
    },
    error_selected = {
      bg = "NONE"
    },
    error_diagnostic_selected = {
      bg = "NONE"
    },
    info_selected = {
      bg = "NONE"
    },
    info_diagnostic_selected = {
      bg = "NONE"
    },
    warning_selected = {
      bg = "NONE"
    },
    warning_diagnostic_selected = {
      bg = "NONE"
    },
    modified_selected = {
      bg = "NONE"
    },
    duplicate_selected = {
      bg = "NONE"
    },
    pick_selected = {
      bg = "NONE"
    },
  }
}
