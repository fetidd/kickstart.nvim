return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
    'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
  },
  init = function()
    vim.g.barbar_auto_setup = false
    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }
    map('n', '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
    map('n', '<A-.>', '<Cmd>BufferNext<CR>', opts)
    map('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
    vim.api.nvim_create_augroup('neotree', {})
    vim.api.nvim_create_autocmd('UiEnter', {
      group = 'neotree',
      callback = function()
        if vim.fn.argc() == 0 then
          vim.cmd 'Neotree current'
        end
      end,
    })
  end,
  opts = {
    -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
    -- animation = true,
    -- insert_at_start = true,
    -- …etc.
    -- icons = { filetype = { enabled = false } },
  },
  version = '^1.0.0', -- optional: only update when a new 1.x version is released
}
