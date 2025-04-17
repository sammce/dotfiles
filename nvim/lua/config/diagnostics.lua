
vim.o.signcolumn = "yes"

vim.diagnostic.config({
  virtual_text = {
    prefix = '▎', -- Could be '●', '▎', 'x'
    format = function(diagnostic)
      -- Get all diagnostics for the current line
      local bufnr = diagnostic.bufnr
      local line = diagnostic.lnum
      local diagnostics_on_line = vim.diagnostic.get(bufnr, { lnum = line })

      -- Find the most severe diagnostic for this line
      local most_severe = diagnostics_on_line[1]
      for _, d in ipairs(diagnostics_on_line) do
        if d.severity < most_severe.severity then
            most_severe = d
        end
      end

      if most_severe and diagnostic.severity == most_severe.severity then
        return string.format("%s [%s]", diagnostic.message, diagnostic.source)
      else
        return nil
      end
    end,
  },
  severity_sort = true,
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "",
      [vim.diagnostic.severity.WARN] = "",
      [vim.diagnostic.severity.INFO] = "•",
      [vim.diagnostic.severity.HINT] = "",
    },
    texthl = {
      [vim.diagnostic.severity.ERROR] = "DiagnosticSignError",
      [vim.diagnostic.severity.WARN] = "DiagnosticSignWarn",
      [vim.diagnostic.severity.HINT] = "DiagnosticSignHint",
      [vim.diagnostic.severity.INFO] = "DiagnosticSignInfo",
    },
    numhl = {
      [vim.diagnostic.severity.ERROR] = "DiagnosticSignError",
      [vim.diagnostic.severity.WARN] = "DiagnosticSignWarn",
      [vim.diagnostic.severity.HINT] = "DiagnosticSignHint",
      [vim.diagnostic.severity.INFO] = "DiagnosticSignInfo",
    }
  },
})
