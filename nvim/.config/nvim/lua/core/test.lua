function set_colorscheme()
	vim.cmd "hi clear"
	vim.api.nvim_set_hl(0, "CmpItemAbbr", { fg = "#e5e9f0", bg = "NONE", ctermfg = 255, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "CmpItemAbbrMatch", { fg = "#88c0d0", bg = "NONE", ctermfg = 110, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "CmpItemAbbrMatchFuzzy", { fg = "#8fbcbb", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "CmpItemKind", { fg = "#d8dee9", bg = "NONE", ctermfg = 254, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "CmpItemMenu", { fg = "#d8dee9", bg = "NONE", ctermfg = 254, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "ColorColumn", { fg = "NONE", bg = "#3b4252", ctermfg = "NONE", ctermbg = 238 })
	vim.api.nvim_set_hl(0, "Cursor", { fg = "#2e3440", bg = "#d8dee9", ctermfg = 237, ctermbg = 254 })
	vim.api.nvim_set_hl(0, "CursorLine", { fg = "NONE", bg = "#3b4252", ctermfg = "NONE", ctermbg = 238 })
	vim.api.nvim_set_hl(0, "Error", { fg = "#d8dee9", bg = "#bf616a", ctermfg = 254, ctermbg = 131 })
	vim.api.nvim_set_hl(0, "LineNr", { fg = "#4c566a", bg = "NONE", ctermfg = 240, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "MatchParen", { fg = "#88c0d0", bg = "#4c566a", ctermfg = 110, ctermbg = 240 })
	vim.api.nvim_set_hl(0, "NonText", { fg = "#434c5e", bg = "NONE", ctermfg = 239, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "Normal", { fg = "#d8dee9", bg = "#2e3440", ctermfg = 254, ctermbg = 237 })
	vim.api.nvim_set_hl(0, "Pmenu", { fg = "#d8dee9", bg = "#434c5e", ctermfg = 254, ctermbg = 239 })
	vim.api.nvim_set_hl(0, "PmenuSbar", { fg = "#d8dee9", bg = "#434c5e", ctermfg = 254, ctermbg = 239 })
	vim.api.nvim_set_hl(0, "PmenuSel", { fg = "#88c0d0", bg = "#4c566a", ctermfg = 110, ctermbg = 240 })
	vim.api.nvim_set_hl(0, "PmenuThumb", { fg = "#88c0d0", bg = "#4c566a", ctermfg = 110, ctermbg = 240 })
	vim.api.nvim_set_hl(0, "SpecialKey", { fg = "#4c566a", bg = "NONE", ctermfg = 240, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "Visual", { fg = "NONE", bg = "#434c5e", ctermfg = "NONE", ctermbg = 239 })
	vim.api.nvim_set_hl(0, "VisualNOS", { fg = "NONE", bg = "#434c5e", ctermfg = "NONE", ctermbg = 239 })
	vim.api.nvim_set_hl(0, "QuickFixLine", { fg = "#2e3440", bg = "#ebcb8b", ctermfg = 237, ctermbg = 222 })
	vim.api.nvim_set_hl(0, "Terminal", { fg = "#eceff4", bg = "#2e3440", ctermfg = 255, ctermbg = 237 })
	vim.api.nvim_set_hl(0, "healthError", { fg = "#bf616a", bg = "#3b4252", ctermfg = 131, ctermbg = 238 })
	vim.api.nvim_set_hl(0, "healthSuccess", { fg = "#a3be8c", bg = "#3b4252", ctermfg = 144, ctermbg = 238 })
	vim.api.nvim_set_hl(0, "healthWarning", { fg = "#ebcb8b", bg = "#3b4252", ctermfg = 222, ctermbg = 238 })
	vim.api.nvim_set_hl(0, "CursorColumn", { fg = "NONE", bg = "#3b4252", ctermfg = "NONE", ctermbg = 238 })
	vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#d8dee9", bg = "NONE", ctermfg = 254, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "Folded", { fg = "#4c566a", bg = "#2e3440", ctermfg = 240, ctermbg = 237 })
	vim.api.nvim_set_hl(0, "FoldColumn", { fg = "#4c566a", bg = "#2e3440", ctermfg = 240, ctermbg = 237 })
	vim.api.nvim_set_hl(0, "SignColumn", { fg = "#3b4252", bg = "#2e3440", ctermfg = 238, ctermbg = 237 })
	vim.api.nvim_set_hl(0, "Directory", { fg = "#88c0d0", bg = "NONE", ctermfg = 110, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "EndOfBuffer", { fg = "#3b4252", bg = "NONE", ctermfg = 238, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "ErrorMsg", { fg = "#d8dee9", bg = "#bf616a", ctermfg = 254, ctermbg = 131 })
	vim.api.nvim_set_hl(0, "ModeMsg", { fg = "#d8dee9", bg = "NONE", ctermfg = 254, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "MoreMsg", { fg = "#88c0d0", bg = "NONE", ctermfg = 110, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "Question", { fg = "#d8dee9", bg = "NONE", ctermfg = 254, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "StatusLine", { fg = "#eceff4", bg = "#4c566a", ctermfg = 255, ctermbg = 240 })
	vim.api.nvim_set_hl(0, "StatusLineNC", { fg = "#d8dee9", bg = "#4c566a", ctermfg = 254, ctermbg = 240 })
	vim.api.nvim_set_hl(0, "StatusLineTerm", { fg = "#88c0d0", bg = "#4c566a", ctermfg = 110, ctermbg = 240 })
	vim.api.nvim_set_hl(0, "StatusLineTermNC", { fg = "#d8dee9", bg = "#4c566a", ctermfg = 254, ctermbg = 240 })
	vim.api.nvim_set_hl(0, "WarningMsg", { fg = "#2e3440", bg = "#ebcb8b", ctermfg = 237, ctermbg = 222 })
	vim.api.nvim_set_hl(0, "WildMenu", { fg = "#88c0d0", bg = "#3b4252", ctermfg = 110, ctermbg = 238 })
	vim.api.nvim_set_hl(
		0,
		"IncSearch",
		{ fg = "#2e3440", bg = "#ebcb8b", ctermfg = 237, ctermbg = 222, underline = true }
	)
	vim.api.nvim_set_hl(0, "Search", { fg = "#2e3440", bg = "#ebcb8b", ctermfg = 237, ctermbg = 222 })
	vim.api.nvim_set_hl(0, "TabLine", { fg = "#d8dee9", bg = "#3b4252", ctermfg = 254, ctermbg = 238 })
	vim.api.nvim_set_hl(0, "TabLineFill", { fg = "#d8dee9", bg = "#3b4252", ctermfg = 254, ctermbg = 238 })
	vim.api.nvim_set_hl(0, "TabLineSel", { fg = "#88c0d0", bg = "#4c566a", ctermfg = 110, ctermbg = 240 })
	vim.api.nvim_set_hl(0, "Title", { fg = "#d8dee9", bg = "NONE", ctermfg = 254, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "VertSplit", { fg = "#434c5e", bg = "#2e3440", ctermfg = 239, ctermbg = 237 })
	vim.api.nvim_set_hl(0, "Boolean", { fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "Character", { fg = "#a3be8c", bg = "NONE", ctermfg = 144, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "Comment", { fg = "#616e88", bg = "NONE", ctermfg = 60, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "Conditional", { fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "Constant", {
		fg = "#8fbcbb",
		bg = "NONE",
		ctermfg = 109,
		ctermbg = "NONE",
		italic = vim.fn.exists "vim.g.aurora_italic" == 1,
	})
	vim.api.nvim_set_hl(0, "Define", { fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(
		0,
		"Delimeter",
		{ fg = "#8fbcbb", bg = "NONE", ctermfg = 109, ctermbg = "NONE", bold = vim.fn.exists "vim.g.aurora_bold" == 1 }
	)
	vim.api.nvim_set_hl(0, "Exception", { fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "Float", { fg = "#b48ead", bg = "NONE", ctermfg = 139, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "Function", {
		fg = "#8fbcbb",
		bg = "NONE",
		ctermfg = 109,
		ctermbg = "NONE",
		bold = vim.fn.exists "vim.g.aurora_bold" == 1,
		italic = true,
	})
	vim.api.nvim_set_hl(0, "Identifier", {
		fg = "#81a1c1",
		bg = "NONE",
		ctermfg = 109,
		ctermbg = "NONE",
		italic = vim.fn.exists "vim.g.aurora_italic" == 1,
	})
	vim.api.nvim_set_hl(0, "Include", { fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "Keyword", { fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "Label", { fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "Number", { fg = "#b48ead", bg = "NONE", ctermfg = 139, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "Operator", { fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "PreProc", { fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "Repeat", { fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "Special", { fg = "#8fbcbb", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "SpecialChar", { fg = "#ebcb8b", bg = "NONE", ctermfg = 222, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "SpecialComment", {
		fg = "#88c0d0",
		bg = "NONE",
		ctermfg = 110,
		ctermbg = "NONE",
		italic = vim.fn.exists "vim.g.aurora_italic" == 1,
	})
	vim.api.nvim_set_hl(
		0,
		"Statement",
		{ fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE", bold = vim.fn.exists "vim.g.aurora_bold" == 1 }
	)
	vim.api.nvim_set_hl(0, "StorageClass", { fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "String", { fg = "#a3be8c", bg = "NONE", ctermfg = 144, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "Structure", { fg = "#ebcb8b", bg = "NONE", ctermfg = 222, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "Tag", { fg = "#88c0d0", bg = "NONE", ctermfg = 110, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "Todo", { fg = "#ebcb8b", bg = "NONE", ctermfg = 222, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "Type", { fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "Typedef", { fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "Macro", { fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "PreCondit", { fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "DiffAdd", { fg = "#a3be8c", bg = "#3b4252", ctermfg = 144, ctermbg = 238 })
	vim.api.nvim_set_hl(0, "DiffChange", { fg = "#ebcb8b", bg = "#3b4252", ctermfg = 222, ctermbg = 238 })
	vim.api.nvim_set_hl(0, "DiffDelete", { fg = "#bf616a", bg = "#3b4252", ctermfg = 131, ctermbg = 238 })
	vim.api.nvim_set_hl(0, "DiffText", { fg = "#81a1c1", bg = "#3b4252", ctermfg = 109, ctermbg = 238 })
	vim.api.nvim_set_hl(0, "diffAdded", { fg = "#a3be8c", bg = "#3b4252", ctermfg = 144, ctermbg = 238 })
	vim.api.nvim_set_hl(0, "diffChanged", { fg = "#ebcb8b", bg = "#3b4252", ctermfg = 222, ctermbg = 238 })
	vim.api.nvim_set_hl(0, "diffRemoved", { fg = "#bf616a", bg = "#3b4252", ctermfg = 131, ctermbg = 238 })
	vim.api.nvim_set_hl(0, "diffFileId", {
		fg = "#5e81ac",
		bg = "NONE",
		ctermfg = 67,
		ctermbg = "NONE",
		bold = vim.fn.exists "vim.g.aurora_bold" == 1,
		reverse = true,
	})
	vim.api.nvim_set_hl(0, "diffFile", { fg = "#3b4048", bg = "NONE", ctermfg = 238, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "diffNewFile", { fg = "#a3be8c", bg = "NONE", ctermfg = 144, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "diffOldFile", { fg = "#bf616a", bg = "NONE", ctermfg = 131, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "gitconfigVariable", { fg = "#8fbcbb", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "debugPc", { fg = "NONE", bg = "#8fbcbb", ctermfg = "NONE", ctermbg = 109 })
	vim.api.nvim_set_hl(
		0,
		"debugBreakpoint",
		{ fg = "#bf616a", bg = "NONE", ctermfg = 131, ctermbg = "NONE", reverse = true }
	)
	vim.api.nvim_set_hl(
		0,
		"TSSelector",
		{ fg = "#8fbcbb", bg = "NONE", ctermfg = 109, ctermbg = "NONE", bold = vim.fn.exists "vim.g.aurora_bold" == 1 }
	)
	vim.api.nvim_set_hl(
		0,
		"TSError",
		{ fg = "#bf616a", bg = "NONE", ctermfg = 131, ctermbg = "NONE", underline = true }
	)
	vim.api.nvim_set_hl(0, "TSPunctDelimiter", { fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TSPunctBracket", { fg = "#8fbcbb", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TSPunctSpecial", { fg = "#8fbcbb", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TSConstant", {
		fg = "#88c0d0",
		bg = "NONE",
		ctermfg = 110,
		ctermbg = "NONE",
		italic = vim.fn.exists "vim.g.aurora_italic" == 1,
	})
	vim.api.nvim_set_hl(0, "TSConstBuiltin", { fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TSConstMacro", { fg = "#8fbcbb", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TSStringRegex", { fg = "#a3be8c", bg = "NONE", ctermfg = 144, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TSString", { fg = "#a3be8c", bg = "NONE", ctermfg = 144, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TSStringEscape", { fg = "#88c0d0", bg = "NONE", ctermfg = 110, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TSCharacter", { fg = "#a3be8c", bg = "NONE", ctermfg = 144, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TSNumber", { fg = "#b48ead", bg = "NONE", ctermfg = 139, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TSBoolean", { fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TSFloat", { fg = "#b48ead", bg = "NONE", ctermfg = 139, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TSAnnotation", { fg = "#d08770", bg = "NONE", ctermfg = 173, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TSAttribute", { fg = "#88c0d0", bg = "NONE", ctermfg = 110, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TSNamespace", { fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TSFuncBuiltin", { fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TSFunction", {
		fg = "#88c0d0",
		bg = "NONE",
		ctermfg = 110,
		ctermbg = "NONE",
		italic = vim.fn.exists "vim.g.aurora_italic" == 1,
	})
	vim.api.nvim_set_hl(0, "TSFuncMacro", { fg = "#88c0d0", bg = "NONE", ctermfg = 110, ctermbg = "NONE" })
	vim.api.nvim_set_hl(
		0,
		"TSParameter",
		{ fg = "#8fbcbb", bg = "NONE", ctermfg = 109, ctermbg = "NONE", bold = vim.fn.exists "vim.g.aurora_bold" == 1 }
	)
	vim.api.nvim_set_hl(0, "TSParameterReference", { fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TSMethod", { fg = "#8fbcbb", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TSField", {
		fg = "#8fbcbb",
		bg = "NONE",
		ctermfg = 109,
		ctermbg = "NONE",
		italic = vim.fn.exists "vim.g.aurora_italic" == 1,
	})
	vim.api.nvim_set_hl(0, "TSProperty", { fg = "#88c0d0", bg = "NONE", ctermfg = 110, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TSConstructor", { fg = "#8fbcbb", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TSConditional", { fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TSRepeat", { fg = "#b48ead", bg = "NONE", ctermfg = 139, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TSLabel", { fg = "#88c0d0", bg = "NONE", ctermfg = 110, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TSKeyword", { fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TSKeywordFunction", { fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TSKeywordOperator", { fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TSOperator", { fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TSException", { fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TSType", { fg = "#8fbcbb", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TSTypeBuiltin", {
		fg = "#81a1c1",
		bg = "NONE",
		ctermfg = 109,
		ctermbg = "NONE",
		bold = vim.fn.exists "vim.g.aurora_bold" == 1,
		italic = true,
	})
	vim.api.nvim_set_hl(0, "TSStructure", { fg = "#ff00ff", bg = "NONE", ctermfg = 201, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TSInclude", { fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TSVariable", {
		fg = "#88c0d0",
		bg = "NONE",
		ctermfg = 110,
		ctermbg = "NONE",
		italic = vim.fn.exists "vim.g.aurora_italic" == 1,
	})
	vim.api.nvim_set_hl(0, "TSVariableBuiltin", {
		fg = "#81a1c1",
		bg = "NONE",
		ctermfg = 109,
		ctermbg = "NONE",
		italic = vim.fn.exists "vim.g.aurora_italic" == 1,
	})
	vim.api.nvim_set_hl(
		0,
		"TSText",
		{ fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE", bold = vim.fn.exists "vim.g.aurora_bold" == 1 }
	)
	vim.api.nvim_set_hl(0, "TSStrong", { fg = "#ffff00", bg = "NONE", ctermfg = 226, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TSEmphasis", { fg = "#ffff00", bg = "NONE", ctermfg = 226, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TSUnderline", { fg = "#ffff00", bg = "NONE", ctermfg = 226, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TSTitle", { fg = "#88c0d0", bg = "NONE", ctermfg = 110, ctermbg = "NONE" })
	vim.api.nvim_set_hl(
		0,
		"TSLiteral",
		{ fg = "#a3be8c", bg = "NONE", ctermfg = 144, ctermbg = "NONE", bold = vim.fn.exists "vim.g.aurora_bold" == 1 }
	)
	vim.api.nvim_set_hl(0, "TSURI", { fg = "#8fbcbb", bg = "NONE", ctermfg = 109, ctermbg = "NONE", underline = true })
	vim.api.nvim_set_hl(0, "TSTag", { fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TSTagDelimiter", { fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "htmlArg", { fg = "#8fbcbb", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(
		0,
		"htmlBold",
		{ fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE", bold = vim.fn.exists "vim.g.aurora_bold" == 1 }
	)
	vim.api.nvim_set_hl(
		0,
		"htmlB",
		{ fg = "#5e81ac", bg = "NONE", ctermfg = 67, ctermbg = "NONE", bold = vim.fn.exists "vim.g.aurora_bold" == 1 }
	)
	vim.api.nvim_set_hl(0, "htmlEndTag", { fg = "#5e81ac", bg = "NONE", ctermfg = 67, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "htmlH1", { fg = "#8fbcbb", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "htmlH2", { fg = "#8fbcbb", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "htmlH3", { fg = "#8fbcbb", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "htmlH4", { fg = "#8fbcbb", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "htmlH5", { fg = "#8fbcbb", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "htmlH6", { fg = "#8fbcbb", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "htmlItalic", {
		fg = "#81a1c1",
		bg = "NONE",
		ctermfg = 109,
		ctermbg = "NONE",
		italic = vim.fn.exists "vim.g.aurora_italic" == 1,
	})
	vim.api.nvim_set_hl(
		0,
		"htmlLink",
		{ fg = "#8fbcbb", bg = "NONE", ctermfg = 109, ctermbg = "NONE", underline = true }
	)
	vim.api.nvim_set_hl(
		0,
		"htmlSpecialChar",
		{ fg = "#d8dee9", bg = "NONE", ctermfg = 254, ctermbg = "NONE", bold = vim.fn.exists "vim.g.aurora_bold" == 1 }
	)
	vim.api.nvim_set_hl(0, "htmlSpecialTagName", { fg = "#8fbcbb", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "htmlTag", { fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "htmlTagN", { fg = "#a3be8c", bg = "NONE", ctermfg = 144, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "htmlTagName", { fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(
		0,
		"htmlTitle",
		{ fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE", bold = vim.fn.exists "vim.g.aurora_bold" == 1 }
	)
	vim.api.nvim_set_hl(0, "htmlClass", {
		fg = "#b48ead",
		bg = "NONE",
		ctermfg = 139,
		ctermbg = "NONE",
		italic = vim.fn.exists "vim.g.aurora_italic" == 1,
	})
	vim.api.nvim_set_hl(
		0,
		"cssIdentifier",
		{ fg = "#a3be8c", bg = "NONE", ctermfg = 144, ctermbg = "NONE", bold = vim.fn.exists "vim.g.aurora_bold" == 1 }
	)
	vim.api.nvim_set_hl(0, "cssColor", { fg = "#b48ead", bg = "NONE", ctermfg = 139, ctermbg = "NONE" })
	vim.api.nvim_set_hl(
		0,
		"cssAttributeSpecificity",
		{ fg = "#5e81ac", bg = "NONE", ctermfg = 67, ctermbg = "NONE", bold = vim.fn.exists "vim.g.aurora_bold" == 1 }
	)
	vim.api.nvim_set_hl(0, "cssProp", {
		fg = "#8fbcbb",
		bg = "NONE",
		ctermfg = 109,
		ctermbg = "NONE",
		italic = vim.fn.exists "vim.g.aurora_italic" == 1,
	})
	vim.api.nvim_set_hl(
		0,
		"cssClassName",
		{ fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE", bold = vim.fn.exists "vim.g.aurora_bold" == 1 }
	)
	vim.api.nvim_set_hl(0, "cssPseudoClass", { fg = "#d08770", bg = "NONE", ctermfg = 173, ctermbg = "NONE" })
	vim.api.nvim_set_hl(
		0,
		"cssPseudoClassId",
		{ fg = "#ebcb8b", bg = "NONE", ctermfg = 222, ctermbg = "NONE", bold = vim.fn.exists "vim.g.aurora_bold" == 1 }
	)
	vim.api.nvim_set_hl(
		0,
		"luaIdentifier",
		{ fg = "#88c0d0", bg = "NONE", ctermfg = 110, ctermbg = "NONE", bold = vim.fn.exists "vim.g.aurora_bold" == 1 }
	)
	vim.api.nvim_set_hl(0, "markdownBlockquote", { fg = "#5c6370", bg = "NONE", ctermfg = 241, ctermbg = "NONE" })
	vim.api.nvim_set_hl(
		0,
		"markdownBold",
		{ fg = "#88c0d0", bg = "NONE", ctermfg = 110, ctermbg = "NONE", bold = vim.fn.exists "vim.g.aurora_bold" == 1 }
	)
	vim.api.nvim_set_hl(0, "markdownCode", { fg = "#a3be8c", bg = "NONE", ctermfg = 144, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "markdownCodeBlock", { fg = "#a3be8c", bg = "NONE", ctermfg = 144, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "markdownCodeDelimiter", { fg = "#a3be8c", bg = "NONE", ctermfg = 144, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "markdownH1", { fg = "#5e81ac", bg = "NONE", ctermfg = 67, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "markdownH2", { fg = "#5e81ac", bg = "NONE", ctermfg = 67, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "markdownH3", { fg = "#5e81ac", bg = "NONE", ctermfg = 67, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "markdownH4", { fg = "#5e81ac", bg = "NONE", ctermfg = 67, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "markdownH5", { fg = "#5e81ac", bg = "NONE", ctermfg = 67, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "markdownH6", { fg = "#5e81ac", bg = "NONE", ctermfg = 67, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "markdownHeadingDelimiter", { fg = "#bf616a", bg = "NONE", ctermfg = 131, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "markdownHeadingRule", { fg = "#5c6370", bg = "NONE", ctermfg = 241, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "markdownId", { fg = "#b48ead", bg = "NONE", ctermfg = 139, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "markdownIdDeclaration", { fg = "#5e81ac", bg = "NONE", ctermfg = 67, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "markdownIdDelimiter", { fg = "#b48ead", bg = "NONE", ctermfg = 139, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "markdownItalic", {
		fg = "#b48ead",
		bg = "NONE",
		ctermfg = 139,
		ctermbg = "NONE",
		italic = vim.fn.exists "vim.g.aurora_italic" == 1,
	})
	vim.api.nvim_set_hl(0, "markdownLinkDelimiter", { fg = "#b48ead", bg = "NONE", ctermfg = 139, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "markdownLinkText", { fg = "#5e81ac", bg = "NONE", ctermfg = 67, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "markdownListMarker", { fg = "#bf616a", bg = "NONE", ctermfg = 131, ctermbg = "NONE" })
	vim.api.nvim_set_hl(
		0,
		"markdownOrdenord11ListMarker",
		{ fg = "#bf616a", bg = "NONE", ctermfg = 131, ctermbg = "NONE" }
	)
	vim.api.nvim_set_hl(0, "markdownRule", { fg = "#5c6370", bg = "NONE", ctermfg = 241, ctermbg = "NONE" })
	vim.api.nvim_set_hl(
		0,
		"markdownUrl",
		{ fg = "#8fbcbb", bg = "NONE", ctermfg = 109, ctermbg = "NONE", underline = true }
	)
	vim.api.nvim_set_hl(0, "CocExplorerIndentLine", { fg = "#5c6370", bg = "NONE", ctermfg = 241, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "CocExplorerBufferRoot", { fg = "#8fbcbb", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "CocExplorerFileRoot", { fg = "#8fbcbb", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(
		0,
		"CocExplorerBufferFullPath",
		{ fg = "#5c6370", bg = "NONE", ctermfg = 241, ctermbg = "NONE" }
	)
	vim.api.nvim_set_hl(0, "CocExplorerFileFullPath", { fg = "#5c6370", bg = "NONE", ctermfg = 241, ctermbg = "NONE" })
	vim.api.nvim_set_hl(
		0,
		"CocExplorerBufferReadonly",
		{ fg = "#b48ead", bg = "NONE", ctermfg = 139, ctermbg = "NONE" }
	)
	vim.api.nvim_set_hl(
		0,
		"CocExplorerBufferModified",
		{ fg = "#b48ead", bg = "NONE", ctermfg = 139, ctermbg = "NONE" }
	)
	vim.api.nvim_set_hl(
		0,
		"CocExplorerBufferNameVisible",
		{ fg = "#d08770", bg = "NONE", ctermfg = 173, ctermbg = "NONE" }
	)
	vim.api.nvim_set_hl(0, "CocExplorerFileReadonly", { fg = "#b48ead", bg = "NONE", ctermfg = 139, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "CocExplorerFileModified", { fg = "#b48ead", bg = "NONE", ctermfg = 139, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "CocExplorerFileHidden", { fg = "#5c6370", bg = "NONE", ctermfg = 241, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "CocExplorerHelpLine", { fg = "#b48ead", bg = "NONE", ctermfg = 139, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "CocErrorSign", { fg = "#bf616a", bg = "NONE", ctermfg = 131, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "CocWarningSign", { fg = "#ebcb8b", bg = "NONE", ctermfg = 222, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "CocInfoSign", { fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "CocHintSign", { fg = "#ebcb8b", bg = "NONE", ctermfg = 222, ctermbg = "NONE" })
	vim.api.nvim_set_hl(
		0,
		"EasyMotionTarget",
		{ fg = "#bf616a", bg = "NONE", ctermfg = 131, ctermbg = "NONE", bold = vim.fn.exists "vim.g.aurora_bold" == 1 }
	)
	vim.api.nvim_set_hl(
		0,
		"EasyMotionTarget2First",
		{ fg = "#bf616a", bg = "NONE", ctermfg = 131, ctermbg = "NONE", bold = vim.fn.exists "vim.g.aurora_bold" == 1 }
	)
	vim.api.nvim_set_hl(
		0,
		"EasyMotionTarget2Second",
		{ fg = "#bf616a", bg = "NONE", ctermfg = 131, ctermbg = "NONE", bold = vim.fn.exists "vim.g.aurora_bold" == 1 }
	)
	vim.api.nvim_set_hl(0, "EasyMotionShade", { fg = "NONE", bg = "NONE", ctermfg = "NONE", ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "StartifyNumber", { fg = "#88c0d0", bg = "NONE", ctermfg = 110, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "StartifySelect", { fg = "#a3be8c", bg = "NONE", ctermfg = 144, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "StartifyBracket", { fg = "#d8dee9", bg = "NONE", ctermfg = 254, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "StartifySpecial", { fg = "#8fbcbb", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "StartifyVar", { fg = "#8fbcbb", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "StartifyPath", { fg = "#88c0d0", bg = "NONE", ctermfg = 110, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "StartifyFile", { fg = "#a3be8c", bg = "NONE", ctermfg = 144, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "StartifySlash", { fg = "#d8dee9", bg = "NONE", ctermfg = 254, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "StartifyHeader", { fg = "#88c0d0", bg = "NONE", ctermfg = 110, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "StartifySection", { fg = "#d8dee9", bg = "NONE", ctermfg = 254, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "StartifyFooter", { fg = "#a3be8c", bg = "NONE", ctermfg = 144, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "WhichKey", { fg = "#b48ead", bg = "NONE", ctermfg = 139, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "WhichKeySeperator", { fg = "#a3be8c", bg = "NONE", ctermfg = 144, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "WhichKeyGroup", { fg = "#8fbcbb", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "WhichKeyDesc", { fg = "#8fbcbb", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "GitGutterAdd", { fg = "#a3be8c", bg = "NONE", ctermfg = 144, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "GitGutterChange", { fg = "#ebcb8b", bg = "NONE", ctermfg = 222, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "GitGutterChangeDelete", { fg = "#bf616a", bg = "NONE", ctermfg = 131, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "GitGutterDelete", { fg = "#bf616a", bg = "NONE", ctermfg = 131, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "gitcommitDiscardedFile", { fg = "#bf616a", bg = "NONE", ctermfg = 131, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "gitcommitSelectedFile", { fg = "#a3be8c", bg = "NONE", ctermfg = 144, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "gitcommitUntrackedFile", { fg = "#bf616a", bg = "NONE", ctermfg = 131, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "LSPDiagnosticsWarning", { fg = "#ebcb8b", bg = "NONE", ctermfg = 222, ctermbg = "NONE" })
	vim.api.nvim_set_hl(
		0,
		"LspDiagnosticsDefaultError",
		{ fg = "#bf616a", bg = "NONE", ctermfg = 131, ctermbg = "NONE" }
	)
	vim.api.nvim_set_hl(
		0,
		"LspDiagnosticsInformation",
		{ fg = "#88c0d0", bg = "NONE", ctermfg = 110, ctermbg = "NONE" }
	)
	vim.api.nvim_set_hl(0, "LspDiagnosticsHint", { fg = "#5e81ac", bg = "NONE", ctermfg = 67, ctermbg = "NONE" })
	vim.api.nvim_set_hl(
		0,
		"LspDiagnosticsUnderlineWarning",
		{ fg = "#ebcb8b", bg = "NONE", ctermfg = 222, ctermbg = "NONE" }
	)
	vim.api.nvim_set_hl(
		0,
		"LspDiagnosticsUnderlineError",
		{ fg = "#bf616a", bg = "NONE", ctermfg = 131, ctermbg = "NONE" }
	)
	vim.api.nvim_set_hl(
		0,
		"LspDiagnosticsUnderlineInformation",
		{ fg = "#88c0d0", bg = "NONE", ctermfg = 110, ctermbg = "NONE" }
	)
	vim.api.nvim_set_hl(
		0,
		"LspDiagnosticsUnderlineHint",
		{ fg = "#5e81ac", bg = "NONE", ctermfg = 67, ctermbg = "NONE" }
	)
	vim.api.nvim_set_hl(0, "TelescopeSelection", { fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TelescopeSelectionCaret", { fg = "#d8dee9", bg = "NONE", ctermfg = 254, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TelescopeMultiSelection", { fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TelescopeNormal", { fg = "#d8dee9", bg = "NONE", ctermfg = 254, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TelescopeBorder", { fg = "#3b4252", bg = "NONE", ctermfg = 238, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TelescopePromptBorder", { fg = "#3b4252", bg = "NONE", ctermfg = 238, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TelescopeResultsBorder", { fg = "#3b4252", bg = "NONE", ctermfg = 238, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TelescopePreviewBorder", { fg = "#3b4252", bg = "NONE", ctermfg = 238, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TelescopeMatching", { fg = "#88c0d0", bg = "NONE", ctermfg = 110, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TelescopePromptPrefix", { fg = "#8fbcbb", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "BufferCurrentMod", { fg = "#a3be8c", bg = "NONE", ctermfg = 144, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "TargetWord", { fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(
		0,
		"LspSagaCodeActionTitle",
		{ fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE", bold = vim.fn.exists "vim.g.aurora_bold" == 1 }
	)
	vim.api.nvim_set_hl(0, "LspSagaCodeActionContent", { fg = "#88c0d0", bg = "NONE", ctermfg = 110, ctermbg = "NONE" })
	vim.api.nvim_set_hl(
		0,
		"LspSagaRenamePromptPrefix",
		{ fg = "#d8dee9", bg = "NONE", ctermfg = 254, ctermbg = "NONE" }
	)
	vim.api.nvim_set_hl(0, "makeCommands", { fg = "#81a1c1", bg = "NONE", ctermfg = 109, ctermbg = "NONE" })
	vim.api.nvim_set_hl(0, "makeSpecial", { fg = "#b48ead", bg = "NONE", ctermfg = 139, ctermbg = "NONE" })
	vim.api.nvim_set_hl(
		0,
		"NeorgMarkupBold",
		{ fg = "NONE", bg = "NONE", ctermfg = "NONE", ctermbg = "NONE", bold = vim.fn.exists "vim.g.aurora_bold" == 1 }
	)
	vim.api.nvim_set_hl(0, "Neorg__notfound", { fg = "#2e3440", bg = "NONE", ctermfg = 237, ctermbg = "NONE" })
	vim.api.nvim_set_hl(
		0,
		"NeorgDefinitionTitle",
		{ fg = "#88c0d0", bg = "NONE", ctermfg = 110, ctermbg = "NONE", bold = vim.fn.exists "vim.g.aurora_bold" == 1 }
	)
	vim.api.nvim_set_hl(0, "NeorgDefinitionContent", { fg = "#a3be8c", bg = "NONE", ctermfg = 144, ctermbg = "NONE" })
	vim.api.nvim_set_hl(
		0,
		"NeorgMarkupUnderline",
		{ fg = "NONE", bg = "NONE", ctermfg = "NONE", ctermbg = "NONE", underline = true }
	)
	vim.api.nvim_set_hl(0, "NeorgMarkupItalic", {
		fg = "NONE",
		bg = "NONE",
		ctermfg = "NONE",
		ctermbg = "NONE",
		italic = vim.fn.exists "vim.g.aurora_italic" == 1,
	})
end

set_colorscheme()
