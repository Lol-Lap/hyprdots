-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Set the keymap for searching all files, including hidden ones
vim.keymap.set("n", "<leader>fa", function()
  require("telescope.builtin").find_files({
    hidden = true,
    layout_config = {
      prompt_position = "bottom",
    },
  })
end, { noremap = true, silent = true, desc = "Find All Files" })

-- Create a custom Vim command to search all files, including hidden ones
vim.api.nvim_create_user_command("FindAllFiles", function()
  require("telescope.builtin").find_files({
    hidden = true,
    layout_config = {
      prompt_position = "bottom",
    },
  })
end, { desc = "Find All Files" })
