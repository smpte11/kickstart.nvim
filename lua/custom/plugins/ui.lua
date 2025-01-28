return {
  'folke/edgy.nvim',
  event = 'VeryLazy',
  keys = {
    {
      '<leader>te',
      function()
        require('edgy').toggle()
      end,
      desc = 'Edgy Toggle',
    },
    -- stylua: ignore
    { "<leader>tE", function() require("edgy").select() end, desc = "Edgy Select Window" },
  },
  opts = function()
    local opts = {
      wo = {
        winhighlight = '',
      },
      right = {
        { title = 'Grug Far', ft = 'grug-far', size = { width = 0.4 } },
        { title = 'CodeCompanion Chat', ft = 'CodeCompanion', size = { width = 0.4 } },
      },
      keys = {
        -- increase width
        ['<c-Right>'] = function(win)
          win:resize('width', 2)
        end,
        -- decrease width
        ['<c-Left>'] = function(win)
          win:resize('width', -2)
        end,
        -- increase height
        ['<c-Up>'] = function(win)
          win:resize('height', 2)
        end,
        -- decrease height
        ['<c-Down>'] = function(win)
          win:resize('height', -2)
        end,
      },
    }
    return opts
  end,
}
