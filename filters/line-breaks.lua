-- Keep HTML line breaks in pipe-table cells in every Pandoc output format.
-- Raw HTML is otherwise omitted by the LaTeX and DOCX writers.
function RawInline(inline)
  if inline.format == 'html' and inline.text:lower():match('^<br%s*/?>$') then
    return pandoc.LineBreak()
  end
end

-- Keep a letter's date, salutation and first paragraph on the same PDF page.
function Div(div)
  if div.classes:includes('keep-with-previous') and FORMAT:match('latex') then
    div.content:insert(1, pandoc.RawBlock('latex', '\\nopagebreak[4]'))
    return div.content
  end
  if div.classes:includes('keep-together') and FORMAT:match('latex') then
    div.content:insert(1, pandoc.RawBlock('latex', [[\par
\begingroup
\edef\savedparskip{\the\parskip}
\edef\savedparindent{\the\parindent}
\noindent\begin{minipage}{\linewidth}
\setlength{\parskip}{\savedparskip}
\setlength{\parindent}{\savedparindent}]]))
    div.content:insert(pandoc.RawBlock('latex', [[\end{minipage}\par
\endgroup]]))
    return div.content
  end
end
