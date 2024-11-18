return {
  {
    'nvim-neorg/neorg',
    lazy = false,
    keys = {
      {
        '<leader>nn',
        '<cmd>Neorg index<cr>',
        desc = 'Open Neorg index',
      },
      {
        '<leader>nj',
        '<cmd>Neorg journal<cr>',
        desc = 'Open Neorg journal',
      },
      {
        '<leader>nt',
        '<cmd>Neorg toc<cr>',
        desc = 'Create Table of Contents',
      },
      {
        '<leader>ni',
        '<cmd>Neorg inject-metadata<cr>',
        desc = 'Create metadata for note',
      },
      {
        '<leader>nu',
        '<cmd>Neorg update-metadata<cr>',
        desc = 'Update metadata for note',
      },
      {
        '<leader>nT',
        '<cmd>Neorg tangle<cr>',
        desc = 'Export code block into its own file',
      },
    },
    config = function()
      require('neorg').setup {
        load = {
          ['core.defaults'] = {},
          ['core.neorgcmd'] = {},
          ['core.summary'] = {},
          ['core.journal'] = {},
          ['core.autocommands'] = {},
          ['core.export'] = { config = {} },
          ['core.export.markdown'] = { config = {} },
          ['core.integrations.treesitter'] = { config = {} },
          ['core.ui'] = {},
          ['core.ui.calendar'] = {},
          ['core.qol.todo_items'] = {
            config = {
              create_todo_items = true,
              create_todo_parents = true,
            },
          },
          ['core.concealer'] = {
            config = {
              icons = {
                code_block = {
                  conceal = true,
                },
              },
            },
          },
          ['core.dirman'] = {
            config = {
              workspaces = {
                notes = '~/notes',
              },
              default_workspace = 'notes',
            },
          },
        },
      }
      vim.wo.foldlevel = 99
      vim.wo.conceallevel = 2
    end,
  },
}
