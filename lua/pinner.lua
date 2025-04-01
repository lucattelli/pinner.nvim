local M = {}

M.files = {}

M.goto_file = function(nslot)
  local slot = tostring(nslot)
  print("pinner navigating to buffer", M.files[slot])
  vim.cmd(":b" .. M.files[slot])
end

M.keybind = function(set_shortcut, goto_shortcut, pin_key)
  vim.keymap.set("n", goto_shortcut, function() M.goto_file(pin_key) end, { noremap = true })
  vim.keymap.set("n", set_shortcut, function() M.set_file(pin_key) end, { noremap = true })
end

M.set_file = function(nslot)
  local slot = tostring(nslot)
  M.files[slot] = vim.fn.bufnr()
  print("pinner[" .. slot .. "] now has buffer", M.files[slot])
end

M.setup = function()
  M.keybind("<leader>!", "<leader>1", 1)
  M.keybind("<leader>@", "<leader>2", 2)
  M.keybind("<leader>#", "<leader>3", 3)
  M.keybind("<leader>$", "<leader>4", 4)
  M.keybind("<leader>%", "<leader>5", 5)
  M.keybind("<leader>¨", "<leader>6", 6)
  M.keybind("<leader>&", "<leader>7", 7)
  M.keybind("<leader>*", "<leader>8", 8)
  M.keybind("<leader>(", "<leader>9", 9)
end

return M
