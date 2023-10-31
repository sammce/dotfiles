local signs = { Error = "", Warn = "", Hint = "•", Info = "" }

for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

vim.o.signcolumn = "yes"

vim.diagnostic.config({
    virtual_text = {
        prefix = '▎', -- Could be '●', '▎', 'x'
    }
})

local ns = vim.api.nvim_create_namespace("custom_sam_workspace")
local og_handler = vim.diagnostic.handlers.virtual_text

-- Only show most egregious error in diagnostics
function diagnostics_override(original_handler, bufnr, opts)
    -- Get all diagnostics from the whole buffer rather than just the
    -- diagnostics passed to the handler
    local diagnostics = vim.diagnostic.get(bufnr)

    -- Find the "worst" diagnostic per line
    local max_severity_per_line = {}
    for _, d in pairs(diagnostics) do
      local m = max_severity_per_line[d.lnum]
      if not m or d.severity < m.severity then
        max_severity_per_line[d.lnum] = d
      end
    end
    -- Pass the filtered diagnostics (with our custom namespace) to
    -- the original handler
    local filtered_diagnostics = vim.tbl_values(max_severity_per_line)
    original_handler.show(ns, bufnr, filtered_diagnostics, opts)
end

local text_handler = vim.diagnostic.handlers.virtual_text
local sign_handler = vim.diagnostic.handlers.signs
local underline_handler = vim.diagnostic.handlers.underline

local overrides = {
    { handler = text_handler, opt = "virtual_text" },
    { handler = sign_handler, opt = "signs"},
    { handler = underline_handler, opt = "underline" },
}

for _, override in pairs(overrides) do
    vim.diagnostic.handlers[override.opt] = {
        show = function(_, bufnr, _, opts)
            diagnostics_override(override.handler, bufnr, opts)
        end,
        hide = function(_, bufnr)
            override.handler.hide(ns, bufnr)
        end
    }
end
