% 西南林业大学本科毕业（设计）论文
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfuthesis}

\RequirePackage{ifxetex} % XeTeX only

\RequirePackage{pgfkeys}

\pgfkeys{%
  Author/.store in       = \@author,%
  Title/.store in        = \@title,%
  enTitle/.store in      = \SWFU@enTitle, %
  enAuthor/.store in     = \SWFU@enAuthor, %
  Advisor/.store in      = \SWFU@Advisor, %
  AdvisorTitle/.store in = \SWFU@AdvisorTitle,%
  Month/.store in        = \SWFU@Month, %
  Year/.store in         = \SWFU@Year, %
  Subject/.store in      = \SWFU@Subject, %  
}

\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

% pass unknown options to ctexrep
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax

\LoadClass[oneside,scheme=chinese,zihao=-4]{ctexbook}

\ctexset{%
  section/format = \Large\bfseries,%
  chapter/name = {},%
  chapter/number = {\thechapter},%
}

%%%%% geometry
\RequirePackage[%showframe,showcrop,
top=3cm,bottom=2.5cm,left=3cm,right=2.5cm,
nomarginpar,headheight=15pt, % to avoid "headheight too small"
]{geometry}


%%%%% misc
%\RequirePackage{etoolbox,xkvltxp}
\RequirePackage{indentfirst}
\RequirePackage{tabu,longtable,multicol,multirow,array,booktabs}
\RequirePackage{ulem}
\RequirePackage[bottom]{footmisc} % stick footnote at bottom of page
\RequirePackage{enumitem} % \setlist


%%%%% graphicx
\RequirePackage{graphicx}
\graphicspath{% mind the trailing '/'
  {./figs/}{../figs/}{./img/}{../img/}{./pics/}{../pics/}{./}{../}}


%%%%% fancyhdr
\RequirePackage{fancyhdr}
\fancyhf{}
\fancyfoot[C]{\fontsize{8}{8}\selectfont -- \thepage\ --}
\fancyhead[C]{\slshape\leftmark}

\fancypagestyle{plain}{% for the 1st page of each chapter
  \fancyhf{}%
  \fancyfoot[C]{\fontsize{8}{8}\selectfont -- \thepage\ --}
  \renewcommand{\headrulewidth}{0pt}}

\pagestyle{fancy}

%%%%% hyperref
\RequirePackage{xcolor}
\RequirePackage{hyperref}
\hypersetup{%
  bookmarksnumbered, breaklinks=true,%
  colorlinks=false,%
  pdfborderstyle={/S/U/W .3},% border style will be underline of width .3pt 
  linkbordercolor=red,       % internal links
  citebordercolor=cyan,      % links to bibliography
  filebordercolor=magenta,   % file links
  urlbordercolor=blue,       % external links
}
\def\UrlBreaks{\do\/\do-} % break long url


%%%%% fixme
\RequirePackage{fixme}
\fxsetup{%
  margin=true, marginclue=false,%
  status=draft, author=Fixme, inline=false, theme=color}


%%%%% fonts
\RequirePackage{amsmath,amsfonts,amssymb,marvosym,pifont}


%%%%% setspace (\singlespacing, \onehalfspacing, \doublespacing)
\RequirePackage[doublespacing]{setspace}
\renewcommand{\doublespacing}{\setstretch{1.6}}


%%%%% tikz
\RequirePackage{tikz}
\usetikzlibrary{%
  calc,positioning,fit,%
  arrows,shapes,patterns,quotes,%
  decorations.pathmorphing,%
  backgrounds,scopes,%
  mindmap,trees,%
  tikzmark,%
}%


%%%%% biblatex
\RequirePackage[backend=biber,style=gb7714-2015,gbpub=false,gbtype=false,gbpunctin=false,url=false,doi=false,isbn=false]{biblatex}
%\renewcommand*{\bibfont}{\small} % 11pt


%%%%% caption
\RequirePackage{caption} % \captionsetup
\RequirePackage{subcaption}
\captionsetup{labelsep=quad}

% set caption label style to, e.g. 3-2.
\renewcommand{\thefigure}{\thechapter{}-\arabic{figure}}
\renewcommand{\thetable}{\thechapter{}-\arabic{table}}
\renewcommand{\thesubfigure}{\thechapter{}-\arabic{subfigure}}
\renewcommand{\thesubtable}{\thechapter{}-\arabic{subtable}}


%%%%% minted
\RequirePackage[chapter]{minted} % minted has to be loaded at last!!!
\usemintedstyle{bw}

\renewcommand{\listingscaption}{程序} % used by minted
\renewcommand{\listoflistingscaption}{程序目录}
\renewcommand{\thelisting}{\thechapter{}-\arabic{listing}}

\renewcommand{\theFancyVerbLine}{
  \textcolor{lightgray}{\scriptsize\arabic{FancyVerbLine}}}

\newcommand{\cinline}[1]{\mintinline{c}|#1|}

\setminted{%
  linenos=true,numbersep=3pt,fontsize=\small,
  frame=leftline,framesep=10pt,%xleftmargin=2cm,
  rulecolor=\color{lightgray},autogobble=true,breaklines=true}

\newminted{c}{} \newminted{shell}{} \newminted{latex}{} \newminted{bibtex}{}
\newminted{gas}{} \newminted{nasm}{} \newminted{python}{}

\newmint[csingle]{c}{linenos=false,frame=topline,framesep=3pt,}


% code listing across pages
\newenvironment{longlisting}{\captionsetup{type=listing}\begin{singlespace}}{\end{singlespace}}

\newenvironment{codeblock}[1][.8]{% e.g. \begin{codeblock} ... \end{codeblock}
  \begin{center}\begin{minipage}{#1\textwidth}\begin{singlespace}}%
      {\end{singlespace}\end{minipage}\end{center}}


\renewcommand{\maketitle}{% Title page layout
  \begin{titlepage}
    \begin{center}
      \makebox[14.7em][s]{\huge 西南林业大学}\\[5mm]%
      \makebox[25.75em][s]{\Huge\textbf{本科毕业\hspace{-.5ex}（设计）\hspace{-.5ex}论文}}\\[5mm]%
      \makebox[12em][s]{\hspace{.5em}\LARGE（\SWFU@Year{}届）}\\[60pt]%
      \begin{minipage}{.8\linewidth}
        \begin{Large}
          \extrarowsep=^8mm_-7pt%
          \begin{tabu} spread \textwidth {@{}X[r]X[3.3,c]@{}} \textbf{题\hspace{2em}目：}&%
            \makebox[0pt][t]{% wrapable long title
              \begin{minipage}[t]{15em}
                \centering\parbox[t]{14em}{\centering\@title}
              \end{minipage}}%
            \rule[-.5ex]{15em}{.1pt}\par%
            \rule[-.1ex]{15em}{.1pt}\\
            \textbf{分院系部：} &大数据与智能工程学院\\\tabucline{2-2}%
            \textbf{专\hspace{2em}业：}&\SWFU@Subject\\\tabucline{2-2}%
            \textbf{姓\hspace{2em}名：}&\@author\\\tabucline{2-2}%
            \textbf{导师姓名：} &\SWFU@Advisor\\\tabucline{2-2}%
            \textbf{导师职称：} &\SWFU@AdvisorTitle\\\tabucline{2-2}
          \end{tabu}
        \end{Large}
      \end{minipage}
      \vfill
      {\Large\textbf{\SWFU@Year\ 年\ \SWFU@Month\ 月}}\\[1cm]
    \end{center}%
  \end{titlepage}%
}

\newenvironment{abstract}{%
  \thispagestyle{plain}\phantomsection{}%
  \begin{center}
    {\singlespacing\Large\textbf{\@title}}\\[5mm]%
    \large{\@author}\par
    \large{（西南林业大学大数据与智能工程学院，云南昆明\, 650224）}
  \end{center}%
  \vspace{3ex}%
  \noindent\textbf{摘\hspace{1em}要：}}{}

\newenvironment{keyword}{%
  \vskip 2ex\noindent\textbf{关键词：}}{\pagebreak}

\newenvironment{EAbstract}{%
  \thispagestyle{plain}\phantomsection{}%
  \begin{center}
    {\singlespacing\Large\textbf{\SWFU@enTitle}}\\[5mm]%
    {\large\SWFU@enAuthor}\\[3mm]%
    {\singlespacing {\large College of Big Data and Intelligence Engineering\\%
        Southwest Forestry University\\%
        Kunming 650224, Yunnan, China}}%
  \end{center}
  \vspace{2em}%
  \noindent\textbf{Abstract:}}{}

\newenvironment{EKeyword}{%
  \vskip 2ex\noindent\textbf{Key words: }}{\pagebreak}

\newcommand{\makebib}{% 参考文献
  \printbibliography[heading={bibintoc},title={参考文献}]\label{p:ref}\pagebreak}

\newenvironment{advisorInfo}{% 指导教师简介
  \thispagestyle{plain}\phantomsection{}%
  \addcontentsline{toc}{chapter}{指导教师简介}%
  \chapter*{指导教师简介}%
  \vskip 2em\begin{doublespace}%
  }{\end{doublespace}\pagebreak}
  
\newenvironment{acknowledgment}{% 致谢
  \thispagestyle{plain}\phantomsection{}%
  \addcontentsline{toc}{chapter}{致\hspace{1em}谢}%
  \chapter*{致\hspace{1em}谢}%
  \vskip 2em\begin{doublespace}%
  }{\end{doublespace}\pagebreak\singlespacing}


%%%%% misc
\renewcommand{\headrulewidth}{.4pt}
\urlstyle{tt} % url.sty
\raggedbottom{}
\setlength{\parindent}{2em}
\setlist{nosep} % kills all vertical spacing
