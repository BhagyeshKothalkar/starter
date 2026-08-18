require "nvchad.autocmds"

local autocmd = vim.api.nvim_create_autocmd

autocmd("FileType", {
  pattern = { "tex", "plaintex" },
  callback = function()
    vim.keymap.set("n", "<leader>b", function()
      -- Save the current buffer
      vim.cmd("write")

      local file = vim.fn.expand("%:p")
      local base = vim.fn.expand("%:p:r")

      -- Build the PDF
      vim.fn.system({ "latexmk", "-pdf", file })

      -- Clean auxiliary files
      vim.fn.system({ "latexmk", "-c"})

      -- Remove files latexmk doesn't clean
      vim.fn.delete(base .. ".run.xml")
      vim.fn.delete(base .. ".synctex.gz")
      vim.fn.delete(base .. ".pre")

      print("LaTeX build complete.")
    end, {
      buffer = true,
      desc = "Build LaTeX with latexmk",
    })
  end,
})