local M = {
  { "mfussenegger/nvim-dap" }, -- Debug Adapter Protocol
  { "jay-babu/mason-nvim-dap.nvim" }, -- Mason integration with nvim-dap
  { "nvim-neotest/nvim-nio" }, -- Neotest integration with nvim-dap
  { "rcarriga/nvim-dap-ui", dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" } }, -- UI for nvim-dap
}

return M
