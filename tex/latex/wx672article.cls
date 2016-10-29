\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{wx672article}%[TeX Live 2016/Debian A simple class for saving some typings]

\LoadClass[12pt,a4paper]{article}

\RequirePackage[margin=3cm,headheight=15pt]{geometry}

\RequirePackage{graphicx}
\graphicspath{{./figs/}{../figs/}{./}{../}} %note that the trailing “/” is required

\RequirePackage{latexsym,pifont,units,amsmath,amsfonts,amssymb,marvosym}

\RequirePackage[font=footnotesize,labelfont=bf]{caption}

% \RequirePackage[skins]{tcolorbox}
% \tcbsetforeverylayer{colframe=black!5,coltitle=black,boxrule=.5pt,fonttitle=\bfseries,colback=white}

\RequirePackage{multicol,rotating,soul,indentfirst,tabu}
\setul{1.5pt}{.4pt}% 1.5pt below contents

\RequirePackage{xltxtra} %fontspec,xunicode are loaded here.
\defaultfontfeatures{Mapping=tex-text}
\setsansfont{Liberation Sans}
\setmainfont{Liberation Serif}

\RequirePackage{xeCJK}
\xeCJKDeclarePunctStyle{ mine }
{
  min-bound-to-kerning    = true,
  kerning-margin-minimum  = .2em,
}
\xeCJKsetup{PunctStyle=mine}
\xeCJKsetwidth{“”《》、（）}{1.2ex}
\xeCJKsetkern{：}{（}{1ex}
\xeCJKsetkern{；}{（}{1ex}

\setCJKmainfont[BoldFont={Adobe Heiti Std}]{Adobe Song Std}
\setCJKsansfont{Noto Sans CJK SC Regular}
\setCJKmonofont{Noto Sans Mono CJK SC Regular}
\setCJKfamilyfont{hei}{Adobe Heiti Std}
\setCJKfamilyfont{song}{Adobe Song Std}
\setCJKfamilyfont{kai}{Adobe Kaiti Std} % e.g. \CJKfamily{kai}
\newCJKfontfamily\quotefont{Adobe Kaiti Std}

\RequirePackage{xcolor} % must before hyperref
\RequirePackage{hyperref}
\hypersetup{%
  bookmarksnumbered,pdfpagelabels=true,plainpages=false,
  pdfborderstyle={/S/U/W .5},% border style will be underline of width .5pt 
  colorlinks=false,
  linkbordercolor=red,       % color of internal links
  citebordercolor=blue,     % color of links to bibliography
  filebordercolor=magenta,   % color of file links
  urlbordercolor=blue,
  % linkcolor=black,citecolor=black,urlcolor=blue
}

\RequirePackage{fancyhdr}
\pagestyle{fancy}

\RequirePackage{parskip}
% \RequirePackage{indentfirst}
% \setlength{\parindent}{2em}
\RequirePackage{setspace}

\RequirePackage[backend=biber,url=false,hyperref=true,
    doi=false,isbn=false]{biblatex}

\RequirePackage[bottom]{footmisc} % stick footnote at bottom of page

% \renewcommand{\refname}{参考文献} % article.cls
% \renewcommand{\contentsname}{目\hspace{1em}录}
% \renewcommand{\listfigurename}{插图目录}
% \renewcommand{\listtablename}{表格目录}
% \renewcommand{\abstractname}{摘\hspace{1em}要}
% \renewcommand{\figurename}{图}
% \renewcommand{\tablename}{表}
% \renewcommand{\appendixname}{附\hspace{1em}录}
% \renewcommand{\indexname}{索\hspace{1em}引}

% use C-x 8 RET to input utf8 symbols
\newfontfamily\MyEmoji{Symbola}
\newcommand\Symbol[1]{\MyEmoji #1}
\newcommand\good{\MyEmoji ☺}
\newcommand\bad{\MyEmoji ☹}
\newcommand\danger{\MyEmoji ☠}
\newcommand\pointright{\MyEmoji ☞}

\RequirePackage{minted} % minted has to be loaded at last!!!
\usemintedstyle{bw}
\renewcommand{\listingscaption}{程序} % used by minted
\renewcommand{\listoflistingscaption}{程序目录}
