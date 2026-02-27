return {
  "neovim/nvim-lspconfig",

  config = function()
	local lspconfig = require("lspconfig")
 	lspconfig.pyright.setup {}
	lspconfig.rust_analyzer.setup {
		settings = {
			['rust-analyzer'] = {},
		},
	}
 	lspconfig.gopls.setup {}
  end
}
