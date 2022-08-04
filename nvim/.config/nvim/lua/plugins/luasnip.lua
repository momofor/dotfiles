local ls = require("luasnip")
local types = require("luasnip.util.types")
local s = ls.s
local fmt = require("luasnip.extras.fmt").fmt
local i = ls.insert_node
local c = ls.choice_node
local t = ls.text_node
local f = ls.function_node
local sn = ls.sn
local d = ls.dynamic_node

ls.config.set_config({
	history = true,
	-- Update more often, :h events for more info.
	updateevents = "TextChanged,TextChangedI",
	-- Snippets aren't automatically removed if their text is deleted.
	-- `delete_check_events` determines on which events (:h events) a check for
	-- deleted snippets is performed.
	-- This can be especially useful when `history` is enabled.
	delete_check_events = "TextChanged",
	ext_opts = {
		[types.choiceNode] = {
			active = {
				virt_text = { { "choiceNode", "Comment" } },
			},
		},
	},
	-- treesitter-hl has 100, use something higher (default is 200).
	ext_base_prio = 300,
	-- minimal increase in priority.
	ext_prio_increase = 1,
	enable_autosnippets = true,
	-- mapping for cutting selected text so it's usable as SELECT_DEDENT,
	-- SELECT_RAW or TM_SELECTED_TEXT (mapped via xmap).
	store_selection_keys = "<Tab>",
	-- luasnip uses this function to get the currently active filetype. This
	-- is the (rather uninteresting) default, but it's possible to use
	-- eg. treesitter for getting the current filetype by setting ft_func to
	-- require("luasnip.extras.filetype_functions").from_cursor (requires
	-- `nvim-treesitter/nvim-treesitter`). This allows correctly resolving
	-- the current filetype in eg. a markdown-code block or `vim.cmd()`.
	ft_func = function()
		return vim.split(vim.bo.filetype, ".", true)
	end,
})

vim.keymap.set("i", "<c-l>", function()
	if ls.choice_active() then
		ls.change_choice(1)
	end
end)

local same = function(index)
	return f(function(arg)
		return arg[1]
	end, { index })
end

local change_or_smth = function(index, type)
	return f(function(import_name)
		if type == 1 then
			local parts = string.gsub(import_name[1][1], "%.", "_")
			local returns = string.gsub(parts, "-", "_")
			return returns
		end
		if type == 2 then
			local noice = vim.split(import_name[1][1], ".", true)
			return noice[#noice] or ""
		end
	end, { index })
end

local get_result_type = function(position)
	return d(position, function()
		return sn(nil, t("example"))
	end, {})
end

ls.add_snippets("rust", {
	s("prl", fmt([[println!({},{});]], { i(1), i(2) })),
})

ls.add_snippets("lua", {
	s(
		"nreq",
		fmt([[local {} = require"{}"]], {
			c(2, { change_or_smth(1, 1), change_or_smth(1, 2) }),
			i(1),
		})
	),
})

ls.add_snippets("tex", {
	s(
		"beg",
		fmt(
			[[\begin{{{1}}}
	{2}
\end{{{3}}}]],
			{ i(1), i(2), same(1) }
		)
	),
})
vim.keymap.set("i", "<c-o>", function()
	ls.expand()
end)
