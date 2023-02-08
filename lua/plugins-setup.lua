local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- Autocommand that reloads neovim whenever you save this file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

local status, packer = pcall(require, "packer")
if not status then
  return
end

return packer.startup(function(use)
  use "wbthomason/packer.nvim" -- plugins manager
  use "nvim-lua/plenary.nvim" -- lua functions to other plugins
  use "sainnhe/gruvbox-material" -- theme

  -- navigation plugins
  use "christoomey/vim-tmux-navigator" -- split and tmux navigator
  use "szw/vim-maximizer" -- maximing an split

  -- essential plugins
  use "tpope/vim-surround" -- surrounding text shortcuts
  use "vim-scripts/ReplaceWithRegister" -- replace sections with clipboard
  use "numToStr/Comment.nvim" -- commenting plugin
  use "nvim-tree/nvim-tree.lua" -- file explorer
  use "kyazdani42/nvim-web-devicons" -- file icons
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- telescope
  use {"nvim-telescope/telescope-fzf-native.nvim", run = "make" }
  use {
    "nvim-telescope/telescope.nvim", tag = "0.1.1",
    requires = { {"nvim-lua/plenary.nvim"} }
  }

  -- autocompletion
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer"
  use "hrsh7th/cmp-path"

  -- snippets
  use "L3MON4D3/LuaSnip"
  use "saadparwaiz1/cmp_luasnip"
  use "rafamadriz/friendly-snippets"
  
  if packer_bootstrap then
    require("packer").sync()
  end
end)

