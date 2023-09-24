require("nvim-tree").setup({
    filters = {
        dotfiles = true
    }
})

require('drvondevious.remap').nvim_tree()
