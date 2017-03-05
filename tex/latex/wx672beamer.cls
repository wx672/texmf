\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wx672beamer}%[TeX Live 2016/Debian A simple beamer based class for saving some typings]

\LoadClass[12pt,ignorenonframetext,xcolor={svgnames,table},hyperref={colorlinks,linkcolor=Green},compress]{beamer}

\RequirePackage{ifxetex} % This class can only be processed with XeTeX

\RequirePackage{tikz-wx672}

\RequirePackage{wx672common}

\usetheme{default}
\setbeamertemplate{footline}[frame number]
\setbeamertemplate{navigation symbols}{}
\usenavigationsymbolstemplate{}
\setbeamertemplate{blocks}[rounded][shadow=false]
\setbeamercolor{structure}{fg=Green}
\setbeamercolor{block title}{fg=Green,bg=Gray!6}
\setbeamercolor{block body}{bg=Gray!4}
\setbeamercolor{alerted text}{fg=blue}
\setbeamercolor{section in toc}{fg=Green,bg=Gray!6}
\setbeamercovered{transparent}
