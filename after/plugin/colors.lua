
-- needs rose-pine installed, but currently does now work for mac terminal

function ColorMyPencils(color)
	-- set color scheme
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	-- set transparent background
	vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})

end

-- ColorMyPencils()
