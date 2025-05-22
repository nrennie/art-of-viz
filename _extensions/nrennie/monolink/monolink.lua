function monolink(args, kwargs, meta)
  local url = pandoc.utils.stringify(args[1])
  local label = pandoc.utils.stringify(args[2])
  if quarto.doc.is_format("pdf") then
    return pandoc.RawInline("latex", "\\texttt{\\href{" .. url .. "}{" .. label .. "}}")
  else
    return pandoc.Link(label, url)
  end
end