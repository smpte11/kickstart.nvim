-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'stevearc/oil.nvim',
    lazy = false,
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {
      columns = {
        'icons',
        'permissions',
        'size',
        'mtype',
      },
      delete_to_trash = true,
      view_options = {
        show_hidden = true,
      },
    },
    -- Optional dependencies
    dependencies = { 'nvim-tree/nvim-web-devicons' }, -- use if prefer nvim-web-devicons
    keys = {
      { '<leader>fo', '<cmd>Oil --float<cr>', desc = 'Open File Explorer (Oil)' },
      {
        '<Esc>',
        function()
          require('oil').close()
        end,
        desc = 'Open File Explorer (Oil)',
        ft = 'oil',
      },
    },
  },
}
