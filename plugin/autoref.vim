-- Create a new key binding for displaying the key bindings
vim.api.nvim_set_keymap('n', '<leader>k', '<cmd>lua display_key_bindings()<CR>', {
	noremap = true,
	silent = true
})

