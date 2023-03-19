require('nvim-tree').setup({
  filters = {
    dotfiles = true
  }
})

require('devious-dev.remap').nvim_tree()
