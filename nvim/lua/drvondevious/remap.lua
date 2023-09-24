local remap = {}

function remap.setup()
    vim.g.mapleader = " "

    vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, {})
    vim.keymap.set('n', '<leader>tn', '<cmd>:tabnew<cr>')
    vim.keymap.set('n', '<leader>td', '<cmd>:bd<cr>')
end

function remap.telescope()
    local builtin = require('telescope.builtin')

    vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
    vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
    vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
    vim.keymap.set('n', '<leader>of', builtin.oldfiles, {})
    vim.keymap.set('n', '<leader>sc', builtin.spell_suggest, {})
    vim.keymap.set('n', '<leader>gd', builtin.lsp_definitions, {})
    vim.keymap.set('n', '<leader>gi', builtin.lsp_implementations, {})
    vim.keymap.set('n', '<leader>gt', builtin.lsp_type_definitions, {})
end

function remap.nvim_tree()
  vim.keymap.set('n', '<leader>nt', '<cmd>:NvimTreeToggle<cr>')
end

function remap.barbar()
  vim.keymap.set('n', '<tab>', '<cmd>:BufferNext<cr>')
  vim.keymap.set('n', '<leader>bn', '<cmd>:BufferNext<cr>')
  vim.keymap.set('n', '<leader>bp', '<cmd>:BufferPrevious<cr>')
  vim.keymap.set('n', '<leader>bd', '<cmd>:BufferClose<cr>')
end

function remap.lsp()
  vim.keymap.set("n", "<leader>gd", vim.lsp.buf.rename, {})
  vim.keymap.set("n", "<leader>gd", vim.lsp.buf.code_action, {})
  vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
  vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, {})
  vim.keymap.set("n", "<leader>e", vim.lsp.buf.hover, {})
  vim.keymap.set("n", "<leader>gr", require('telescope.builtin').lsp_references, {})
end

return remap
