local vim = vim

local M = {}

M.classic = {
  name = "monokai",
  base1 = "#272a30",
  base2 = "#26292C",
  base3 = "#2E323C",
  base4 = "#333842",
  base5 = "#4d5154",
  base6 = "#9ca0a4",
  base7 = "#b1b1b1",
  border = "#a1b5b1",
  brown = "#504945",
  white = "#f8f8f0",
  grey = "#8F908A",
  black = "#000000",
  pink = "#f92672",
  green = "#a6e22e",
  aqua = "#66d9ef",
  yellow = "#e6db74",
  orange = "#fd971f",
  purple = "#ae81ff",
  red = "#e95678",
  diff_add = "#3d5213",
  diff_remove = "#4a0f23",
  diff_change = "#27406b",
  diff_text = "#23324d"
}

M.pro = {
  name = "monokai_pro",
  base1 = "#211F22",
  base2 = "#26292C",
  base3 = "#2E323C",
  base4 = "#333842",
  base5 = "#4d5154",
  base6 = "#72696A",
  base7 = "#B1B1B1",
  border = "#A1B5B1",
  brown = "#504945",
  white = "#FFF1F3",
  grey = "#72696A",
  black = "#000000",
  pink = "#FF6188",
  green = "#A9DC76",
  aqua = "#78DCE8",
  yellow = "#FFD866",
  orange = "#FC9867",
  purple = "#AB9DF2",
  red = "#FD6883",
  diff_add = "#3d5213",
  diff_remove = "#4a0f23",
  diff_change = "#27406b",
  diff_text = "#23324d"
}

M.soda = {
  name = "monokai_soda",
  base1 = "#211F22",
  base2 = "#26292C",
  base3 = "#2E323C",
  base4 = "#333842",
  base5 = "#4d5154",
  base6 = "#72696A",
  base7 = "#B1B1B1",
  border = "#A1B5B1",
  brown = "#504945",
  white = "#f6f6ec",
  grey = "#72696A",
  black = "#000000",
  pink = "#f3005f",
  green = "#97e023",
  aqua = "#78DCE8",
  yellow = " #dfd561",
  orange = "#fa8419",
  purple = "#9c64fe",
  red = "#f3005f",
  diff_add = "#3d5213",
  diff_remove = "#4a0f23",
  diff_change = "#27406b",
  diff_text = "#23324d"
}

M.highlight = function(group, color)
  local style = color.style and "gui=" .. color.style or "gui=NONE"
  local fg = color.fg and "guifg = " .. color.fg or "guifg = NONE"
  local bg = color.bg and "guibg = " .. color.bg or "guibg = NONE"
  local sp = color.sp and "guisp = " .. color.sp or ""
  vim.cmd("highlight " .. group .. " " .. style .. " " .. fg .. " " .. bg .. " " .. sp)
end

M.load_syntax = function(palette)
  return {
    Normal = {
      fg = palette.white,
      bg = palette.none
    },
    NormalFloat = {
      bg = palette.base1
    },
    Pmenu = {
      fg = palette.white,
      bg = palette.base3
    },
    PmenuSel = {
      fg = palette.base4,
      bg = palette.orange
    },
    PmenuSelBold = {
      fg = palette.base4,
      bg = palette.orange
    },
    PmenuThumb = {
      fg = palette.purple,
      bg = palette.green
    },
    PmenuSbar = {
      bg = palette.base3
    },
    Cursor = {
      style = "reverse"
    },
    ColorColumn = {
      bg = palette.base3
    },
    CursorLine = {
      bg = palette.base3
    },
    NonText = {
      fg = palette.base5
    },
    Visual = {
      bg = palette.base4
    },
    VisualNOS = {
      bg = palette.base3
    },
    Search = {
      fg = palette.base2,
      bg = palette.yellow
    },
    IncSearch = {
      fg = palette.base2,
      bg = palette.yellow
    },
    CursorLineNr = {
      fg = palette.orange,
      bg = palette.base2
    },
    MatchParen = {
      fg = palette.pink
    },
    Question = {
      fg = palette.yellow
    },
    ModeMsg = {
      fg = palette.white,
      style = "bold"
    },
    MoreMsg = {
      fg = palette.white,
      style = "bold"
    },
    ErrorMsg = {
      fg = palette.red,
      style = "bold"
    },
    WarningMsg = {
      fg = palette.yellow,
      style = "bold"
    },
    VertSplit = {
      fg = palette.brown
    },
    LineNr = {
      fg = palette.base5,
      bg = palette.base2
    },
    SignColumn = {
      fg = palette.white,
      bg = palette.base2
    },
    StatusLine = {
      fg = palette.base7,
      bg = palette.base3
    },
    StatusLineNC = {
      fg = palette.grey,
      bg = palette.base3
    },
    TabLine = {
      bg = palette.base1
    },
    TabLineFill = {},
    TabLineSel = {
      bg = palette.base4
    },
    SpellBad = {
      fg = palette.red,
      style = "undercurl"
    },
    SpellCap = {
      fg = palette.purple,
      style = "undercurl"
    },
    SpellRare = {
      fg = palette.aqua,
      style = "undercurl"
    },
    SpellLocal = {
      fg = palette.pink,
      style = "undercurl"
    },
    SpecialKey = {
      fg = palette.pink
    },
    Title = {
      fg = palette.yellow,
      style = "bold"
    },
    Directory = {
      fg = palette.aqua
    },
    DiffAdd = {
      bg = palette.diff_add,
      fg = palette.white
    },
    DiffDelete = {
      bg = palette.diff_remove,
      fg = palette.white
    },
    DiffChange = {
      bg = palette.diff_change,
      fg = palette.white
    },
    DiffText = {
      bg = palette.diff_text
    },
    diffAdded = {
      fg = palette.green
    },
    diffRemoved = {
      fg = palette.pink
    },
    Folded = {
      fg = palette.grey,
      bg = palette.base3
    },
    FoldColumn = {
      fg = palette.white,
      bg = palette.black
    },
    Constant = {
      fg = palette.aqua
    },
    Number = {
      fg = palette.purple
    },
    Float = {
      fg = palette.purple
    },
    Boolean = {
      fg = palette.purple
    },
    Character = {
      fg = palette.yellow
    },
    String = {
      fg = palette.yellow
    },
    Type = {
      fg = palette.aqua
    },
    Structure = {
      fg = palette.aqua
    },
    StorageClass = {
      fg = palette.aqua
    },
    Typedef = {
      fg = palette.aqua
    },
    Identifier = {
      fg = palette.white
    },
    Function = {
      fg = palette.green,
      style = "italic"
    },
    Statement = {
      fg = palette.pink
    },
    Operator = {
      fg = palette.pink
    },
    Label = {
      fg = palette.pink
    },
    Keyword = {
      fg = palette.pink,
      style = "italic"
    },
    PreProc = {
      fg = palette.green
    },
    Include = {
      fg = palette.pink
    },
    Define = {
      fg = palette.pink
    },
    Macro = {
      fg = palette.pink
    },
    PreCondit = {
      fg = palette.pink
    },
    Special = {
      fg = palette.white
    },
    SpecialChar = {
      fg = palette.pink
    },
    Delimiter = {
      fg = palette.white
    },
    SpecialComment = {
      fg = palette.grey,
      style = "italic"
    },
    Tag = {
      fg = palette.orange
    },
    Todo = {
      fg = palette.orange
    },
    Comment = {
      fg = palette.base6,
      style = "italic"
    },
    Underlined = {
      style = "underline"
    },
    Ignore = {},
    Error = {
      fg = palette.red
    },
    Terminal = {
      fg = palette.white,
      bg = palette.base2
    },
    EndOfBuffer = {
      fg = palette.base2
    },
    Conceal = {
      fg = palette.grey
    },
    vCursor = {
      style = "reverse"
    },
    iCursor = {
      style = "reverse"
    },
    lCursor = {
      style = "reverse"
    },
    CursorIM = {
      style = "reverse"
    },
    CursorColumn = {
      bg = palette.base3
    },
    Whitespace = {
      fg = palette.base3
    },
    WildMenu = {
      fg = palette.white,
      bg = palette.orange
    },
    QuickFixLine = {
      fg = palette.purple,
      style = "bold"
    },
    Debug = {
      fg = palette.orange
    },
    debugBreakpoint = {
      fg = palette.base2,
      bg = palette.red
    },
    Conditional = {
      fg = palette.pink
    },
    Repeat = {
      fg = palette.pink
    },
    Exception = {
      fg = palette.pink
    }
  }
end

M.load_plugin_syntax = function(palette)
  return {
    ["@string"] = {
      fg = palette.yellow
    },
    ["@include"] = {
      fg = palette.pink
    },
    ["@variable"] = {
      fg = palette.white
    },
    ["@variable.builtin"] = {
      fg = palette.orange
    },
    ["@annotation"] = {
      fg = palette.green
    },
    ["@comment"] = {
      fg = palette.base6,
      style = "italic"
    },
    ["@constant"] = {
      fg = palette.aqua
    },
    ["@constant.builtin"] = {
      fg = palette.purple
    },
    ["@constant.macro"] = {
      fg = palette.purple
    },
    ["@conditional"] = {
      fg = palette.pink
    },
    ["@character"] = {
      fg = palette.yellow
    },
    ["@function"] = {
      fg = palette.green,
      style = "italic"
    },
    ["@function.builtin"] = {
      fg = palette.aqua
    },
    ["@function.macro"] = {
      fg = palette.green,
      style = "italic"
    },
    ["@keyword"] = {
      fg = palette.pink,
      style = "italic"
    },
    ["@keyword.function"] = {
      fg = palette.pink,
      style = "italic"
    },
    ["@keyword.operator"] = {
      fg = palette.pink
    },
    ["@keyword.return"] = {
      fg = palette.pink
    },
    ["@method"] = {
      fg = palette.green
    },
    ["@namespace"] = {
      fg = palette.purple
    },
    ["@number"] = {
      fg = palette.purple
    },
    ["@operator"] = {
      fg = palette.pink
    },
    ["@parameter"] = {
      fg = palette.white
    },
    ["@parameter.reference"] = {
      fg = palette.white
    },
    ["@property"] = {
      fg = palette.white
    },
    ["@punctuation.delimiter"] = {
      fg = palette.white
    },
    ["@punctuation.bracket"] = {
      fg = palette.white
    },
    ["@punctuation.special"] = {
      fg = palette.pink
    },
    ["@repeat"] = {
      fg = palette.pink
    },
    ["@string.regex"] = {
      fg = palette.purple
    },
    ["@string.escape"] = {
      fg = palette.purple
    },
    ["@tag"] = {
      fg = palette.pink
    },
    ["@tag.delimiter"] = {
      fg = palette.white
    },
    ["@constructor"] = {
      fg = palette.green
    },
    ["@tag.attribute"] = {
      fg = palette.aqua
    },
    ["@tag.constructor"] = {
      fg = palette.green
    },
    ["@label"] = {
      fg = palette.pink
    },
    ["@type"] = {
      fg = palette.aqua
    },
    ["@exception"] = {
      fg = palette.pink
    },
    ["@field"] = {
      fg = palette.white
    },
    ["@float"] = {
      fg = palette.purple
    },
    dbui_tables = {
      fg = palette.white
    },
    DiagnosticSignError = {
      fg = palette.red,
      bg = palette.base2
    },
    DiagnosticSignWarn = {
      fg = palette.yellow,
      bg = palette.base2
    },
    DiagnosticSignInfo = {
      fg = palette.white,
      bg = palette.base2
    },
    DiagnosticSignHint = {
      fg = palette.aqua,
      bg = palette.base2
    },
    DiagnosticSignSuccess = {
      fg = palette.green,
      bg = palette.base2
    },
    GitSignsAdd = {
      fg = palette.green,
      bg = palette.base2
    },
    GitSignsDelete = {
      fg = palette.red,
      bg = palette.base2
    },
    GitSignsChange = {
      fg = palette.purple,
      bg = palette.base2
    },
    NeoTreeGitAdded = {
      fg = palette.green
    },
    NeoTreeGitModified = {
      fg = palette.purple
    },
    NeoTreeGitRenamed = {
      fg = palette.purple
    },
    NeoTreeGitUntracked = {
      fg = palette.green
    },
    NeoTreeGitDeleted = {
      fg = palette.red
    },
    NeoTreeDirectoryName = {
      fg = palette.white
    },
    DiagnosticVirtualTextError = {
      fg = palette.red
    },
    DiagnosticVirtualTextWarn = {
      fg = palette.yellow
    },
    DiagnosticVirtualTextInfo = {
      fg = palette.white
    },
    DiagnosticVirtualTextHint = {
      fg = palette.aqua
    },
    DiagnosticUnderlineError = {
      style = "undercurl",
      sp = palette.red
    },
    DiagnosticUnderlineWarn = {
      style = "undercurl",
      sp = palette.yellow
    },
    DiagnosticUnderlineInfo = {
      style = "undercurl",
      sp = palette.white
    },
    DiagnosticUnderlineHint = {
      style = "undercurl",
      sp = palette.aqua
    },
    CursorWord0 = {
      bg = palette.white,
      fg = palette.black
    },
    CursorWord1 = {
      bg = palette.white,
      fg = palette.black
    },
    NvimTreeFolderName = {
      fg = palette.white
    },
    NvimTreeRootFolder = {
      fg = palette.pink
    },
    NvimTreeSpecialFile = {
      fg = palette.white,
      style = "NONE"
    },
    TelescopeBorder = {
      fg = palette.border
    },
    TelescopePromptBorder = {
      fg = palette.border
    },
    CmpItemKindVariable = {
      fg = palette.aqua
    },
    CmpItemKindInterface = {
      fg = palette.aqua
    },
    CmpItemKindConstant = {
      fg = palette.aqua
    },
    CmpItemKindFunction = {
      fg = palette.purple
    },
    CmpItemKindMethod = {
      fg = palette.purple
    }
  }
end

local default_config = {
  palette = M.classic,
  custom_hlgroups = {}
}

M.setup = function(config)
  vim.cmd "hi clear"
  if vim.fn.exists "syntax_on" then
    vim.cmd "syntax reset"
  end
  vim.o.background = "dark"
  vim.o.termguicolors = true
  config = config or {}
  config = vim.tbl_deep_extend("keep", config, default_config)
  local used_palette = config.palette or M.classic
  vim.g.colors_name = used_palette.name
  local syntax = M.load_syntax(used_palette)
  syntax = vim.tbl_deep_extend("keep", config.custom_hlgroups, syntax)
  for group, colors in pairs(syntax) do
    M.highlight(group, colors)
  end
  local async_load_plugin = nil
  async_load_plugin =
    vim.loop.new_async(
    vim.schedule_wrap(
      function()
        local plugin_syntax = M.load_plugin_syntax(used_palette)
        plugin_syntax = vim.tbl_deep_extend("keep", config.custom_hlgroups, plugin_syntax)
        for group, colors in pairs(plugin_syntax) do
          M.highlight(group, colors)
        end
        async_load_plugin:close()
      end
    )
  )
  async_load_plugin:send()
end

return M
