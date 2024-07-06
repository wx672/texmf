% 本科生实习报告（教务处版）
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfulabreport}

\RequirePackage{etoolbox,calc}
\newcounter{CDate}

\RequirePackage{pgfkeys}

\pgfkeys{/swfu/.is family, /swfu,%
  Title/.store in     = \@title, %实习名称
  School/.store in    = \SWFU@School,%学院
  Subject/.store in   = \SWFU@Subject,%专业
  Grade/.store in     = \SWFU@Grade,%年级
  Author/.store in    = \@author,%姓名
  ID/.store in        = \SWFU@ID,%学号
  Tutor/.store in     = \SWFU@Tutor,%指导教师
  LabDays/.store in   = \SWFU@LabDays,  %实习天数
  LabDate/.store in   = \SWFU@LabDate,  %实习时间
  Lab/.store in       = \SWFU@Lab,      %实习单位及地点
  Month/.store in     = \SWFU@Month, %
  Date/.store in      = \SWFU@Date,  %
  Year/.store in      = \SWFU@Year,  %
  Comments/.store in  = \SWFU@Comments, %教师评语
  CommentsDate/.store in = \SWFU@CommentsDate,%评语日期
  Mark/.store in      = \SWFU@Mark,  %成绩
  Sig/.store in       = \SWFU@Sig, %指导教师（签名）
  %%% Defaults
  Title     = \textcolor{red}{实习名称？},%
  School    = {大数据与智能工程学院},%
  Subject   = {计算机科学与技术},%
  Grade     = \textcolor{red}{年级？},%
  Tutor     = {王晓林},% 
  Author    = \textcolor{red}{姓名？},% 
  ID        = \textcolor{red}{学号？},% 
  Month     = \the\month,% 
  Date      = \the\day,  % 
  Year      = \the\year, %
  LabDays   = \textcolor{red}{实习天数？},%
  LabDate   = \textcolor{red}{实习时间？},%
  Lab       = {校本部生物楼219机房},%
  Mark      =,% \textcolor{red}{分数？},%成绩
  Sig       = {\includegraphics[width=25mm]{wangxiaolin}},%
  CommentsDate = {年\qquad{}月\qquad{}日},%评语日期
  Comments  = {
    \begin{minipage}[c][5cm][c]{.8\linewidth}
      \vspace*{2cm}
      \begin{flushright}
        \begin{tblr}{width=.3\linewidth,colspec={rX},cell{3}{1}={c=2}{r},rowsep=10pt}
        成绩：&\SWFU@Mark\\
        指导教师（签名）：&\SWFU@Sig\\
        \SWFU@CommentsDate&\\
        \end{tblr}
      \end{flushright}
    \end{minipage}
  },%教师评语
}

\newrobustcmd{\swfusetup}[1]{\pgfkeys{/swfu, #1}}

% pass unknown options to ctexart
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ProcessOptions\relax

\LoadClass[scheme=chinese,zihao=-4]{ctexart}%{ctexbook}%,fontset=none

\ctexset{%
  section/format = {\bfseries\zihao{4}},% 4号，黑体
  subsection/format = \bfseries,% 小4号，黑体
  subsubsection/format = \bfseries,% 黑体（在规范中未说明）
  paragraph/format = \bfseries,% 黑体（在规范中未说明）
  subparagraph/format = \bfseries,% 黑体（在规范中未说明）
}

\setCJKmainfont{Noto Serif CJK SC}%
\setCJKsansfont{Noto Sans  CJK SC}%
\setCJKmonofont{Noto Sans  Mono CJK SC}%
\newfontfamily\purisa{Purisa}%

%%%%% geometry
\RequirePackage[%showframe,%showcrop,
a4paper,nomarginpar,twoside=false,%
vmargin=3cm,left=3cm,right=2cm,%
headsep=1em,footskip=1cm,%headheight=15pt, to avoid "headheight too small"
]{geometry}

\RequirePackage[yyyymmdd]{datetime}%for \ReviewDate

%%%%% fancyhdr
\RequirePackage{fancyhdr}
\fancyhf{}%
\fancypagestyle{plain}{%
  \fancyhf{}%
  \fancyfoot[C]{\fontsize{8}{8}\selectfont\thepage}
  \renewrobustcmd{\headrulewidth}{0pt}}

\pagestyle{plain}

%%%%% misc
\RequirePackage{units}%
\RequirePackage{enumitem} % \setlist
\setlist{nosep} % kills all vertical spacing
\RequirePackage{caption} %work with minted
\RequirePackage{tabularray,multicol,tasks}%

\settasks{%
  label={(\arabic*)},%
  label-width={4ex},%
}

%%%%% graphicx
\RequirePackage{graphicx}
\graphicspath{% mind the trailing '/'
  {./figs/}{../figs/}{./}{../}}

%%%%% hyperref
\RequirePackage{xcolor}
\RequirePackage{hyperref}
\hypersetup{%
  colorlinks,%
  pdfborderstyle={/S/U/W .3},% underline of width .3pt 
  linkbordercolor=red,       % internal links
  citebordercolor=cyan,      % links to bibliography
  filebordercolor=magenta,   % file links
  urlbordercolor=blue,       % external links
}
\RequirePackage[nobiblatex]{xurl} % break long url

%%%%% fonts
\RequirePackage{amsmath,amsfonts,amssymb}

%%%%% setspace (\singlespacing, \onehalfspacing, \doublespacing)
\RequirePackage[onehalfspacing]{setspace}
\renewrobustcmd{\doublespacing}{\setstretch{1.5}}
\renewrobustcmd{\onehalfspacing}{\setstretch{1.2}}

%%%%% tikz
\RequirePackage{tikz}
\usetikzlibrary{calc,positioning,backgrounds,scopes}%

%%%%% minted
\RequirePackage[newfloat]{minted} % has to be loaded at last!!!
%\usemintedstyle{bw}

%\renewrobustcmd{\listingscaption}{程序} % without newfloat
%\renewrobustcmd{\listoflistingscaption}{程序目录}%
\SetupFloatingEnvironment{listing}{name={程序}}        % with newfloat
\SetupFloatingEnvironment{listing}{listname={程序目录}}% 
\SetupFloatingEnvironment{listing}{placement=htbp}% 

\renewrobustcmd{\thelisting}{%
  \thesection{}-\arabic{listing}}

\renewrobustcmd{\theFancyVerbLine}{%
  \textcolor{lightgray}{\scriptsize\arabic{FancyVerbLine}}}

\newmintinline{c}{} %e.g. \cinline{int main()}
\newmintinline[ltx]{latex}{}
\newmintinline{python}{}
\newmintinline{shell}{}

\setminted{%
  linenos=true,numbersep=3pt,fontsize=\small,
  baselinestretch=0.95,
  frame=leftline,framesep=10pt,xleftmargin=1cm,
  % rulecolor=\color{lightgray},
  autogobble=true,breaklines=true}

\newminted{c}{} \newminted{cpp}{} \newminted[shcode]{shell}{}
\newminted{latex}{} \newminted{bibtex}{} \newminted{gas}{}
\newminted{nasm}{} \newminted{python}{} \newminted{js}{}
\newminted{html}{} \newminted{output}{}

\newmintedfile[cfile]{c}{%\cfile{filepath}
  baselinestretch=1,linenos,breaklines,autogobble}%
\newmintedfile[cppfile]{cpp}{%\cppfile{filepath}
  baselinestretch=1,linenos,breaklines,autogobble}%
\newmintedfile[mkfile]{makefile}{%\mkfile{filepath}
  baselinestretch=1,linenos,breaklines,autogobble}%
\newmintedfile{nasm}{%\nasmfile{filepath}
  baselinestretch=1,linenos,breaklines,autogobble}%
\newmintedfile[pasfile]{pascal}{%\pasfile{filepath}
  baselinestretch=1,linenos,breaklines,autogobble}%
\newmintedfile[pyfile]{python}{%\pyfile{filepath}
  baselinestretch=1,linenos,breaklines,autogobble}%
\newmintedfile{shell}{%\shellfile{filepath}
  baselinestretch=1,linenos,breaklines,autogobble}%
\newmintedfile[shfile]{shell}{%\shfile{filepath}
  baselinestretch=1,linenos,breaklines,autogobble}%

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
    \begin{center}
      \includegraphics[width=4in]{swfulogo-text}\\[15mm]%6mm
      \includegraphics[width=1.8in]{swfulogo-emblem}\\[8mm]%6mm
      {\makebox[19em][s]{\Huge\heiti%
          本科生实习报告}}\\[1cm]%
      \begin{minipage}{.7\linewidth}
        \begin{large}
          \begin{tblr}{colspec={rX[c]},%
              column{1}={font=\heiti},%
              rows={belowsep=-4pt,abovesep=16pt},%
              hline{2,3,4,5,6,7,8} = {2}{.4pt},%
            }%
            实习名称&\@title\\
            学\qquad{}院&\SWFU@School\\
            专\qquad{}业&\SWFU@Subject\\
            年\qquad{}级&\SWFU@Grade\\
            指导教师&\SWFU@Tutor\\
            姓\qquad{}名&\@author\\
            学\qquad{}号&\SWFU@ID\\
          \end{tblr}
        \end{large}
      \end{minipage}
      \vfill
      {\heiti\SWFU@Year\,年\,\SWFU@Month\,月\,\SWFU@Date\,日}\\%
      {\heiti 西南林业大学教务处}
    \end{center}%
    \clearpage
    \begin{center}
      {\makebox[15em][s]{\LARGE\heiti 实习环节情况说明}}
    \end{center}
    \vspace*{1cm}
    \begin{enumerate}[itemsep=1ex,parsep=1ex,topsep=2ex]
    \item 实习应拟定实习指导书或计划，实习报告应规定基本内容，拟定框架
      要求。
    \item 实习期间，学生应每日填写实习日志，内容包括：实习时间、地点、
      单位、内容、收获和体会，也可摘抄实习实 测数据资料。实习结束后按
      照要求认真撰写实习报告。实习日志和实习报告在实习完成后一起交指导
      教师，作为实 习成绩评定的依据。
    \item 指导教师按照实习计划的要求，根据学生的实习日志、实习报告、纪律、表现等综合评定实习成绩。
    \end{enumerate}
    凡有下列情况之一者实习成绩为不合格：
    \begin{itemize}[itemsep=1ex,parsep=1ex,topsep=2ex]
    \item[（1）] 未达到实习计划规定的基本要求；
    \item[（2）] 实习报告混乱，分析有原则性错误；实习日志缺失，或内容大
      部分未完成；
    \item[（3）] 实习缺课三分之一以上或无故旷课三天以上；
    \item[（4）] 实习中严重违反纪律。
    \end{itemize}
  \end{titlepage}%
  \cleardoublepage
  \noindent{}实习天数：\underline{\quad\SWFU@LabDays\quad}\quad{}实习时间：\underline{\quad\SWFU@LabDate\quad}\\
  实习单位及地点：\underline{\quad\SWFU@Lab\quad}
}

\newrobustcmd\comments{
  \section{指导教师评语}
  \SWFU@Comments
}

%%%%%   misc
\renewrobustcmd{\headrulewidth}{0pt}
\urlstyle{tt} % url.sty
\raggedbottom{}
\deflength{\parindent}{2em}

\providerobustcmd{\tightlist}{%
  \setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}}

