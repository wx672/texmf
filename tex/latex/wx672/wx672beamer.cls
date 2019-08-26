\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wx672beamer}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions\relax

\LoadClass[ignorenonframetext,compress,xcolor={svgnames,table},%
hyperref={%
  pdfauthor={WANG Xiaolin},%
  bookmarksnumbered=true,%
  pdfborderstyle={/S/U/W .5},%
  breaklinks, colorlinks,
  linkcolor=blue, citecolor=blue, urlcolor=blue}%
]{beamer}

\RequirePackage{wx672b}
