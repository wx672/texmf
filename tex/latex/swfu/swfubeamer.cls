\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfubeamer}

\PassOptionsToPackage{svgnames,table}{xcolor}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions\relax

\LoadClass[ignorenonframetext,compress,%
aspectratio=169,% 169 for 16:9; 43 for 4:3
hyperref={unicode,naturalnames,%
  %pdfauthor={WANG Xiaolin},%
  bookmarksnumbered=true,%
  pdfborderstyle={/S/U/W .5},%
  breaklinks, colorlinks,%
  linkcolor=blue, citecolor=blue, urlcolor=blue}%
]{beamer}

%%% common pkgs
\RequirePackage{graphicx}
\graphicspath{{./figs/}{../figs/}{./img/}{./}{../}} %note that the trailing “/” is required

\RequirePackage[font=footnotesize,labelfont=bf]{caption}
\RequirePackage{subcaption}

\RequirePackage[normalem]{ulem}% ulem could conflict with lualatex/biblatex
\RequirePackage{multicol,rotating,etoolbox,comment}

\RequirePackage{amsmath,amsfonts,amssymb,mathtools,units}

\RequirePackage{tabularray}%longtable

%%% tikz
\RequirePackage{tikz}

\usetikzlibrary{%
  graphs,graphdrawing,% need lualatex
  calc,positioning,fit,%
  chains,arrows.meta,shapes,patterns,quotes,%
  decorations.pathmorphing,%
  backgrounds,scopes,%
  mindmap,trees,%
  tikzmark,%
}%

\tikzset{%
  help lines/.style = {ultra thin,dotted},%
  xy/.style = {font=\ttfamily\tiny,inner sep=1pt}
}

%%% Fonts
\RequirePackage{fontspec}
\defaultfontfeatures{Ligatures=TeX}

\setmainfont{Liberation Serif}
\setsansfont{DejaVu Sans Mono}

% ctex is too heavy in case of only a few Chinese words.
% Example: {\cjk 你好}
\newfontfamily\cjk{Noto Serif CJK JP}% \han in wx672nerd.sty
\newfontfamily\cjksans{Noto Sans CJK JP}
\newfontfamily\cjkmono{Noto Sans Mono CJK JP} % Noto Sans Mono CJK SC
%\newfontfamily\firacode{FiraCode Nerd Font}[NFSSFamily=FiraCode] % for minted
\newfontfamily\firacode{Fira Code}[NFSSFamily=FiraCode] % for minted

\newcommand{\verbatimfont}[1]{\def\verbatim@font{#1}}%
\newcommand{\verbfont}[1]{\def\verbatim@font{#1}}%

\newcommand{\range}{{~\symbol{`~}~}}
\newcommand{\CMD}[1]{\texttt{\textcolor{Green}{\$} #1}}
\newcommand{\cmd}[1]{\texttt{#1}}

\newcommand{\cfbox}[2]{%
  \colorlet{currentcolor}{.}%
  {\color{#1}\fbox{\color{currentcolor}#2}}}

\newcommand{\Navy}[1]{\textcolor{Navy}{#1}}

%%% minted
\RequirePackage{minted}%[newfloat=true],[cache=false]

\renewcommand{\theFancyVerbLine}{
  \textcolor{lightgray}{\scriptsize \arabic{FancyVerbLine}}}

\setmintedinline{breaklines=true,fontsize=\small,autogobble=false,fontfamily=FiraCode}

\setminted{baselinestretch=1,fontsize=\small,xleftmargin=1em,breaklines=true,%
  fontfamily=FiraCode,%
  linenos,numbersep=1pt,%
  frame=leftline,framesep=5pt,%
  rulecolor=\color{lightgray},autogobble=true}

\newminted{c}{}% \ccode{}
\newminted{sh}{}% \shcode{}
\newminted{shell}{}% \shellcode{}
\newminted{latex}{}
\newminted{bibtex}{}
\newminted{gas}{}
\newminted{nasm}{}
\newminted{python}{}
\newminted{pascal}{}
\newminted{makefile}{}

\newmintedfile[cfile]{c}{baselinestretch=1,linenos,breaklines,autogobble,fontfamily=FiraCode}%\cfile{filepath}
\newmintedfile[mkfile]{makefile}{baselinestretch=1,linenos,breaklines,autogobble,fontfamily=FiraCode}%\mkfile{filepath}
\newmintedfile{nasm}{baselinestretch=1,linenos,breaklines,autogobble,fontfamily=FiraCode}%\nasmfile{filepath}
\newmintedfile[pasfile]{pascal}{baselinestretch=1,linenos,breaklines,autogobble,fontfamily=FiraCode}%\pasfile{filepath}
\newmintedfile[pyfile]{python}{baselinestretch=1,linenos,breaklines,autogobble,fontfamily=FiraCode}%\pyfile{filepath}
\newmintedfile{shell}{baselinestretch=1,linenos,breaklines,autogobble,fontfamily=FiraCode}%\shellfile{filepath}
\newmintedfile[shfile]{shell}{baselinestretch=1,linenos,breaklines,autogobble,fontfamily=FiraCode}%\shfile{filepath}

%%% hyperref
\RequirePackage{hyperref}

\hypersetup{unicode,naturalnames,%
  breaklinks=true,
  bookmarksnumbered,plainpages=false,
  pdfborderstyle={/S/U/W .5},% border style will be underline of width .5pt 
  colorlinks=true,%urlcolor=blue,
  linkbordercolor=red,       % color of internal links
  citebordercolor=blue,     % color of links to bibliography
  filebordercolor=magenta,   % color of file links
  urlbordercolor=blue,
  % linkcolor=black,citecolor=black,
}

\RequirePackage{xurl}

\pdfstringdefDisableCommands{%
  \def\\{}%
  \def\texttt#1{<#1>}%
}

%%% biblatex

\RequirePackage[backend=biber, style=gb7714-2015, gbpub=false, gbtype=false,
gbpunctin=false, url=false, doi=false, isbn=false]{biblatex}
\renewcommand*{\bibfont}{\small} % 11pt

% %https://tex.stackexchange.com/questions/23832/biblatex-make-title-hyperlink-to-doi-url-if-available
\newbibmacro{title+url}[1]{%
  \iffieldundef{url}{#1}{\href{\thefield{url}}{#1}}}
\DeclareFieldFormat*{title}{\usebibmacro{title+url}{\mkbibemph{#1}}}

% texdoc xurl
\setcounter{biburllcpenalty}{100}
\setcounter{biburlucpenalty}{200}
\setcounter{biburlnumpenalty}{100}


%%% xcolor, hyperref, pgf are loaded by beamer already. pass opts to them in
%%% swfubeamer.cls.

\usetheme{default}
\usecolortheme[named=SeaGreen]{structure}
\setbeamercolor{block title}{bg=Gray!6}
\setbeamercolor{block body}{bg=Gray!4}
\setbeamercolor{alerted text}{fg=blue}
\setbeamercolor{part title}{bg=Gray!6}
\setbeamercolor{section title}{bg=Gray!6}
\setbeamercolor{subsection title}{bg=Gray!6}

\setbeamertemplate{footline}[frame number]
\setbeamertemplate{navigation symbols}{}
\usenavigationsymbolstemplate{}
\setbeamertemplate{blocks}[rounded][shadow=false]
\setbeamertemplate{bibliography item}[book]

\setbeamertemplate{section page}{%
  \begin{beamercolorbox}[center]{structure}
    \usebeamerfont{section title}%
    \insertsectionnumber\quad\insertsection\par
  \end{beamercolorbox}}

\setbeamertemplate{subsection page}{%
  \begin{beamercolorbox}[center]{structure}%
    \usebeamerfont{subsection title}%
    \insertsectionnumber.\insertsubsectionnumber\quad\insertsubsection\par
  \end{beamercolorbox}}

% \setbeamersize{text margin right=1em}
% \setbeamersize{text margin left=1em}
% \setbeamercovered{transparent}

\newenvironment{iblock}[1] % for images
{\setbeamercolor{block title}{bg=white}\setbeamercolor{block body}{bg=white}\begin{block}{#1}}
  {\end{block}}

\renewcommand\emph[1]{{\itshape #1}}
\newcommand\code[1]{{\ttfamily #1}}

\titlegraphic{
  \begin{tikzpicture}[overlay,remember picture]
    \node at (current page.center) [scale=.21,opacity=.05]{
      \includegraphics{swfulogo-emblem}
      \includegraphics{swfulogo-emblem}
      \includegraphics{swfulogo-emblem}
    };
  \end{tikzpicture}
}