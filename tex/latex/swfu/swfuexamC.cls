% 西南林业大学成教函授试卷
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfuexamC}

\DeclareOption{a3}{%
  \PassOptionsToPackage{a3paper,landscape,twocolumn,%showframe,
    columnsep=3cm,vmargin=20mm,left=3cm,right=2cm}{geometry}}

\DeclareOption{a4}{%
  \PassOptionsToPackage{onecolumn,paperwidth=195mm,paperheight=270mm,%
    vmargin=20mm,left=25mm,right=15mm}{geometry}}

\DeclareOption{b5}{%16K: 185x260
  \PassOptionsToPackage{onecolumn,paperwidth=184mm,paperheight=260mm,%
    vmargin=20mm,left=15mm,right=15mm}{geometry}}

\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{ctexart}
}
\ExecuteOptions{b5} % default to a3
\ProcessOptions\relax

\LoadClass[scheme=chinese,zihao=-4]{ctexart}

\RequirePackage{pgfkeys}

\pgfkeys{
  Course/.store in = \SWFU@Course, Course={课程名称},%
}

\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

\RequirePackage{calc,ifthen}
\RequirePackage{geometry}
\RequirePackage{graphicx}
\graphicspath{{./figs/}{./}} %note that the trailing “/” is required

\RequirePackage{amsmath,amsfonts,amssymb,biolinum}
\RequirePackage{fancybox,fancyvrb} % for \fancyput
\RequirePackage{multicol,marvosym,ulem,soul,tasks,indentfirst,enumitem}
\RequirePackage{setspace} % \singlespacing, \onehalfspacing, \doublespacing

\RequirePackage{tikz}
\usetikzlibrary{calc,positioning,backgrounds,scopes}%

% Example: \choice{4}{SMTP}{FTP}{HTTP}{DHCP}
\DeclareDocumentCommand\choice{mmmmm}{%
  \begin{tasks}[label=\Alph*.](#1)
  \task #2
  \task #3
  \task #4
  \task #5
  \end{tasks}
}

\RequirePackage{tabularray}

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhead{} \fancyfoot{}
\cfoot{--\;\thepage\;--}
\renewcommand{\headrulewidth}{0pt}

\newcommand{\code}[1]{\texttt{#1}}
\newcommand{\bblank}{\uline{\,\hspace{1in}}\,}
\newcommand{\blank}[1][3em]{\uline{\hspace{#1}}} % \blank{2em}
\newcommand{\answer}[1][\quad]{\uline{\quad{}#1\quad}}%
\newcommand{\blankone}{\uline{\,\hspace{1em}\,}}
\newcommand{\blanksix}{\uline{\,\hspace{6em}\,}}

\newCJKfontfamily\sig{signature}
\newfontfamily\dejavu{DejaVuSansM Nerd Font Mono}

\newcommand{\verbatimfont}[1]{\def\verbatim@font{#1}}%
\newcommand{\verbfont}[1]{\def\verbatim@font{#1}}%

\newcommand{\range}{{~\symbol{`~}~}}
\newcommand{\CMD}[1]{\texttt{\textcolor{Green}{\$} #1}}
\newcommand{\cmd}[1]{\texttt{#1}}
\newcommand\uemph[1]{\emph{\;#1\;}}

\RequirePackage{minted}
\usemintedstyle{bw}

\renewcommand{\theFancyVerbLine}{
  \textcolor{lightgray}{\scriptsize\arabic{FancyVerbLine}}}

\setminted{%
  linenos=true,numbersep=3pt,fontsize=\small,
  baselinestretch=0.95,
  frame=leftline,framesep=10pt,%xleftmargin=2cm,
  % rulecolor=\color{lightgray},
  autogobble=true,breaklines=true}

\newminted{c}{} \newminted{shell}{} \newminted{latex}{} \newminted{bibtex}{}
\newminted{gas}{} \newminted{nasm}{} \newminted{python}{} \newminted{makefile}{}

\onehalfspacing

\RequirePackage{zhnumber}
\RequirePackage[explicit]{titlesec}

% https://tex.stackexchange.com/questions/535650/customize-section-numbering-format-for-chinese-typesetting
\renewcommand\thesection{%
  \zhnum{section}、%
}

\renewcommand\thesubsection{\arabic{subsection}.}%

\titleformat{\section}[hang]{\large\bfseries\raggedright}%
{% label  
  \begin{tblr}{width=2cm,colspec={X[c]},hlines,vlines}
    \normalfont{分数}\\
    \\
  \end{tblr}\quad\thesection{}
}%
{0pt}% sep
{% before-code
  #1\\\titlerule
}
\titlespacing*{\section}{0pt}{15mm}{3mm}

% \ctexset{% doesn't work
%   section = {%
%     % name = {,、},%
%     number = {\Large\chinese{section}},
%     format = {\Large\bfseries}}}%raggedright

\setlength{\fboxsep}{2ex}

\newcommand\setmark[3]{（共{#1}题，每题{#2}分，共{#3}分）}

\newcommand{\SWFUheader}{
  \begin{center}
    \begin{minipage}{.9\columnwidth}
      考试日期：\qquad{}年\qquad{}月\qquad{}日\hfill{}\framebox[15em][l]{\hspace{-1ex}试题号：}
    \end{minipage}\par
    \vspace{1cm}
    {\Large\bfseries 西南林业大学成人高等教育\par{}《\SWFU@Course{}》函授试卷（A）}\par    
    \bigskip\noindent%
    \begin{tblr}{width=.9\columnwidth, colspec={X[l]X[l]X[l]X[l]}}
      姓名:&学号:&专业班级:&教学站、点:\\    
    \end{tblr}
    \begin{tblr}{width=.9\columnwidth,colspec={cccccccccX[c]}, vlines, hlines,%
        cell{1}{1-8,10}={r=2}{m}, cell{4}{1}={c=10}{l},%
        row{3,4}={1cm}}
      题号 & 一 & 二 & 三 & 四 & 五 & 六 & 七 &卷面成绩&备注 \\
      &&&&&&&&100\%&\\
      分数&&&&&&&&&\\
      阅卷老师（签名）:\hspace{10em}批改日期:\\
    \end{tblr}
  \end{center}
}
