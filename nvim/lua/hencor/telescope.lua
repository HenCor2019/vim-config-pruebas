local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")
local fb_actions = require("telescope").extensions.file_browser.actions

require("telescope").setup({
    defaults = {
        file_sorter = require("telescope.sorters").get_fzy_sorter,
        prompt_prefix = "❯ ",
        selection_caret = "❯ ",
        color_devicons = true,
        scroll_strategy = "cycle",
        sorting_strategy = "descending",
        selection_strategy = "reset",
        layout_config = {
                prompt_position = "top"
        },

        file_previewer = require("telescope.previewers").vim_buffer_cat.new,
        grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
        qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,

        mappings = {
            i = { 
                ["<C-v>"] = actions.select_vertical, 
                ["<C-h>"] = actions.select_horizontal, 
                ["<Esc>"] = actions.close,
                ["<C-q>"] = actions.send_to_qflist,
            },

            n = {
                ["<C-v>"] = actions.select_vertical
            }
        },
    },
    extensions = {
        fzy_native = {
            override_generic_sorter = false,
            override_file_sorter = true,
        },

        fzf_writer = {
            use_highlighter = false,
            minimum_grep_characters = 6,
        },
    },
})

require("telescope").load_extension("fzy_native")
require("telescope").load_extension("file_browser")

vim.api.nvim_set_keymap("n", "<leader>fb", ":Telescope file_browser<cr>", { noremap = true })

local M = {}
M.search_dotfiles = function()
    require("telescope.builtin").find_files({
        prompt_title = "< VimRC >",
        cwd = "~/.config/nvim/",
        hidden = true,
    })
end

local function set_background(content)
    vim.fn.system(
        "dconf write /home/henryc/Imágenes/ \"'"
            .. content
            .. "'\""
    )
end

local function select_background(prompt_bufnr, map)
    local function set_the_background(close)
        local content = require("telescope.actions.state").get_selected_entry(
            prompt_bufnr
        )
        set_background(content.cwd .. "/" .. content.value)
        if close then
            require("telescope.actions").close(prompt_bufnr)
        end
    end

    map("i", "<C-p>", function()
        set_the_background()
    end)

    map("i", "<CR>", function()
        set_the_background(true)
    end)
end

local function image_selector(prompt, cwd)
    return function()
        require("telescope.builtin").find_files({
            prompt_title = prompt,
            cwd = cwd,

            attach_mappings = function(prompt_bufnr, map)
                select_background(prompt_bufnr, map)

                -- Please continue mapping (attaching additional key maps):
                -- Ctrl+n/p to move up and down the list.
                return true
            end,
        })
    end
end

M.anime_selector = image_selector("< Anime Bobs > ", "~/mnt/c/Users/henry/Pictures/Imagenes_fondo")

local function refactor(prompt_bufnr)
    local content = require("telescope.actions.state").get_selected_entry(
        prompt_bufnr
    )
    require("telescope.actions").close(prompt_bufnr)
    require("refactoring").refactor(content.value)
end

M.refactors = function()
    require("telescope.pickers").new({}, {
        prompt_title = "refactors",
        finder = require("telescope.finders").new_table({
            results = require("refactoring").get_refactors(),
        }),
        sorter = require("telescope.config").values.generic_sorter({}),
        attach_mappings = function(_, map)
            map("i", "<CR>", refactor)
            map("n", "<CR>", refactor)
            return true
        end
    }):find()
end

M.git_branches = function()
    require("telescope.builtin").git_branches({
        attach_mappings = function(_, map)
            map("i", "<c-d>", actions.git_delete_branch)
            map("n", "<c-d>", actions.git_delete_branch)
            return true
        end,
    })
end

M.file_browser_relative = function()
	return M.file_browser({ path = "%:p:h" })
end

M.file_browser = function(opts)
 opts = opts or {}

 opts = {
  path = opts.path,
  sorting_strategy = "ascending",
  scroll_strategy = "cycle",
  layout_config = {
   prompt_position = "top",
  },

  attach_mappings = function(prompt_bufnr, map)
   local current_picker = action_state.get_current_picker(prompt_bufnr)

   local modify_cwd = function(new_cwd)
    local finder = current_picker.finder

    finder.path = new_cwd
    finder.files = true
    current_picker:refresh(false, { reset_prompt = true })
   end

   map("n", "-", function()
    modify_cwd(current_picker.cwd .. "/..")
   end)

   map("i", "~", function()
    modify_cwd(vim.fn.expand("~"))
   end)

   map("n", "yy", function()
    local entry = action_state.get_selected_entry()
    vim.fn.setreg("+", entry.value)
   end)

   map("i", "<c-y>", fb_actions.create)

   return true
  end,
 }

	return require("telescope").extensions.file_browser.file_browser(opts)
end

return M
