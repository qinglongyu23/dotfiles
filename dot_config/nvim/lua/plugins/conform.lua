return {

  "stevearc/conform.nvim",
  opts = function()
    c = require("conform");
    c.formatters_by_ft = {
      python = { "black" },
    }
  end
}
