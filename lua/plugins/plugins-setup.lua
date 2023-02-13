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

local packer_bootstrap = ensure_packer()

-- 保存此文件自动更新安装软件
-- 注意PackerCompile改成了PackerSync
-- plugins.lua改成了plugins-setup.lua，适应本地文件名字
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])
return require('packer').startup(function(use)
  use("wbthomason/packer.nvim")

  --color scheme
  use("folke/tokyonight.nvim")
  -- use { "catppuccin/nvim", as = "catppuccin" }
  -- use("ellisonleao/gruvbox.nvim")
  
  use("ggandor/leap.nvim")
  use("ggandor/flit.nvim")

  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use {
    --tab: 展开文件内容
    --hjkl: 移动光标
    --o/<CR>: 打开文件并且光标移动到文件里
    --a: 在当前文件按a就会在当前文件后append一个新文件
    --E: expand all
    'nvim-tree/nvim-tree.lua', -- 文档树
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons
    }
    -- ,tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }
  --此插件也适用于tmux
  use("christoomey/vim-tmux-navigator") --用Ctrl + hjkl来定位窗口
  use("nvim-treesitter/nvim-treesitter") --语法高亮
  use("p00f/nvim-ts-rainbow") --配合treesitter，不同括号颜色区分
  use{
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim", --这个相当于mason.nvim和lspconfig的桥梁
    "neovim/nvim-lspconfig"
  }
  --代码片段插件
  use("hrsh7th/nvim-cmp") --the auto completion plugin
  use("hrsh7th/cmp-nvim-lsp") --lsp本身的completion
  use("hrsh7th/cmp-path") --文件路径
  use("L3MON4D3/LuaSnip") --snippets引擎，不装这个自动补全会出问题
  use("saadparwaiz1/cmp_luasnip")
  use("rafamadriz/friendly-snippets")
  use("numToStr/Comment.nvim") --gcc和gc注释
  use("windwp/nvim-autopairs") --自动补全括号
  use("akinsho/bufferline.nvim") --buffer分割线
  use("lewis6991/gitsigns.nvim") --左侧git提示
  --<leader>ff: 全文检索文件名称
  --<leader>fg: 全文检索文件里的内容
  use {
    "nvim-telescope/telescope.nvim", tag = '0.1.1',
    -- or                          , branch = '0.1.x',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use("mfussenegger/nvim-jdtls") --Eclipse JDT Language Server
  use("github/copilot.vim")

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
