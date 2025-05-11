-- ~/.config/nvim/lua/plugins/gruvbox-material.lua
return {
  "sainnhe/gruvbox-material",
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.gruvbox_material_background = "medium" -- or "soft", "hard"
    vim.g.gruvbox_material_enable_bold = 1
    vim.g.gruvbox_material_enable_italic = 1
    vim.g.gruvbox_material_foreground = "mix" -- or "mix", "original"

    vim.cmd("colorscheme gruvbox-material")
  end,
}
