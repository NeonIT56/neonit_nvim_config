return {
  "nvim-treesitter/nvim-treesitter", 
  build = ":TSUpdate",
  config = function()
    local config = require("nvim-treesitter.configs")
    config.setup({
      ensure_installed = {
        "lua",
        "c",
        "c_sharp",
        "java",
        "html",
        "css",
        "scss",
        "javascript",
        "typescript",
        "json",
        "python",
        "go",
        "gitignore",
        "markdown",
        "bash"
      },
      highlight = { enable = true },
      indent = { enable = true },
    })
  end
}


