return {
  -- You can easily change to a different colorscheme.
  -- Change the name of the colorscheme plugin below, and then
  -- change the command in the config to whatever the name of that colorscheme is.
  --
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  opts = {
    custom_highlights = function(colors)
      return {
        LineNr = { fg = colors.lavender },
        CursorLineNr = { fg = colors.pink },
      }
    end,
  },
  init = function()
    -- Load the colorscheme here.
    -- Like many other themes, this one has different styles, and you could load
    -- any other, such as catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
    vim.cmd.colorscheme 'catppuccin-frappe'

    -- You can configure highlights by doing something like:
    vim.cmd.hi 'Comment gui=none'
  end,
}
