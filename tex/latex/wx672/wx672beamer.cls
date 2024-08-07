\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wx672beamer}

\PassOptionsToPackage{svgnames,table}{xcolor}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions\relax

\LoadClass[ignorenonframetext,compress,%
aspectratio=169,% 169 for 16:9; 43 for 4:3
hyperref={unicode,naturalnames,%
  pdfauthor={WANG Xiaolin},%
  bookmarksnumbered=true,%
  pdfborderstyle={/S/U/W .5},%
  breaklinks, colorlinks,%
  linkcolor=blue, citecolor=blue, urlcolor=blue}%
]{beamer}

\RequirePackage{wx672b}

% https://tex.stackexchange.com/questions/10555/hyperref-warning-token-not-allowed-in-a-pdf-string
% \pdfstringdefDisableCommands{%
%   \def\\{}%
%   \def\texttt#1{<#1>}%
% }