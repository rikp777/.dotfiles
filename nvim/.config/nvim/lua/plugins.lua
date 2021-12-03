local execute = vim.api.nvim_command
local fn = vim.fn

--local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
--[[
if fn.empty(fn.glob(install_path)) > 0 then 
	execute('git clone https://github.com/wbthomason/packer.vim '..install_path)
	execute 'packadd packer.nvim'
end
]]

return require('packer').startup(function()
	-- Packer can manage itself as an optional plugin
	use {'wbthomason/packer.nvim', opt = true}

	-- tut neil sabde
	use 'shaunsingh/nord.nvim'
	use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate" } 
  use {'hoob3rt/lualine.nvim', requires = { 'kyazdani42/nvim-web-devicons', opt = true }}
  use {'akinsho/bufferline.nvim', require = 'kyazdani42/nvim-web-devicons' }
  use {'kyazdani42/nvim-tree.lua', requires = {'kyazdani42/nvim-web-devicons',}, 
    config = function() require'nvim-tree'.setup {} end}
  use {'windwp/nvim-ts-autotag'}

	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/nvim-compe'
	use 'hrsh7th/vim-vsnip'
end)




