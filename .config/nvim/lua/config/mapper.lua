local function map(modes, lhs, rhs, opts)
	opts = opts or {}
	opts.noremap = opts.noremap == nil and true or opts.noremap
	if type(modes) == 'string' then
		modes = { modes }
	end
	for _, mode in ipairs(modes) do
		vim.keymap.set(mode, lhs, rhs, opts)
	end
end

return { map = map }
