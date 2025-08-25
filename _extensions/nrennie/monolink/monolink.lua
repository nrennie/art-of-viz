local function escape_latex(str)
  -- Escape # % & _ { } ~ ^ \ characters for LaTeX
  local replacements = {
    ["#"] = "\\#",
    ["%"] = "\\%",
    ["&"] = "\\&",
    ["_"] = "\\_",
    ["{"] = "\\{",
    ["}"] = "\\}",
    ["~"] = "\\textasciitilde{}",
    ["^"] = "\\textasciicircum{}",
    ["\\"] = "\\textbackslash{}"
  }
  return (str:gsub(".", function(c)
    return replacements[c] or c
  end))
end

local function add_breakpoints(str)
  -- Add discretionary line breaks after / and -
  str = str:gsub("/", "/\\allowbreak{}")
  str = str:gsub("%-", "-\\allowbreak{}")
  return str
end

function monolink(args, kwargs, meta)
  local url = pandoc.utils.stringify(args[1])
  local label = args[2] and pandoc.utils.stringify(args[2]) or url

  if quarto.doc.is_format("pdf") then
    url = escape_latex(url)
    label = escape_latex(label)
    
    -- Add line break opportunities to the displayed label only
    label = add_breakpoints(label)
    
    return pandoc.RawInline("latex", "\\texttt{\\href{" .. url .. "}{" .. label .. "}}")
  else
    return pandoc.Link(label, url)
  end
end