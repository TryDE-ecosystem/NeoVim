describe("hash", function()
	local hash = require("try.lib.hashing").hash
	it("typo", function() assert.are_not.equals(hash { custom_highlight = {} }, hash { ustom_highlight = {} }) end)
	it(
		"when table order is shuffled",
		function()
			assert.equals(
				hash {
					custom_highlight = {
						Search = { fg = "#7C94E9", bg = "#7BC427", style = { "bold" } },
						IncSearch = { fg = "#7C94E9", bg = "#C8DAF4" },
					},
				},
				hash {
					custom_highlight = {
						Search = { style = { "bold" }, bg = "#7BC427", fg = "#7C94E9" },
						IncSearch = { bg = "#C8DAF4", fg = "#7C94E9" },
					},
				}
			)
		end
	)
	it(
		"when toggle true/false",
		function()
			assert.are_not.equals({
				integrations = {
					navic = true,
					noice = true,
					fidget = true,
				},
			}, {
				integrations = {
					navic = true,
					noice = false,
					fidget = false,
				},
			})
		end
	)
end)
