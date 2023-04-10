-- Organization: October Studios
-- Developer: Cameron Howell (@crhowell3)
-- License: MIT
-- Source: https://github.com/October-Studios/autoref.nvim
local api = vim.api
local M

-- Put generation functions here
local function display_key_bindings()
	-- Get the list of key mappings
	local mappings = api.nvim_get_keymap('')

	-- Sort the mappings by mode and then by key sequence
	table.sort(mappings, function(a, b)
	    if a.mode == b.mode then
		return a.lhs < b.lhs
	    else
		return a.mode < b.mode
	    end
	end)

	local bufnr = vim.fn.bufnr('Key Bindings')

	if bufnr ~= -1 then
		api.nvim_set_current_buf(bufnr)
	else
		-- Create a table to store the output
		local output = {}

		-- Loop through the mappings and format them as Markdown
		for _, mapping in ipairs(mappings) do
		    local mode = mapping.mode
		    local lhs = mapping.lhs
		    local rhs = vim.fn.escape(mapping.rhs, '|`\\')
		    local silent = mapping.silent == 1 and 'silent ' or ''
		    local expr = mapping.expr == 1 and 'expr ' or ''
		    local noremap = mapping.noremap == 0 and 'map ' or 'noremap '

		    local line = string.format('| %s | `%s` | `%s` | %s%s%s|',
						mode, lhs, rhs, silent, expr, noremap)

		    -- Add the formatted line to the output table
		    table.insert(output, line)
		end

		-- Create a new buffer for the output
		vim.cmd('tabnew')

		vim.cmd('file Key Bindings')

		-- Set the buffer's filetype to Markdown
		vim.bo.filetype = 'markdown'
		vim.bo.buftype = 'nofile'


		-- Disable the buffer's swapfile
		vim.bo.swapfile = false

		-- Insert the formatted output into the buffer
		api.nvim_buf_set_lines(0, 0, -1, false, {
		    '| Mode | Key | Action | Options |',
		    '|------|-----|--------|---------|',
		    unpack(output)
		})

		vim.bo.modifiable = false

		vim.bo.bufhidden = 'hide'
	end
end

M = {
  display_key_bindings = display_key_bindings,
}

return M
