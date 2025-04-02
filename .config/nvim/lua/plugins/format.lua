---- An extension of the conform.nvim core plugin
return {
  "stevearc/conform.nvim",
  opts = {
    format_on_save = function(buff_no)
      -- Disable auto-format for certain filetypes
      local fileTypesTable = { "scss", "yml", "yaml" }

      if vim.tbl_contains(fileTypesTable, vim.bo[buff_no].filetype) then -- tbl_contains = table_contains
        return -- nil
      end

      return { timeout_ms = 500, lsp_fallback = true }
    end,
  },
}
