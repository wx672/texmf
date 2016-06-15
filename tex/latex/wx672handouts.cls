\ProvidesClass{wx672handouts}[2016/06/15 A simple class for producing handouts]
\NeedsTeXFormat{LaTeX2e}

\LoadClass[a4paper,10pt]{article}

% in beamerarticle package, there is a \RequirePackage[override]{xcolor}.
% this clashes with [svgnames]
\RequirePackage[noxcolor,hyperref]{beamerarticle}
\RequirePackage[svgnames]{xcolor} 

\hypersetup{xetex,breaklinks=true}

\RequirePackage[headings]{fullpage}
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhead[LE,RO]{}

\renewcommand{\refname}{} % article.cls

\RequirePackage{xltxtra} %fontspec,xunicode are loaded here.
\defaultfontfeatures{Mapping=tex-text}
\setsansfont{DejaVu Sans}
\setmainfont{DejaVu Serif}
\RequirePackage{xeCJK}
\setCJKmainfont[BoldFont={WenQuanYi Zen Hei}, ItalicFont={WenQuanYi Zen Hei}]{SimSun}
\setCJKsansfont{WenQuanYi Zen Hei}
\setCJKmonofont{WenQuanYi Micro Hei Mono}
\setCJKfamilyfont{hei}{WenQuanYi Zen Hei}
\setCJKfamilyfont{song}{SimSun}
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

\RequirePackage{ifxetex} % This class can only be processed with XeTeX

\RequirePackage{graphicx}
\graphicspath{{./figs/}{../figs/}{./}{../}} %note that the trailing “/” is required

\RequirePackage[tt=false]{libertine} % keyboard symbol