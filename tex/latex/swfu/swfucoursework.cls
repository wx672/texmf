% 实验报告 --- 改版自本科生实习报告（教务处版）
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfucoursework}

\RequirePackage{etoolbox,calc}
\newcounter{CDate}

\RequirePackage{pgfkeys}

\pgfkeys{/swfu/.is family, /swfu,%
  Title/.store in     = \@title, %实习名称
  School/.store in    = \SWFU@School,%学院
  Author/.store in    = \@author,%姓名
  ID/.store in        = \SWFU@ID,%学号
  Class/.store in     = \SWFU@Class,%班级
  Tutor/.store in     = \SWFU@Tutor,%指导教师
  Term/.store in     = \SWFU@Term,%学期
  Comment/.store in  = \SWFU@Comment, %教师评语
  CommentDate/.store in = \SWFU@CommentDate,%评语日期
  Mark/.store in      = \SWFU@Mark,  %成绩
  Sig/.store in       = \SWFU@Sig, %指导教师（签名）
  %%% Defaults
  Title     = \textcolor{red}{实习名称？},%
  School    = {大数据与智能工程学院},%
  Author    = \textcolor{red}{姓名？},% 
  ID        = \textcolor{red}{学号？},%
  Class     = \textcolor{red}{班级？},%
  Tutor     = {王晓林},% 
  Term      = \textcolor{red}{学期？},%
  CommentDate = {年\qquad{}月\qquad{}日},%评语日期
  Comment  = {},%教师评语
  Mark      = {B},% \textcolor{red}{分数？},%成绩
  Sig       = {wangxiaolin},%
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
\setmonofont{DejaVu Sans Mono}
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
      {\Huge\heiti\SWFU@School}\\[1cm]%
      {\LARGE\bfseries 《\@title{}》课程实验报告}\\[2cm]%
      \begin{Large}%
        \@author (\SWFU@ID)\\\medskip% 姓名（学号）
        \SWFU@Class\\\medskip% 班级
        指导教师：\SWFU@Tutor\\\medskip% 指导教师
      \end{Large}
      \vfill
      {\Large 学期：\SWFU@Term}%学期
    \end{center}%
  \end{titlepage}%
}

% #1 - comment text
% #2 - comment date
\newrobustcmd\comment{%
  \section{指导教师评语}%
  \begin{center}
    \Huge\purisa\textcolor{red}{\SWFU@Comment}
  \end{center}
  \vspace*{1cm}%
  \begin{flushright}
    \makebox[15em][l]{成绩：\quad{\Huge\purisa\textcolor{red}{\SWFU@Mark}}}\par\bigskip%
    \makebox[15em][l]{指导教师（签名）：\quad\includegraphics[width=25mm]{\SWFU@Sig}}\par\bigskip
    \makebox[15em][r]{\purisa\SWFU@CommentDate}
  \end{flushright}
}

%%%%%   misc
\renewrobustcmd{\headrulewidth}{0pt}
\urlstyle{tt} % url.sty
\raggedbottom{}
\deflength{\parindent}{2em}

\providerobustcmd{\tightlist}{%
  \setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}}

