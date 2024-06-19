return {
  -- add rose-pine
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        disable_background = true, -- This will make the background transparent
        disable_float_background = true, -- This will make floating windows background transparent
        disable_italics = true, -- Optionally disable italics if they cause readability issues
      })
      vim.cmd("colorscheme rose-pine")

      -- Override specific highlight groups for transparency
      vim.cmd([[
        highlight Normal guibg=NONE ctermbg=NONE
        highlight CursorLine guibg=NONE ctermbg=NONE
      ]])
    end,
  },

  -- Configure LazyVim to load rose-pine
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
  },
}
