if os.getenv('TEST_COV') then
  require('luacov')
end

vim.cmd([[
  set noswapfile
  set rtp+=.
  set rtp+=../plenary.nvim
  set rtp+=../nvim-web-devicons/
  runtime plugin/plenary.vim
]])
