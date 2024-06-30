return {
  'crusj/bookmarks.nvim',
  keys = {
    { '<tab><tab>', mode = { 'n' } },
  },
  branch = 'main',
  dependencies = { 'nvim-web-devicons' },
  config = function()
    require('bookmarks').setup {
      keymap = {
        toggle = '<tab><tab>',
        add_global = '<tab>bc',
        delete_on_virt = '<tab>dd',
        show_desc = '<tab>bd',
      },
    }
    require('telescope').load_extension 'bookmarks'
  end,
}
