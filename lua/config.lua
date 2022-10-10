-- Copyright (c) 2022-present October Studios
-- MIT license, see LICENSE for more details
local util = require('util')

local config = {
  colorschemes = {
    scheme_1 = 'ron',
    scheme_2 = 'ron',
    scheme_3 = 'ron',
    scheme_4 = 'ron',
    scheme_5 = 'ron',
    scheme_6 = 'morning',
  },
}

local function apply_configuration(config_table)
  if not config_table then
    return util.deepcopy(config)
  end
  local function parse(section_group_name)
    if config_table[section_group_name] == nil then
      return
    end
    for section_name, section in pairs(config_table[section_group_name]) do
      config[section_group_name][section_name] = util.deepcopy(section)
    end
  end
  parse('colorschemes')
  return util.deepcopy(config)
end

local function get_current_config()
  return util.deepcopy(config)
end

return {
  get_config = get_current_config,
  apply_configuration = apply_configuration,
}
