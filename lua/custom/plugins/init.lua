-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
--
return {

  {
    'cameron-wags/rainbow_csv.nvim',
    config = true,
    ft = {
      'csv',
      'tsv',
      'csv_semicolon',
      'csv_whitespace',
      'csv_pipe',
      'rfc_csv',
      'rfc_semicolon',
    },
    cmd = {
      'RainbowDelim',
      'RainbowDelimSimple',
      'RainbowDelimQuoted',
      'RainbowMultiDelim',
    },
    rbql_output_format = { 'csv' },
  },
  {
    'kylechui/nvim-surround',
    version = '*', -- Use for stability; omit to use `main` branch for the latest features
    event = 'VeryLazy',
    config = function()
      require('nvim-surround').setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },
  {
    'danymat/neogen',

    config = function()
      require('neogen').setup {}
      local generate_docstring = function()
        local args = {
          annotation_convention = {
            python = 'google_docstrings',
          },
        }
        require('neogen').generate(args)
      end

      vim.keymap.set('n', '<leader>ids', generate_docstring, { desc = '[I]nsert [D]oc[S]tring' })
    end,
  },
  {
    'ojroques/nvim-osc52',
    config = function()
      vim.keymap.set('v', '<leader>c', require('osc52').copy_visual, { desc = '[C]opy to osc52 clipboard' })
    end,
  },
}
