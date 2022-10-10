local M = {}

-- deepcopy adapted from penlight
-- https://github.com/lunarmodules/Penlight/blob/0653cdb05591454a9804a7fee8c873b8f06b0b8f/lua/pl/tablex.lua#L98-L122
local function cycle_aware_copy(t, cache)
  if type(t) ~= 'table' then
    return t
  end
  if cache[t] then
    return cache[t]
  end
  local res = {}
  cache[t] = res
  local mt = getmetatable(t)
  for k, v in pairs(t) do
    k = cycle_aware_copy(k, cache)
    v = cycle_aware_copy(v, cache)
    res[k] = v
  end
  setmetatable(res, mt)
  return res
end

--- make a deep copy of a table, recursively copying all the keys and fields.
-- This supports cycles in tables; cycles will be reproduced in the copy.
-- This will also set the copied table's metatable to that of the original.
-- @within Copying
-- @tab t A table
-- @return new table
function M.deepcopy(t)
  return cycle_aware_copy(t, {})
end

return M
