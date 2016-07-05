\ProvidesClass{wx672handouts}[2016/07/05 A simple class for producing handouts]
\NeedsTeXFormat{LaTeX2e}

\LoadClass[a4paper,10pt]{article}

% in beamerarticle package, there is a \RequirePackage[override]{xcolor}.
% this clashes with [svgnames]
\RequirePackage[noxcolor]{beamerarticle}
\RequirePackage[svgnames]{xcolor} 
\RequirePackage{hyperref}
\hypersetup{%
  bookmarksnumbered,pdfpagelabels=true,plainpages=false,breaklinks=true,
  colorlinks=false,
  pdfborderstyle={/S/U/W .3},% border style will be underline of width .3pt 
  linkbordercolor=red,       % internal links
  citebordercolor=cyan,      % links to bibliography
  filebordercolor=magenta,   % file links
  urlbordercolor=blue,       % external links
  %linkcolor=black,citecolor=black,urlcolor=blue
}

%\RequirePackage[headings]{fullpage}
\RequirePackage[top=2cm,bottom=2cm,left=3cm,right=2cm,
nomarginpar,headheight=15pt, % to avoid "headheight too small"
%showframe,showcrop,
]{geometry}

\RequirePackage{parskip,indentfirst}
\setlength{\parindent}{2em}
\RequirePackage{setspace}

\RequirePackage[bottom]{footmisc} % stick footnote at bottom of page

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhead[R,C]{}

\renewcommand{\refname}{} % article.cls

\RequirePackage{latexsym,pifont,units,amsmath,amsfonts,amssymb,marvosym,mathtools}

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

\RequirePackage[breakable,skins]{tcolorbox}
\tcbsetforeverylayer{colframe=black!10,coltitle=black,boxrule=.5pt,fonttitle=\bfseries,colback=white}

\RequirePackage{minted}
\usemintedstyle{bw}

\RecustomVerbatimEnvironment{Verbatim}{BVerbatim}{} % to make centering minted works

\renewcommand{\theFancyVerbLine}{
  \textcolor{lightgray}{\scriptsize \arabic{FancyVerbLine}}}

\newminted{gas}{ linenos=true,numbersep=2pt,fontsize=\small,
  frame=leftline,framesep=3pt,rulecolor=\color{lightgray}, xleftmargin=10pt }
\newminted{c}{ linenos=true,numbersep=2pt,fontsize=\small,
  frame=leftline,framesep=3pt,rulecolor=\color{lightgray}, xleftmargin=10pt }
\newminted{python}{ linenos=true,numbersep=2pt,fontsize=\small,
  frame=leftline,framesep=3pt,rulecolor=\color{lightgray}, xleftmargin=10pt }
\newcommand{\codec}[1]{\mintinline{c}|#1|}

\newcommand{\cfbox}[2]{%
  \colorlet{currentcolor}{.}%
  {\color{#1}\fbox{\color{currentcolor}#2}}%
}
\newcommand{\code}[1]{\texttt{\textcolor{violet}{#1}}}
\newcommand{\Navy}[1]{\textcolor{Navy}{#1}}

\RequirePackage{ifxetex} % This class can only be processed with XeTeX

\RequirePackage{graphicx}
\graphicspath{{./figs/}{../figs/}{./}{../}} %note that the trailing “/” is required

\RequirePackage[tt=false]{libertine} % keyboard symbol

\RequirePackage{xltxtra,fontspec,xunicode}
\defaultfontfeatures{Mapping=tex-text}
%\setsansfont{DejaVu Sans}
%\setmainfont{DejaVu Serif}
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
