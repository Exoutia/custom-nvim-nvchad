return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  event = "VeryLazy",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require "harpoon"
    -- REQUIRED
    harpoon:setup()
    -- REQUIRED

    -- basic telescope configuration
    local conf = require("telescope.config").values
    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require("telescope.pickers")
        .new({}, {
          prompt_title = "Harpoon",
          finder = require("telescope.finders").new_table {
            results = file_paths,
          },
          previewer = conf.file_previewer {},
          sorter = conf.generic_sorter {},
        })
        :find()
    end
    vim.keymap.set("n", "<leader>a", function()
      harpoon:list():add()
    end)
    vim.keymap.set("n", "<C-e>", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, {desc="Open harpoon telescope window"})

    vim.keymap.set("n", "<C-1>", function()
      harpoon:list():select(1)
    end, {desc="Open the 1st one in list "})
    vim.keymap.set("n", "<C-2>", function()
      harpoon:list():select(2)
    end, {desc="Open the 2nd one in harpoon list"})
    vim.keymap.set("n", "<C-3>", function()
      harpoon:list():select(3)
    end, {desc="Open the 3rd one in harpoon list"})
    vim.keymap.set("n", "<C-4>", function()
      harpoon:list():select(4)
    end, {desc="Open the 4th one in harpoon list"})

    vim.keymap.set("n", "<C-e>", function()
      toggle_telescope(harpoon:list())
    end, { desc = "Open harpoon window" })
    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set("n", "<C-M-P>", function()
      harpoon:list():prev()
    end)
    vim.keymap.set("n", "<C-m-N>", function()
      harpoon:list():next()
    end)
  end,
}
