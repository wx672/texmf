\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{netbeamer} % for syk net book

\PassOptionsToPackage{svgnames,table}{xcolor}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{beamer}}
\ProcessOptions\relax

\LoadClass[ignorenonframetext,compress,%
aspectratio=169,% 169 for 16:9; 43 for 4:3
hyperref={unicode,naturalnames,%
  pdfauthor={SUN Yongke},%
  bookmarksnumbered=true,%
  pdfborderstyle={/S/U/W .5},%
  breaklinks, colorlinks,%
  linkcolor=blue, citecolor=blue, urlcolor=blue}%
]{beamer}

% --- chinese ---
\RequirePackage{ctex} % fontspec loaded here
\ctexset{today=old}

% --- fonts ---
\defaultfontfeatures{Ligatures=TeX}

% Liberation fonts is a drop-in replacement for Microsoft Times, Arial and Courier fonts
% \setmainfont{Liberation Serif}[RawFeature={fallback=genericfallback}]
% \setsansfont{FiraCode Nerd Font}[RawFeature={fallback=emojifallback}]
\setmonofont{FiraCode Nerd Font Mono}[RawFeature={fallback=genericfallback}]%\ttfamily
\newfontfamily\firacode{FiraCode Nerd Font}[NFSSFamily=FiraCode] % for minted

% --- hyperref ---
%xcolor, hyperref, pgf are loaded by beamer already
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

% --- bib ---
\RequirePackage[backend=biber, style=gb7714-2015, gbpub=false, gbtype=false,
gbpunctin=false, url=false, doi=false, isbn=false]{biblatex}
\renewcommand*{\bibfont}{\small} % 11pt

% --- xurl ---
\RequirePackage{xurl} %texdoc xurl
\setcounter{biburllcpenalty}{100}
\setcounter{biburlucpenalty}{200}
\setcounter{biburlnumpenalty}{100}

% --- graphicx ---
\RequirePackage{graphicx}
\graphicspath{{./figs/}{../figs/}{./img/}{./}{../}} %note that the trailing “/” is required

% --- caption ---
\RequirePackage[font=footnotesize,labelfont=bf]{caption}
\RequirePackage{subcaption}

% --- tikz --- 
\RequirePackage{tikz}
\usetikzlibrary{%
  graphs,graphdrawing,% need lualatex
  calc,positioning,fit,%
  chains,arrows.meta,shapes,patterns,quotes,%
  decorations.pathmorphing,decorations.pathreplacing,%
  backgrounds,scopes,%
  mindmap,trees,%
  tikzmark,%
}%

\tikzset{%
  help lines/.style = {ultra thin,dotted},%
  xy/.style = {font=\ttfamily\tiny,inner sep=1pt}
}

% --- minted: for code listings ---
\RequirePackage{minted}%[newfloat=true],[cache=false]

\renewcommand{\theFancyVerbLine}{
  \textcolor{lightgray}{\scriptsize \arabic{FancyVerbLine}}}

\setmintedinline{breaklines=true,fontsize=\small,autogobble=false,fontfamily=FiraCode}

\newmintinline{shell}{}   % \shinline/ls -ltr/
\newmintinline{c}{}% \cinline/printf("Hello, world!\n");/

\setminted{baselinestretch=1,fontsize=\small,xleftmargin=1em,breaklines=true,%
  fontfamily=FiraCode,%
  linenos,numbersep=1pt,%
  frame=leftline,framesep=5pt,%
  rulecolor=\color{lightgray},autogobble=true}

\newminted{sh}{}% \shcode{}
\newminted{python}{}

% \shfile{filepath}
\newmintedfile[shfile]{shell}{baselinestretch=1,linenos,breaklines,autogobble,fontfamily=FiraCode}
% \pyfile{filepath}
\newmintedfile[pyfile]{python}{baselinestretch=1,linenos,breaklines,autogobble,fontfamily=FiraCode}

% code listing across pages
\newenvironment{longlisting}{\captionsetup{type=listing}}{}

\newenvironment{codeblock}[1] % e.g. \begin{codeblock}{.7} ... \end{codeblock}
{\begin{center}\begin{minipage}{#1\textwidth}\begin{singlespace}}
{\end{singlespace}\end{minipage}\end{center}}

% --- misc ---
\RequirePackage{tabularray}%
\RequirePackage[normalem]{ulem}% ulem could conflict with lualatex/biblatex
\RequirePackage{multicol,rotating,etoolbox,comment}%
\RequirePackage{amsmath,amsfonts,amssymb,mathtools,units}%

\newcommand\verbatimfont[1]{\def\verbatim@font{#1}}%
\newcommand\verbfont[1]{\def\verbatim@font{#1}}%
\newcommand\range{{~\symbol{`~}~}}
\newcommand\CMD[1]{\texttt{\textcolor{Green}{\$} #1}}
\newcommand\cmd[1]{\texttt{#1}}
\newcommand\code[1]{{\ttfamily #1}}
\newcommand\Navy[1]{\textcolor{Navy}{#1}}
\renewcommand\emph[1]{{\itshape #1}}
\newcommand\cfbox[2]{% color frame box
  \colorlet{currentcolor}{.}%
  {\color{#1}\fbox{\color{currentcolor}#2}}}

% --- beamer settings ---
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

\newenvironment{iblock}[1] % image block
{\setbeamercolor{block title}{bg=white}\setbeamercolor{block body}{bg=white}\begin{block}{#1}}
  {\end{block}}

% --- title page graphics ---
\titlegraphic{
  \begin{tikzpicture}[overlay,remember picture]
    \node at (current page.center) [scale=.21,opacity=.05]{
      \includegraphics{swfulogo-emblem}
      \includegraphics{swfulogo-emblem}
      \includegraphics{swfulogo-emblem}
    };
  \end{tikzpicture}
}
