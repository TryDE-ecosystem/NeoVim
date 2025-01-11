return function(flavour)
	local C = require("try.palettes").get_palette(flavour)
	local O = require("try").options
	local try = {}

	local transparent_bg = O.transparent_background and "NONE" or C.mantle

	try.normal = {
		a = { bg = C.blue, fg = C.mantle, gui = "bold" },
		b = { bg = C.surface0, fg = C.blue },
		c = { bg = transparent_bg, fg = C.text },
	}

	try.insert = {
		a = { bg = C.green, fg = C.base, gui = "bold" },
		b = { bg = C.surface0, fg = C.green },
	}

	try.terminal = {
		a = { bg = C.green, fg = C.base, gui = "bold" },
		b = { bg = C.surface0, fg = C.green },
	}

	try.command = {
		a = { bg = C.peach, fg = C.base, gui = "bold" },
		b = { bg = C.surface0, fg = C.peach },
	}

	try.visual = {
		a = { bg = C.mauve, fg = C.base, gui = "bold" },
		b = { bg = C.surface0, fg = C.mauve },
	}

	try.replace = {
		a = { bg = C.red, fg = C.base, gui = "bold" },
		b = { bg = C.surface0, fg = C.red },
	}

	try.inactive = {
		a = { bg = transparent_bg, fg = C.blue },
		b = { bg = transparent_bg, fg = C.surface1, gui = "bold" },
		c = { bg = transparent_bg, fg = C.overlay0 },
	}

	return try 
end
