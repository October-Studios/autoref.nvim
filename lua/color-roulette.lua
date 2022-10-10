-- Organization: October Studios
-- Developer: Cameron Howell (@crhowell3)
-- License: MIT
-- Source: https://github.com/October-Studios/color-roulette.nvim
local api = vim.api
local config = require('config')
local uconfig -- Stores user config

local M

local function random_number(limit)
  return ((os.time() % limit) + 1)
end

local function roulette()
  local scheme = uconfig.colorschemes['scheme_' .. random_number(6)]
  api.nvim_command(('colorscheme ' .. scheme))
end

local function setup(user_config)
  uconfig = config.apply_configuration(user_config)
  roulette()
end

M = {
  setup = setup,
}

return M
