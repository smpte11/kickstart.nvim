-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {

  'nvim-lua/plenary.nvim', -- lua functions that many plugins use
  'christoomey/vim-tmux-navigator', -- tmux & split window navigation
  {
    'echasnovski/mini.surround',
    recommended = true,
    opts = {
      mappings = {
        add = 'gsa', -- Add surrounding in Normal and Visual modes
        delete = 'gsd', -- Delete surrounding
        find = 'gsf', -- Find surrounding (to the right)
        find_left = 'gsF', -- Find surrounding (to the left)
        highlight = 'gsh', -- Highlight surrounding
        replace = 'gsr', -- Replace surrounding
        update_n_lines = 'gsn', -- Update `n_lines`
      },
    },
  },
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
  {
    'folke/flash.nvim',
    event = 'VeryLazy',
    vscode = true,
    ---@type Flash.Config
    opts = {},
  -- stylua: ignore
  keys = {
    { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
    { "S", mode = { "n", "o", "x" }, function() require("flash").treesitter() end, desc = "Flash Treesitter" },
    { "r", mode = "o", function() require("flash").remote() end, desc = "Remote Flash" },
    { "R", mode = { "o", "x" }, function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
    { "<c-s>", mode = { "c" }, function() require("flash").toggle() end, desc = "Toggle Flash Search" },
  },
  },
}
