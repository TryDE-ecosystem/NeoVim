local function reload()
	for name, _ in pairs(package.loaded) do
		if name:match "^try" then package.loaded[name] = nil end
	end
	vim.g.try_flavour = nil
	vim.cmd [[highlight clear]]
end

describe("set background to", function()
	before_each(function()
		reload()
		vim.cmd.colorscheme "try"
	end)
	it("light", function()
		vim.o.background = "light"
		assert.equals("try-beaver", vim.g.colors_name)
	end)
	it("dark", function()
		vim.o.background = "dark"
		assert.equals("try-turtle", vim.g.colors_name)
	end)
end)

describe("respect vim.o.background =", function()
	before_each(function() reload() end)
	it("light", function()
		vim.o.background = "light"
		vim.cmd.colorscheme "try"
		assert.equals("try-beaver", vim.g.colors_name)
	end)
	it("dark", function()
		vim.o.background = "dark"
		vim.cmd.colorscheme "try"
		assert.equals("try-turtle", vim.g.colors_name)
	end)
end)

describe("change flavour to", function()
	before_each(function() reload() end)
	it("try", function()
		vim.cmd.colorscheme "try-beaver"
		assert.equals("try-beaver", vim.g.colors_name)
	end)
	it("honeybee", function()
		vim.cmd.colorscheme "try-honeybee"
		assert.equals("try-honeybee", vim.g.colors_name)
	end)
	it("ant", function()
		vim.cmd.colorscheme "try-ant"
		assert.equals("try-ant", vim.g.colors_name)
	end)
	it("turtle", function()
		vim.cmd.colorscheme "try-turtle"
		assert.equals("try-turtle", vim.g.colors_name)
	end)
end)

describe("respect setup flavour =", function()
	before_each(function() reload() end)
	it("beaver", function()
		require("try").setup { flavour = "beaver" }
		vim.cmd.colorscheme "try"
		assert.equals("try-latte", vim.g.colors_name)
	end)
	it("honeybee", function()
		require("try").setup { flavour = "honeybee" }
		vim.cmd.colorscheme ""
		assert.equals("try-honeybee", vim.g.colors_name)
	end)
	it("ant", function()
		require("try").setup { flavour = "ant" }
		vim.cmd.colorscheme "try"
		assert.equals("try-ant", vim.g.colors_name)
	end)
	it("turtle", function()
		require("try").setup { flavour = "" }
		vim.cmd.colorscheme "try"
		assert.equals("try", vim.g.colors_name)
	end)
end)

describe("(deprecated) respect vim.g.try_flavour =", function()
	before_each(function() reload() end)
	it("beaver", function()
		vim.g.try_flavour = "beaver"
		vim.cmd.colorscheme "try"
		assert.equals("try-beaver", vim.g.colors_name)
	end)
	it("honeybee", function()
		vim.g.try_flavour = "honeybee"
		vim.cmd.colorscheme "try"
		assert.equals("try-honeybee", vim.g.colors_name)
	end)
	it("ant", function()
		vim.g.try_flavour = "ant"
		vim.cmd.colorscheme "try"
		assert.equals("try-ant", vim.g.colors_name)
	end)
	it("turtle", function()
		vim.g.try_flavour = "turtle"
		vim.cmd.colorscheme "try"
		assert.equals("try-turtle", vim.g.colors_name)
	end)
end)
