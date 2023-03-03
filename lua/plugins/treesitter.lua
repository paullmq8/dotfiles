require('nvim-treesitter.configs').setup {
  --添加不同语言
  ensure_installed = {'vim', 'help', 'bash', 'lua'}, --'json', 'python', 'c', 'cpp', 'javascript'

  highlight = { enable = true },
  indent = { enable = true },

  --不同括号颜色区分
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}
