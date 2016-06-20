\ProvidesClass{wx672article}[2016/06/15 A simple class for saving some typings]
\NeedsTeXFormat{LaTeX2e}

\LoadClass[12pt,a4paper]{article}

\RequirePackage[margin=3cm,headheight=15pt]{geometry}

\RequirePackage{graphicx}
\graphicspath{{./figs/}{../figs/}{./}{../}} %note that the trailing “/” is required

\RequirePackage{latexsym,pifont,units,amsmath,amsfonts,amssymb,marvosym}

\RequirePackage[font=footnotesize,labelfont=bf]{caption}

\RequirePackage[skins]{tcolorbox}
\tcbsetforeverylayer{colframe=black!5,coltitle=black,boxrule=.5pt,fonttitle=\bfseries,colback=white}

\RequirePackage{multicol,rotating,soul,indentfirst}
\setul{1.5pt}{.4pt}% 1.5pt below contents

\RequirePackage{xltxtra} %fontspec,xunicode are loaded here.
\defaultfontfeatures{Mapping=tex-text}
% \setsansfont{DejaVu Sans}
% \setmainfont{DejaVu Serif}
% \setsansfont{DejaVu Sans Mono}
\setmainfont{Noto Serif}
\setsansfont{Noto Sans}
\setmonofont{Noto Mono}[Scale=MatchLowercase]

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
\setCJKmainfont[BoldFont={WenQuanYi Micro Hei}]{SimSun}
\setCJKsansfont{SimSun}
\setCJKmonofont{WenQuanYi Micro Hei Mono}
\setCJKfamilyfont{hei}{WenQuanYi Micro Hei}
\setCJKfamilyfont{song}{SimSun}
\setCJKfamilyfont{kai}{KaiTi} % e.g. \CJKfamily{kai}
\newCJKfontfamily\quotefont{KaiTi}

\RequirePackage[xetex,bookmarksnumbered,pdfpagelabels=true,plainpages=false,colorlinks=true,
linkcolor=black,citecolor=black,urlcolor=blue]{hyperref}
\RequirePackage{xcolor}

\RequirePackage{fancyhdr}
\pagestyle{fancy}

\RequirePackage{setspace}

% \renewcommand{\refname}{参考文献} % article.cls
% \renewcommand{\contentsname}{目\hspace{1em}录}
% \renewcommand{\listfigurename}{插图目录}
% \renewcommand{\listtablename}{表格目录}
% \renewcommand{\abstractname}{摘\hspace{1em}要}
% \renewcommand{\figurename}{图}
% \renewcommand{\tablename}{表}
% \renewcommand{\appendixname}{附\hspace{1em}录}
% \renewcommand{\indexname}{索\hspace{1em}引}

\newcommand{\code}[1]{\texttt{\textcolor{violet}{#1}}}

\setlength{\parindent}{2em}

