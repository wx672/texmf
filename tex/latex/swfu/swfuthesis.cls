% 西南林业大学本科毕业（设计）论文 [2019]
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfuthesis}

\RequirePackage{calc,etoolbox}

\RequirePackage{pgfkeys}

\pgfkeys{/swfu/.is family, /swfu,%
  Author/.store in    = \@author, %
  Author*/.store in   = \SWFU@Author*, %英文姓名
  Title/.store in     = \@title, %
  Title*/.store in    = \SWFU@Title*, %英文标题
  Signature/.store in = \SWFU@Signature, %
  ID/.store in        = \SWFU@ID, %
  Major/.store in     = \SWFU@Major, %
  Advisor/.store in   = \SWFU@Advisor, %
  Reviewer/.store in  = \SWFU@Reviewer, %
  Month/.store in     = \SWFU@Month, %
  Date/.store in      = \SWFU@Date, %
  Year/.store in      = \SWFU@Year, %
  %%% Defaults
  Author    = \textcolor{red}{学生姓名？},% 
  Author*   = \textcolor{red}{英文学生姓名？},% 
  Title     = \textcolor{red}{题目？},% 
  Title*    = \textcolor{red}{英文标题？}, % 
  Signature = \textcolor{red}{手写签名图片？}, % 用于原创声明页
  ID        = \textcolor{red}{学号},% 
  Major     = \textcolor{red}{专业},% 
  Advisor   = {赵辛楣（教授），高松年（教授）},% 
  Reviewer  = {李梅亭（教授）},% 
  Month     = \the\month,% 
  Date      = \the\day,% 
  Year      = \the\year,%   
}

\newrobustcmd{\swfusetup}[1]{\pgfkeys{/swfu, #1}}

% pass unknown options to ctexbook
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}
\ProcessOptions\relax

\LoadClass[scheme=chinese,zihao=-4]{ctexbook}

\ctexset{%
  chapter/name = {},%
  chapter/number = {\thechapter},%
  chapter/format = \centering\large\heiti,% 小3号，黑体
  chapter/beforeskip = {0pt},% 抬高章标题
  section/format = {\heiti\zihao{4}},% 4号，黑体
  subsection/format = \heiti,% 小4号，黑体
  subsubsection/format = \heiti,% 黑体（在规范中未说明）
  paragraph/format = \heiti,% 黑体（在规范中未说明）
  subparagraph/format = \heiti,% 黑体（在规范中未说明）
}

\newCJKfontfamily\HEI{Noto Sans CJK SC}% for a better "〇"

%%%%% geometry
\RequirePackage[%showframe,%showcrop,
a4paper,asymmetric,twoside=true,%
vmargin=3cm,% 上下页边距为3cm
inner=3cm,outer=2cm,% for twoside. 左=(2.5cm + 装订边0.5cm)，右2cm
headsep=1em,footskip=1cm,%headheight=15pt, to avoid "headheight too small"
nomarginpar]{geometry}

%%%%% tocloft
\RequirePackage{tocloft}
\deflength{\cftbeforetoctitleskip}{0em}% make "目录" higher
\deflength{\cftbeforeloftitleskip}{0em}%
\deflength{\cftbeforelottitleskip}{0em}%
\renewrobustcmd{\cftdotsep}{2}%
\renewrobustcmd{\cfttoctitlefont}{\hfill\Large\heiti}%
\renewrobustcmd{\cftaftertoctitle}{\hfill}%
\renewrobustcmd{\cftloftitlefont}{\hfill\Large\heiti}%
\renewrobustcmd{\cftafterloftitle}{\hfill}%
\renewrobustcmd{\cftlottitlefont}{\hfill\Large\heiti}%
\renewrobustcmd{\cftafterlottitle}{\hfill}%

%%%%% fancyhdr
\RequirePackage{fancyhdr}
\fancyhf{}

\fancypagestyle{plain}{% 1st page of each chapter
  \fancyhf{}%
  \fancyfoot[C]{\fontsize{8}{8}\selectfont\thepage}% like "88"
  \renewrobustcmd{\headrulewidth}{0pt}}

\pagestyle{fancy}

\renewrobustcmd{\chaptermark}[1]{%
  \markboth{\thechapter.\ #1}{}}

\fancyhead[CE]{\footnotesize\leftmark}
\fancyhead[CO]{\footnotesize\@title}
\fancyfoot[C]{\fontsize{8}{8}\selectfont\thepage}% e.g. "88"

%%%%% misc
\RequirePackage{tabularray,multicol,tasks}%
\RequirePackage{emptypage} % removing header/footer on empty pages
\RequirePackage[bottom]{footmisc} % stick footnote at bottom of page
\RequirePackage{enumitem} % \setlist
\setlist{nosep} % kills all vertical spacing

%%%%% graphicx
\RequirePackage{graphicx}
\graphicspath{% mind the trailing '/'
  {./figs/}{../figs/}{./}{../}}

%%%%% hyperref
\RequirePackage{xcolor}
\RequirePackage{hyperref}
\hypersetup{%
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
\renewrobustcmd{\doublespacing}{\setstretch{1.5}}
\renewrobustcmd{\onehalfspacing}{\setstretch{1.2}}

%%%%% tikz
\RequirePackage{tikz}
\usetikzlibrary{calc,positioning,backgrounds,scopes}%

%%%%% biblatex
\RequirePackage[backend=biber,%
style=gb7714-2015,sorting=none,gbpub=false,gbtype=false,gbpunctin=false,%
url=false,doi=false,isbn=false]{biblatex}
%\renewrobustcmd*{\bibfont}{\small} % 11pt

%%%%% caption
\RequirePackage[labelfont=bf]{caption} % \captionsetup, font=footnotesize,
\DeclareCaptionFont{hei}{\small\heiti}
\captionsetup{labelsep=quad, format=hang, skip=5pt, font=hei}
\RequirePackage{subcaption}

\captionsetup{subrefformat=parens}
\labelformat{subfigure}{\thefigure(#1)}

% set caption label style to dashed, e.g. 3-2.
% \renewrobustcmd{\thefigure}{\thechapter{}-\arabic{figure}}
% \renewrobustcmd{\thesubfigure}{\thechapter{}-\arabic{subfigure}}
% \renewrobustcmd{\thetable}{\thechapter{}-\arabic{table}}
% \renewrobustcmd{\thesubtable}{\thechapter{}-\arabic{subtable}}
\renewrobustcmd{\theequation}{\thechapter{}-\arabic{equation}}

%%%%% minted
\RequirePackage[chapter]{minted} % has to be loaded at last!!!
\usemintedstyle{bw}

\renewrobustcmd{\listingscaption}{程序} % used by minted
\renewrobustcmd{\listoflistingscaption}{程序目录}
\renewrobustcmd{\thelisting}{\thechapter{}-\arabic{listing}}

\renewrobustcmd{\theFancyVerbLine}{
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

\newminted{c}{} \newminted{cpp}{} \newminted{shell}{}
\newminted{latex}{} \newminted{bibtex}{} \newminted{gas}{}
\newminted{nasm}{} \newminted{python}{} \newminted{js}{}
\newminted{html}{}

% need lexer.py
% https://github.com/fcurella/jsx-lexer/blob/master/jsx/lexer.py
\newenvironment{jsxcode}%
{\VerbatimEnvironment%
\begin{minted}{lexer.py:JsxLexer -x}}{\end{minted}}%

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
\renewrobustcmd{\maketitle}{% Title page layout
  \begin{titlepage}
    \vspace*{5mm}
    \begin{center}
      \includegraphics[width=17em]{swfulogo-text}\\[6mm]%
      \makebox[19em][s]{\LARGE\heiti%
        本科毕业论文\:(设计)}\\[1mm]%
      {\LARGE\HEI%
        （\zhdigits{\SWFU@Year}\,届）}\\[8mm]%
      \includegraphics[width=8em]{swfulogo-emblem}\\[1cm]
      \begin{large}
        \begin{tblr}{colspec={cX[c]},%
            rowsep=-.17\baselineskip,% work with \raisebox{} below
            column{2}={font=\Large\heiti},% 小2号、黑体
            hline{Z}={2}{leftpos=-1,rightpos=-1},%
          }
          题\qquad{}目&{\setstretch{1.2}%
            \makebox[0pt][s]{%
              \parbox[t]{\linewidth}{\centering%
                \@title\strut%\fbox{你好\strut}
              }}%
            \raisebox{-.16\baselineskip}[0pt][0pt]{% work with rowsep above
              \rule{\linewidth}{.4pt}}}\\%
        \end{tblr}\\[25mm]
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
        \begin{tblr}{colspec={rcrX[c]},%
            rows={belowsep=-5pt,abovesep=10pt},%
            hline{2,3}={2,4}{.4pt},%
            hline{4,5}={2-4}{.4pt},%
            cell{3,4}{2}={c=3}{c},% advisor, reviewer
          }
          学\qquad{}院&\mbox{大数据与智能工程学院}&\enskip{}专业&\mbox{\SWFU@Major}\\
          学生姓名&\mbox{\@author}&\enskip{}学号&\mbox{\SWFU@ID}\\
          指导教师&\mbox{\SWFU@Advisor}\\
          \makebox[4em][s]{评阅人}&\mbox{\SWFU@Reviewer}\\
        \end{tblr}
      \end{large}
      \vfill
      {\Large\SWFU@Year\,年\,\SWFU@Month\,月\,\SWFU@Date\,日}%
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
    % {\singlespacing\heiti\Large\StrSubstitute{\@title}{\\}{}}\\[5mm]%
    {\singlespacing\heiti\Large\@title}\\[5mm]%
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
    {\singlespacing\zihao{3}\SWFU@Title*}\\[5mm]%
    {\large
      \SWFU@Author*\\%
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

\newrobustcmd{\makebib}{% 参考文献
  % \zihao{4}{学校规范要求“参考文献”四字用4号字，不要理它，保持小3号就好}
  \begin{singlespace}%学校规范中对参考文献页的行距没有要求
    \printbibliography[heading={bibintoc},title={参考文献}]\label{p:ref}
  \end{singlespace}
  \pagebreak}% 
\renewrobustcmd*{\bibfont}{\small} % 5号宋体

\newenvironment{advisorInfo}{% 指导教师简介
  \thispagestyle{plain}\phantomsection{}%
  \addcontentsline{toc}{chapter}{指导教师简介}%
  \chapter*{\zihao{4}指导教师简介}%
  \vskip 2em\begin{doublespace}\small}%5号宋体
  {\end{doublespace}\pagebreak}
  
\newenvironment{Thanks}{% 致谢
  \thispagestyle{plain}\phantomsection{}%
  \addcontentsline{toc}{chapter}{致\hspace{1em}谢}%
  \chapter*{致\quad{}谢}
  \vskip 2em\begin{doublespace}\small}%5号宋体
  {\end{doublespace}\pagebreak\singlespacing}

%%%%% misc
\renewrobustcmd{\headrulewidth}{.4pt}
\urlstyle{tt} % url.sty
\raggedbottom{}
\deflength{\parindent}{2em}

\renewrobustcmd{\listfigurename}{插图目录}
\renewrobustcmd{\listtablename}{表格目录}
