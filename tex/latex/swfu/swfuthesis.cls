% 西南林业大学本科毕业（设计）论文 [2019]
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfuthesis}

\RequirePackage{pgfkeys}

\pgfkeys{/swfu/.is family, /swfu,%
  Author/.store in    = \@author,        Author = 学生姓名？,% 
  Title/.store in     = \@title,         Title = 题目？,% 
  Signature/.store in = \SWFU@Signature, Signature =, % 作者签名（用于原创声明页）
  ID/.store in        = \SWFU@ID,        ID = 学号,% 
  Major/.store in     = \SWFU@Major,     Major = 专业,%  
  enTitle/.store in   = \SWFU@enTitle,   enTitle = 英文标题, %
  enAuthor/.store in  = \SWFU@enAuthor,  enAuthor = 英文学生姓名,%
  Advisor/.store in   = \SWFU@Advisor,   Advisor = 指导教师姓名（职称）,%
  Reviewer/.store in  = \SWFU@Reviewer,  Reviewer = 评阅人姓名（职称）,%
  Month/.store in     = \SWFU@Month,     Month = \the\month,%
  Date/.store in      = \SWFU@Date,      Date = \the\day,%
  Year/.store in      = \SWFU@Year,      Year = \the\year,%
}

\newcommand{\swfusetup}[1]{\pgfkeys{/swfu, #1}}

% pass unknown options to ctexbook
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax

\LoadClass[scheme=chinese,zihao=-4]{ctexbook}

\ctexset{%
  chapter/name = {},%
  chapter/number = {\thechapter},%
  chapter/format = \centering\large\heiti,% 小3号，黑体
  section/format = {\heiti\zihao{4}},% 4号，黑体
  subsection/format = \heiti,% 小4号，黑体
  subsubsection/format = \heiti,% 黑体（在规范中未说明）
  paragraph/format = \heiti,% 黑体（在规范中未说明）
  subparagraph/format = \heiti,% 黑体（在规范中未说明）
}

%%%%% geometry
\RequirePackage[%showframe,%showcrop,
a4paper,asymmetric,twoside=true,% if oneside, left/right; if twoside, inner/outer
vmargin=3cm,% 上下页边距为3cm，左=(2.5cm + 装订边0.5cm)，右2cm
% left=3cm,right=2cm, % for oneside
inner=3cm,outer=2cm,% for twoside (comment out \renewcommand{\cleardoublepage} following)
headsep=1em,footskip=1cm,%headheight=15pt, to avoid "headheight too small"
nomarginpar]{geometry}

%\renewcommand\cleardoublepage{\clearpage} % for oneside configuration

%%%%% titlesec, for making chapter header higher
\RequirePackage{titlesec}%explicit
\titleformat{\chapter}[hang]% shape
{\normalfont\large\heiti}%    format
{\thechapter}%                label
{20pt}%                       sep between label and title body
{\centering\large}%        before-code #1

\titlespacing{\chapter}{0pt}{-20pt}{30pt}

%%%%% xstring 
\RequirePackage{xstring} % for \StrSubstitute{} in \fancyhead

%%%%% fancyhdr
\RequirePackage{fancyhdr}
\fancyhf{}

\fancypagestyle{plain}{% 1st page of each chapter
  \fancyhf{}%
  \fancyfoot[C]{\fontsize{8}{8}\selectfont --\;\thepage\;--}
  \renewcommand{\headrulewidth}{0pt}}

\pagestyle{fancy}

\renewcommand{\chaptermark}[1]{%
  \markboth{\thechapter.\ #1}{}}

\fancyhead[CE]{\footnotesize\leftmark}
\fancyhead[CO]{\footnotesize\StrSubstitute{\@title}{\\}{}}
\fancyfoot[C]{\fontsize{8}{8}\selectfont -- \thepage\ --}

%%%%% misc
% \RequirePackage{indentfirst} % enabled if scheme=chinese
\RequirePackage{emptypage} % removing header/footer on empty pages
\RequirePackage{units,xparse}%
\RequirePackage[bottom]{footmisc} % stick footnote at bottom of page
\RequirePackage{enumitem} % \setlist
\setlist{nosep} % kills all vertical spacing
\RequirePackage{tabularray,multicol,tasks}%,booktabs,makecell,tabularx,multirow,longtable

%%%%% graphicx
\RequirePackage{graphicx}
\graphicspath{% mind the trailing '/'
  {./figs/}{../figs/}{./img/}{../img/}{./pics/}{../pics/}{./}{../}}

%%%%% tocloft
\RequirePackage{tocloft}
\renewcommand\cftdotsep{2}
\renewcommand\cfttoctitlefont{\hfill\Large\heiti}
\renewcommand\cftaftertoctitle{\hfill}
\renewcommand\cftloftitlefont{\hfill\Large\heiti}
\renewcommand\cftafterloftitle{\hfill}
\renewcommand\cftlottitlefont{\hfill\Large\heiti}
\renewcommand\cftafterlottitle{\hfill}

%%%%% hyperref
\RequirePackage{xcolor}
\RequirePackage{hyperref}
\hypersetup{%
  % bookmarksnumbered,%
  % breaklinks=true,%
  colorlinks=false,%
  pdfborderstyle={/S/U/W .3},% underline of width .3pt 
  linkbordercolor=red,       % internal links
  citebordercolor=cyan,      % links to bibliography
  filebordercolor=magenta,   % file links
  urlbordercolor=blue,       % external links
}
%\def\UrlBreaks{\do\/\do-} % break long url
\RequirePackage[nobiblatex]{xurl} % break long url

%%%%% fixme
\RequirePackage{fixme}
\fxsetup{%
  status=draft,%
  theme=color,%
  margin=false,marginclue=false,%
  inline=true,%  
  author=,%
}

%%%%% fonts
\RequirePackage{amsmath,amsfonts,amssymb,marvosym,pifont}

%%%%% setspace (\singlespacing, \onehalfspacing, \doublespacing)
\RequirePackage[doublespacing]{setspace}
\renewcommand{\doublespacing}{\setstretch{1.5}}
\renewcommand{\onehalfspacing}{\setstretch{1.2}}

%%%%% tikz
\RequirePackage{tikz}
\usetikzlibrary{calc,positioning,backgrounds,scopes}%

%%%%% biblatex
\RequirePackage[backend=biber,%
style=gb7714-2015,sorting=gb7714-2015,gbpub=false,gbtype=false,gbpunctin=false,%
url=false,doi=false,isbn=false]{biblatex}
%\renewcommand*{\bibfont}{\small} % 11pt

%%%%% caption
\RequirePackage[labelfont=bf]{caption} % \captionsetup, font=footnotesize,
\DeclareCaptionFont{hei}{\small\heiti}
\captionsetup{labelsep=quad, format=hang, skip=5pt, font=hei}
\RequirePackage{subcaption}

\captionsetup{subrefformat=parens}
\labelformat{subfigure}{\thefigure(#1)}

% set caption label style to, e.g. 3-2.
% \renewcommand{\thefigure}{\thechapter{}-\arabic{figure}}
% \renewcommand{\thetable}{\thechapter{}-\arabic{table}}
% \renewcommand{\thesubfigure}{\thechapter{}-\arabic{subfigure}}
% \renewcommand{\thesubtable}{\thechapter{}-\arabic{subtable}}
\renewcommand{\theequation}{\thechapter{}-\arabic{equation}}

%%%%% minted
\RequirePackage[chapter]{minted} % has to be loaded at last!!!
\usemintedstyle{bw}

\renewcommand{\listingscaption}{程序} % used by minted
\renewcommand{\listoflistingscaption}{程序目录}
\renewcommand{\thelisting}{\thechapter{}-\arabic{listing}}

\renewcommand{\theFancyVerbLine}{
  \textcolor{lightgray}{\scriptsize\arabic{FancyVerbLine}}}

\newmintinline{c}{} %e.g. \cinline{int main()}
\newmintinline[ltx]{latex}{}
\newmintinline{python}{}
\newmintinline{shell}{}

\setminted{%
  linenos=true,numbersep=3pt,fontsize=\small,
  baselinestretch=0.95,
  frame=leftline,framesep=10pt,%xleftmargin=2cm,
  % rulecolor=\color{lightgray},
  autogobble=true,breaklines=true}

\newminted{c}{} \newminted{cpp}{} \newminted{shell}{} \newminted{latex}{} \newminted{bibtex}{}
\newminted{gas}{} \newminted{nasm}{} \newminted{python}{}

\newmintedfile[cfile]{c}{%\cfile{filepath}
  baselinestretch=1,linenos,breaklines,autogobble,fontfamily=FiraCode}%
\newmintedfile[cppfile]{cpp}{%\cppfile{filepath}
  baselinestretch=1,linenos,breaklines,autogobble,fontfamily=FiraCode}%
\newmintedfile[mkfile]{makefile}{%\mkfile{filepath}
  baselinestretch=1,linenos,breaklines,autogobble,fontfamily=FiraCode}%
\newmintedfile{nasm}{%\nasmfile{filepath}
  baselinestretch=1,linenos,breaklines,autogobble,fontfamily=FiraCode}%
\newmintedfile[pasfile]{pascal}{%\pasfile{filepath}
  baselinestretch=1,linenos,breaklines,autogobble,fontfamily=FiraCode}%
\newmintedfile[pyfile]{python}{%\pyfile{filepath}
  baselinestretch=1,linenos,breaklines,autogobble,fontfamily=FiraCode}%
\newmintedfile{shell}{%\shellfile{filepath}
  baselinestretch=1,linenos,breaklines,autogobble,fontfamily=FiraCode}%
\newmintedfile[shfile]{shell}{%\shfile{filepath}
  baselinestretch=1,linenos,breaklines,autogobble,fontfamily=FiraCode}%

\newmint[csingle]{c}{linenos=false,frame=topline,framesep=3pt,}

% code listing across pages
\newenvironment{longlisting}{\captionsetup{type=listing}%
  \begin{singlespace}}{\end{singlespace}}

\newenvironment{codeblock}[1][.8]{% e.g. \begin{codeblock} ... \end{codeblock}
  \begin{center}\begin{minipage}{#1\textwidth}\begin{singlespace}}%
      {\end{singlespace}\end{minipage}\end{center}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\maketitle}{% Title page layout
  \begin{titlepage}
    \vspace*{5mm}
    \begin{center}
      \makebox[17em][s]{\includegraphics[width=17em]{swfulogo-text}}\\[6mm]%
      \makebox[19em][s]{{\LARGE\heiti 本科毕业论文\hspace{-.5ex}（设计）}}\\[1mm]%
      \makebox[13em][c]{\hspace{.5em}{\LARGE\heiti（\zhdigits{\SWFU@Year}\,届）}}\\[8mm]%
      \makebox[8em][s]{\includegraphics[width=8em]{swfulogo-emblem}}\\[1cm]
      \begin{minipage}{\linewidth}
        \begin{large}
          \begin{tblr}{width=\linewidth, colspec={@{}cX[c]@{}},%
              rowsep=-.17\baselineskip,% work with \raisebox{} below
              column{2}={font=\Large\heiti},% 小2号、黑体
              hline{Z}={2}{leftpos=-1,rightpos=-1},% 
            }
            题\qquad{}目&{\setstretch{1.2}%
              \makebox[0pt][s]{%
                \parbox[t]{.99\linewidth}{%
                  \centering\@title\strut%\fbox{你好\strut}                  
                }}%
              \raisebox{-.16\baselineskip}[0pt][0pt]{% work with rowsep above
                \rule{\linewidth}{.4pt}}}\\%            
          \end{tblr}\\[25mm]
          %%%
          \begin{tblr}{width=\linewidth, colspec={@{}rX[c]rc@{}},%
              rows={belowsep=-5pt,abovesep=10pt},%
              hline{2,3} = {2,4}{.4pt,solid},%
              hline{4,5} = {2-4}{.4pt,solid},%
              cell{3,4}{2} = {c=3}{c},% advisor, reviewer
            }
            学\qquad{}院&\mbox{大数据与智能工程学院}&\quad{}专\enskip{}业&\SWFU@Major\\
            学生姓名&\@author&\quad{}学\enskip{}号&\SWFU@ID\\
            指导教师&\mbox{\SWFU@Advisor}\\
            \makebox[4em][s]{评阅人}&\mbox{\SWFU@Reviewer}\\
          \end{tblr}
        \end{large}
      \end{minipage}
      \vfill
      {\Large\bfseries\SWFU@Year\,年\,\SWFU@Month\,月\,\SWFU@Date\,日}%
    \end{center}%
  \end{titlepage}%
  \cleardoublepage
  \thispagestyle{empty}
  \begin{center}
    {\Large\heiti 原创性声明}
  \end{center}
  \begin{large}
    \hspace{2em}本人郑重声明，所呈交的学位论文是本人在指导教师指导下进行的研究工作及取得的
    研究成果，论文成果归西南林业大学所有。尽我所知，除了论文中特别加以标注和致谢的地方外，
    论文中不包含其他人已经发表或撰写过的研究成果，也不包含为获得 西南林业大学或其他教育机构
    的学位或证书而使用过的材料。与我共同工作的同志对本研究所作的贡献均已在论文中作了明确的
    说明。

    申请学位论文与资料若有不实之处，本人承担一切相关责任。
    \vspace*{1em}
    \begin{flushright}
      作者签名：\underline{\,\makebox[25mm][c]{\SWFU@Signature}\,}\quad{}%
      日期：\underline{\,\SWFU@Year{}\,}年%
      \underline{\,\makebox[1em][c]{\SWFU@Month{}}\,}月%
      \underline{\,\SWFU@Date{}\,}日
    \end{flushright}
  \end{large}
  \cleardoublepage
}

\newenvironment{abstract}{% 中文摘要
  \thispagestyle{plain}\phantomsection{}%
  \begin{center}% 摘要标题，小2号（Large）、黑体、居中    
    {\singlespacing\heiti\Large\StrSubstitute{\@title}{\\}{}}\\[5mm]%
    {\zihao{4} % 署名用4号，宋体
      \@author\par%      
      （西南林业大学\,大数据与智能工程学院\,\,昆明\,\,650224）}% 地址，4号宋体
  \end{center}%
  \vspace{3ex}%
  \noindent{\heiti 摘\quad{}要：}\small}{}% 摘要正文为5号字（small）

\newenvironment{keyword}{% 关键词内容为5号字（small）
  \vskip 2ex\noindent{\heiti 关键词：}\small}{\cleardoublepage}

\newenvironment{EAbstract}{%
  \thispagestyle{plain}\phantomsection{}%
  \begin{center}
    % 英文摘要标题，3号，居中，加粗。
    {\singlespacing\zihao{3}\SWFU@enTitle}\\[5mm]%
    {\large
      \SWFU@enAuthor\\%
      % 官方模板的地址肯定是体育老师设计的，用不得。
      \begin{singlespace}
        College of Big Data and Intelligence Engineering\\%
        Southwest Forestry University\\%
        Kunming 650224, Yunnan, China
      \end{singlespace}}%
  \end{center}
  \vspace{2em}%
  % Abstract一词，小4号加粗；摘要正文，小4号字。
  \noindent\textbf{Abstract:}}{}

\newenvironment{EKeyword}{%Key Words一词，小4号加粗；关键词正文，小4号字。
  \vskip 2ex\noindent\textbf{Key Words: }}{\cleardoublepage}

\newcommand{\makebib}{% 参考文献
  % \zihao{4}{学校规范要求“参考文献”四字用4号字，不要理它，保持小3号就好}
  \begin{singlespace}%学校规范中对参考文献页的行距没有要求
    \printbibliography[heading={bibintoc},title={参考文献}]\label{p:ref}
  \end{singlespace}
  \pagebreak}% 
\renewcommand*{\bibfont}{\small} % 5号宋体

\newenvironment{advisorInfo}{% 指导教师简介
  \thispagestyle{plain}\phantomsection{}%
  \addcontentsline{toc}{chapter}{指导教师简介}%
  \chapter*{\zihao{4}指导教师简介}%
  \vskip 2em\begin{doublespace}\small}%5号宋体
  {\end{doublespace}\pagebreak}
  
\newenvironment{acknowledgment}{% 致谢
  \thispagestyle{plain}\phantomsection{}%
  \addcontentsline{toc}{chapter}{致\hspace{1em}谢}%
  \chapter*{致\quad{}谢}
  \vskip 2em\begin{doublespace}\small}%5号宋体
  {\end{doublespace}\pagebreak\singlespacing}

%%%%% misc
\renewcommand{\headrulewidth}{.4pt}
\urlstyle{tt} % url.sty
\raggedbottom{}
\setlength{\parindent}{2em}

\renewcommand{\listfigurename}{插图目录}
\renewcommand{\listtablename}{表格目录}
