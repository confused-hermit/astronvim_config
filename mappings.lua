-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
-- vim.keymap.set("v", ">", ">v")
-- vim.keymap.set("v", "<", "<v")
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>bnext<cr>", desc = "next buffer" },
    ["<leader>bp"] = { "<cmd>bprev<cr>", desc = "revious buffer" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<A-j>"] = { "<esc>:m .+1<CR>==gi", desc = "move selection down" },
    ["<A-k>"] = { "<esc>:m .-2<CR>==gi", desc = "move selection up" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  v = {
    [">"] = { ">gv", desc = "indent right" },
    ["<"] = { "<gv", desc = "indent left" },
    ["<A-j>"] = { ":m .+1<CR>==", desc = "move selection down" },
    ["<A-k>"] = { ":m .-2<CR>==", desc = "move selection up" },
  },
  x = {
    ["<A-j>"] = { ":move '>+1<CR>gv-gv", desc = "move block down" },
    ["<A-k>"] = { ":move '<-2<CR>gv-gv", desc = "move block up" },
  },
}
