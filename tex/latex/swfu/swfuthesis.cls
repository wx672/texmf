% 西南林业大学本科毕业（设计）论文
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfuthesis}

\RequirePackage{ifxetex} % XeTeX only

\RequirePackage{pgfkeys}

\pgfkeys{%
  Author/.store in        = \@author, Author = 学生姓名？,% 
  Title/.store in         = \@title, Title = 题目？,% 
  ID/.store in            = \SWFU@ID, ID = 学号？,% 
  Major/.store in         = \SWFU@Major, Major = 专业？,%  
  enTitle/.store in       = \SWFU@enTitle, enTitle = 英文标题？, %
  enAuthor/.store in      = \SWFU@enAuthor, enAuthor = 英文学生姓名？,%
  Advisor/.store in       = \SWFU@Advisor, Advisor = 指导教师姓名（职称）？,%
  % AdvisorTitle/.store in  = \SWFU@AdvisorTitle,%
  Reviewer/.store in      = \SWFU@Reviewer, Reviewer = 评阅人姓名（职称）？,%
  Month/.store in         = \SWFU@Month, Month = ？,%
  Date/.store in          = \SWFU@Date, Date = ？,%
  Year/.store in          = \SWFU@Year, Year = ？,%
}

\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

% pass unknown options to ctexbook
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
top=3cm,bottom=2cm,left=3cm,right=2.5cm,
headsep=6mm,footskip=1mm,headheight=15pt, % to avoid "headheight too small"
nomarginpar]{geometry}

%%%%% misc
%\RequirePackage{indentfirst} % enabled if scheme=chinese
\RequirePackage{tabularx,longtable,multicol,multirow,booktabs,makecell}
\renewcommand\theadfont{\bfseries}%\normalfont
\renewcommand{\arraystretch}{1.5}

\newcolumntype{C}{>{\centering\arraybackslash}X}
\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}} % centering p column

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
  pdfborderstyle={/S/U/W .3},% underline of width .3pt 
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
\RequirePackage[backend=biber,%
style=gb7714-2015,gbpub=false,gbtype=false,gbpunctin=false,%
url=false,doi=false,isbn=false]{biblatex}
%\renewcommand*{\bibfont}{\small} % 11pt

%%%%% caption
\RequirePackage[font=footnotesize,labelfont=bf]{caption} % \captionsetup
\RequirePackage{subcaption}
\captionsetup{labelsep=quad, format=hang, skip=5pt}

% set caption label style to, e.g. 3-2.
% \renewcommand{\thefigure}{\thechapter{}-\arabic{figure}}
% \renewcommand{\thetable}{\thechapter{}-\arabic{table}}
% \renewcommand{\thesubfigure}{\thechapter{}-\arabic{subfigure}}
% \renewcommand{\thesubtable}{\thechapter{}-\arabic{subtable}}

%%%%% minted
\RequirePackage[chapter]{minted} % has to be loaded at last!!!
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
\newenvironment{longlisting}{\captionsetup{type=listing}%
  \begin{singlespace}}{\end{singlespace}}

\newenvironment{codeblock}[1][.8]{% e.g. \begin{codeblock} ... \end{codeblock}
  \begin{center}\begin{minipage}{#1\textwidth}\begin{singlespace}}%
      {\end{singlespace}\end{minipage}\end{center}}

\renewcommand{\maketitle}{% Title page layout
  \begin{titlepage}
    \vspace*{1mm}
    \begin{center}
      \makebox[17em][s]{\includegraphics[width=17em]{swfulogo-text}}\\[5mm]%
      \makebox[19em][s]{{\LARGE\heiti 本科毕业论文\hspace{-.5ex}（设计）}}\\[1mm]%
      \makebox[9em][s]{\hspace{.5em}{\LARGE\heiti（\SWFU@Year{}\,届）}}\\[2mm]%
      \makebox[8em][s]{\includegraphics[width=8em]{swfulogo-emblem}}\\[1mm]
      \begin{minipage}{\linewidth}
        \begin{large}
            \begin{center}
              \begin{tabularx}{.88\textwidth}{>{\bfseries}rC}%
                题\,目&\makebox[0pt][t]{% wrapable long title
                                 \begin{minipage}[t]{20em}
                                   \centering\parbox[t]{18em}{\centering\@title}
                                 \end{minipage}}%
                                 \rule[-.5ex]{13cm}{.1pt}\par%
                                 \rule[-.1ex]{13cm}{.1pt}\\
              \end{tabularx}
            \end{center}
          {\setlength{\extrarowheight}{5pt}%
            \begin{tabularx}{\textwidth}{>{\heiti}r>{\centering\arraybackslash\hsize=1.1\hsize\linewidth=\hsize}X>{\heiti}r>{\hsize=.9\hsize\linewidth=\hsize\centering\arraybackslash}X}
            学\,院&大数据与智能工程学院%
            &\hspace{1em}专\,业&\SWFU@Major\\[-.6ex]\cline{2-2}\cline{4-4}%
            学生姓名&\@author&\hspace{1em}学\,号&\SWFU@ID\\[-.6ex]\cline{2-2}\cline{4-4}%
            指导教师&\SWFU@Advisor&&\\[-.6ex]\cline{2-4}%
            评阅人&\SWFU@Reviewer&&\\[-.6ex]\cline{2-4}
          \end{tabularx}}
        \end{large}
      \end{minipage}
      \vfill
      {\Large\heiti\SWFU@Year\,年\,\SWFU@Month\,月\,\SWFU@Date\,日}\\%[1cm]
    \end{center}%
  \end{titlepage}%
  \clearpage%\shipout\null
  \thispagestyle{empty}
  \begin{center}
    {\LARGE\heiti 原创性声明}
  \end{center}
  \begin{large}
    \hspace{2em}本人郑重声明，所呈交的学位论文是本人在指导教师指导下进行的研究工作及取得的
    研究成果，论文成果归西南林业大学所有。尽我所知，除了论文中特别加以标注和致谢的地方外，
    论文中不包含其他人已经发表或撰写过的研究成果，也不包含为获得 西南林业大学或其他教育机构
    的学位或证书而使用过的材料。与我共同工作的同志对本研究所作的贡献均已在论文中作了明确的
    说明。

    申请学位论文与资料若有不实之处，本人承担一切相关责任。
    \vspace*{1em}
    \begin{flushright}\heiti
      作者签名：\underline{\hspace{7em}}\qquad{}%
      日期：\SWFU@Year{}\,年\,\SWFU@Month{}\,月\,\SWFU@Date{}\,日
    \end{flushright}
  \end{large}
}

\newenvironment{abstract}{%
  \thispagestyle{plain}\phantomsection{}%
  \begin{center}
    {\singlespacing\Large\textbf{\@title}}\\[5mm]%
    \large{\@author}\par
    \large{（西南林业大学\,大数据与智能工程学院，云南昆明\, 650224）}
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
\renewcommand*{\bibfont}{\small} % 10.5pt

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
