\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wx672beamer}%[TeX Live 2016/Debian A simple beamer based class for saving some typings]

\LoadClass[10pt,ignorenonframetext,xcolor={svgnames,table},hyperref={colorlinks,linkcolor=blue},compress]{beamer}

\RequirePackage{ifxetex} % This class can only be processed with XeTeX

\RequirePackage{latexsym,pifont,units,amsmath,amsfonts,amssymb,marvosym,mathtools}

\RequirePackage[tt=false]{libertine} % keyboard symbol

\RequirePackage[backend=biber,citestyle=authortitle,hyperref=true,doi=false,isbn=false,url=false]{biblatex}
\ExecuteBibliographyOptions{doi=false}
\newbibmacro{string+url}[1]{%
  \iffieldundef{url}{#1}{\href{\thefield{url}}{#1}}}
\DeclareFieldFormat{title}{\usebibmacro{string+url}{\mkbibemph{#1}}}
\DeclareFieldFormat[article]{title}{\usebibmacro{string+url}{\mkbibquote{#1}}}

\RequirePackage{tikz}
\usetikzlibrary{arrows,decorations.pathmorphing,backgrounds,positioning,fit}

\RequirePackage{multicol,varwidth,soul,tabu,rotating}
\setulcolor{gray}

\RequirePackage{minted}

\renewcommand{\theFancyVerbLine}{
  \textcolor{lightgray}{\scriptsize \arabic{FancyVerbLine}}}
\newminted{gas}{ linenos=true,numbersep=2pt,fontsize=\footnotesize,
  frame=leftline,framesep=3pt,rulecolor=\color{lightgray}, xleftmargin=10pt }
\newminted{c}{ linenos=true,numbersep=2pt,fontsize=\footnotesize,
  frame=leftline,framesep=3pt,rulecolor=\color{lightgray}, xleftmargin=10pt }
\newminted{python}{ linenos=true,numbersep=2pt,fontsize=\footnotesize,
  frame=leftline,framesep=3pt,rulecolor=\color{lightgray}, xleftmargin=10pt }
\newcommand{\codec}[1]{\mintinline{c}|#1|}

\newcommand{\cfbox}[2]{%
  \colorlet{currentcolor}{.}%
  {\color{#1}\fbox{\color{currentcolor}#2}}%
}
\newcommand{\code}[1]{\texttt{\textcolor{violet}{#1}}}
\newcommand{\Navy}[1]{\textcolor{Navy}{#1}}

\usetheme{default}
\setbeamertemplate{footline}[frame number]
\setbeamertemplate{navigation symbols}{}
\usenavigationsymbolstemplate{}
\setbeamertemplate{blocks}[rounded][shadow=false]
\setbeamercolor{structure}{fg=Green}
\setbeamercolor{block title}{fg=Green,bg=Gray!6}
\setbeamercolor{block body}{bg=Gray!4}
\setbeamercolor{alerted text}{fg=blue}

\RequirePackage{graphicx}
\graphicspath{{./figs/}{../figs/}{./}{../}} %note that the trailing “/” is required

% the following font specifics should be after theme settings.
\RequirePackage{xltxtra,fontspec,xunicode}
\defaultfontfeatures{Mapping=tex-text}
% \setsansfont{DejaVu Sans}
% \setmainfont{DejaVu Serif}
\setmainfont{Liberation Serif}
\setsansfont{Liberation Sans}

\RequirePackage{xeCJK}
\setCJKmainfont[BoldFont={Adobe Heiti Std}]{Adobe Song Std}
\setCJKsansfont{Noto Sans CJK SC Regular}
\setCJKmonofont{Noto Sans Mono CJK SC Regular}
\setCJKfamilyfont{hei}{Adobe Heiti Std}
\setCJKfamilyfont{song}{Adobe Song Std}

\newfontfamily\MyEmoji{Symbola}
\newcommand\Symbol[1]{\MyEmoji #1}
\newcommand\good{\MyEmoji ☺}
\newcommand\bad{\MyEmoji ☹}
\newcommand\danger{\MyEmoji ☠}
\newcommand\pointright{\MyEmoji ☞}
