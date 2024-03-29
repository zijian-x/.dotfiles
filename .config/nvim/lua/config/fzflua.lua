require('fzf-lua').setup {
  -- global_resume      = false, -- need to disable otherwise fzf_exec won't work
  global_resume_query = false,
  winopts = {
    border = 'single',
    hl = { border = 'LineNr' },
    height = 0.7,
    width = 0.7,
    preview = {
      hidden = 'hidden',
      vertical = 'down:45%',
      horizontal = 'right:60%',
      layout = 'flex',
      flip_columns = 120,
      scrollbar = 'float',
      scrolloff = '-2',
      delay = 0,
      winopts = {
        number = true,
        relativenumber = false,
        cursorline = false,
        cursorlineopt = 'both',
        cursorcolumn = false,
        signcolumn = 'no',
        list = false,
        foldenable = false,
        foldmethod = 'manual',
      }
    }
  },
  keymap = { fzf = { ['alt-a'] = 'toggle-all', }, },
  fzf_colors = {
    -- fzf '--color=' options (optional)
    ['fg'] = { 'fg', 'CursorLine' },
    ['bg'] = { 'bg', 'Normal' },
    ['hl'] = { 'fg', 'Comment' },
    ['fg+'] = { 'fg', 'Normal' },
    ['bg+'] = { 'bg', 'CursorLine' },
    ['hl+'] = { 'fg', 'Statement' },
    ['info'] = { 'fg', 'PreProc' },
    ['prompt'] = { 'fg', 'Conditional' },
    ['pointer'] = { 'fg', 'Exception' },
    ['marker'] = { 'fg', 'Keyword' },
    ['spinner'] = { 'fg', 'Label' },
    ['header'] = { 'fg', 'Comment' },
    ['gutter'] = { 'bg', 'Normal' },
  },
  -- provider setup
  files = {
    path_shorten = false,
    multiprocess = true,  -- run command in a separate process
  },
  git = {
    files = {
      cmd = 'git ls-files --exclude-standard',
      multiprocess = false,  -- run command in a separate process
      -- show_cwd_header = true
    },
    status = {
    },
  },
  grep = {
    multiprocess = true,  -- run command in a separate process
    glob_flag = "--iglob",  -- for case sensitive globs use '--glob'
  },
  oldfiles = {
    cwd_only = false,
  },
  buffers = {
    path_shorten = true,
  },
  quickfix = {
  },
  lsp = {
    jump_to_single_result = true,
    sync = true,
    async_or_timeout = 5000,
    cwd_only = false,
    severity = 'hint',
  },
  helptags = { previewer = { _ctor = false } },
  manpages = { previewer = { _ctor = false } },
}

local M = {}

M.find_files_in = function()
  vim.ui.input({ prompt = 'Files in: ', completion = "dir" }, function(input)
    if input ~= nil and input ~= '' then
      require('fzf-lua').files({ cwd = input })
    end
  end)
end

M.grep_in = function()
  vim.ui.input({ prompt = 'Grep in: ', completion = "dir" }, function(input)
    if input ~= nil and input ~= '' then
      require('fzf-lua').live_grep({ cwd = input })
    end
  end)
end

local map = require('config.mapper').map
map('n', '<leader>f', '<cmd>FzfLua files<cr>')
map('n', '<leader>cf', function () require('fzf-lua').files({ cwd = vim.fn.expand('%:h') }) end)
map('n', '<leader>if', function () require("config.fzflua").find_files_in() end)
map('n', '<leader>b', '<cmd>FzfLua buffers<cr>')
map('n', '<leader>r', '<cmd>FzfLua live_grep<cr>')
map('n', '<leader>o', '<cmd>FzfLua oldfiles<cr>')
map('n', '<leader>l', '<cmd>FzfLua lines<cr>')
map('n', '<leader>ir', function () require("config.fzflua").grep_in() end)
map('n', '<leader>A', '<cmd>FzfLua builtin<cr>')
map('n', '<leader>j', '<cmd>FzfLua jumps<cr>')
map('n', '<leader>h', '<cmd>FzfLua help_tags<cr>')
map('n', '<leader>k', '<cmd>FzfLua keymaps<cr>')

return M
