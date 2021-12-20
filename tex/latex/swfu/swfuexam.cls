% 西南林业大学试卷
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfuexam}

\DeclareOption{a3}{%
  \PassOptionsToPackage{a3paper,landscape,twocolumn,%
    columnsep=3cm,vmargin=20mm,left=4cm,right=2cm}{geometry}}

\DeclareOption{a4}{%
  \PassOptionsToPackage{onecolumn,paperwidth=195mm,paperheight=270mm,%
    vmargin=20mm,left=25mm,right=15mm}{geometry}}

\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{ctexart}
}
\ExecuteOptions{a3} % default to a3
\ProcessOptions\relax

\LoadClass[scheme=chinese,zihao=-4]{ctexart}

\RequirePackage{pgfkeys}

\pgfkeys{
  Yfrom/.store in = \SWFU@Yfrom, Yfrom=,%
  Yto/.store in = \SWFU@Yto, Yto=,%
  Term/.store in      = \SWFU@Term, Term=,%
  Course/.store in    = \SWFU@Course, Course=,%
  AB/.store in = \SWFU@AB, AB=,% A、B卷
  Lecturer/.store in  = \SWFU@Lecturer, Lecturer=,%
  Group/.store in     = \SWFU@Group, Group=,%
  EXtype/.store in    = \SWFU@EXtype, EXtype=闭卷,% 开卷
  EXtime/.store in    = \SWFU@EXtime, EXtime=120,%
}

\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

\RequirePackage{calc,ifthen}% \ifthenelse
\RequirePackage{geometry}
\RequirePackage{graphicx}
\graphicspath{{./figs/}{./}} %note that the trailing “/” is required

\RequirePackage{lastpage,changepage} % for 'page n of m'; \ifoddpage
\RequirePackage{dashrule} % \dashfill
\RequirePackage{amsmath,amsfonts,amssymb}
\RequirePackage{fancybox} % for \fancyput
\RequirePackage{multicol,marvosym,soul,tasks,indentfirst,enumitem}
\RequirePackage{setspace} % \singlespacing, \onehalfspacing, \doublespacing

\RequirePackage{tabularray}

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhead{} \fancyfoot{}
\cfoot{第\,\thepage\,页，共\,\pageref{LastPage}\,页}
\renewcommand{\headrulewidth}{0pt}

\newcommand{\code}[1]{\texttt{#1}}

\newcommand{\bblank}{\underline{\hspace{1in}}}
\newcommand{\hroom}[1]{\underline{\quad{}#1\quad}}
%\newcommand{\vroom}[2]{\rule{0pt}{#1}\par{}#2\par{}\rule{0pt}{#1}}%\vroom{12ex}{text}
\newcommand{\swfuhdash}[1]{%
  \hdashrule[.5ex][x]{.41\textheight}{.1pt}{2mm}#1%
  \hdashrule[.5ex][x]{.41\textheight}{.1pt}{2mm}}

\newsavebox{\swfubbox}
\newcommand{\SWFCbinding}{%
  \sbox{\swfubbox}{%
    \parbox{\textheight}{{\centering%
      \makebox[\textheight][s]{%
        \mbox{姓名\bblank}\ \mbox{学号\bblank}\ \mbox{班级\bblank}\ 
        \mbox{任课教师\hroom{\SWFU@Lecturer}}}\\[3mm]%
      \mbox{请在所附答题纸上空出密封位置。并填写姓名、学号、班级、任课教师}\\[3mm]%
      \swfuhdash{密封线以下, 不得加注任何标记}}}}%
  \ifthenelse{\boolean{@twocolumn}}%
  {\fancyput(-.5in,-10in){\rotatebox{90}{\usebox{\swfubbox}}}} % then
  {} % else
}

\newcommand\Clearpage{% a4 only. need a better solution.
  \checkoddpage%
  \ifoddpage%
  \reversemarginpar{}%
  \marginpar{\rotatebox{90}{\usebox{\swfubbox}}}%
  \else\fi%
  \clearpage
}

\newcommand{\SWFCheader}{
  \vspace*{1ex}
  \begin{center}
    {\bfseries
      \mbox{\LARGE 西南林业大学\SWFU@Yfrom~\symbol{`~}~\SWFU@Yto{}学年第~\SWFU@Term~学期}\\\bigskip
      \mbox{\LARGE 《\SWFU@Course{}》试题（\SWFU@AB{}卷）}\\\bigskip
      \mbox{\large \SWFU@Group\qquad{}考试形式：\SWFU@EXtype\qquad{}考试时长：%
        \SWFU@EXtime{}分钟}\\\medskip}
    \begin{tblr}{width=.9\columnwidth,colspec={cccccccccccX[c]}, vlines, hlines}
      题号         &一&二&三&四&五&六&七&八&九&十&总分\\
      分数         & & & & & & & & & & & \\
      {计\\分\\人} & & & & & & & & & & & \\
    \end{tblr}
  \end{center}
  \vspace{3mm}
}

\RequirePackage{wx672minted}
\usemintedstyle{bw}
\newCJKfontfamily\sig{signature}

% \ctexset{  
%   punct=kaiming,
%   section/format = \Large\bfseries,
% }

\RequirePackage{zhnumber}
\RequirePackage[explicit]{titlesec}

\titleformat{\section}[hang]{\large\bfseries\raggedright}%
{% label  
  \begin{tblr}{width=2cm,colspec={X[c]},hline{1,2},vlines}
    \normalfont{分数}\\
    \\
  \end{tblr}\quad\thesection{}
}%
{0pt}% sep
{% before-code
  #1\\\titlerule
}
\titlespacing*{\section}{0pt}{15mm}{3mm}

% \titleformat{\subsection}[hang]{\large\bfseries\raggedright}%
% {% label  
%   \thesubsection{}
% }%
% {0pt}% sep
% {% before-code
%   #1
% }
% \titlespacing*{\subsection}{0pt}{15mm}{3mm}

\setlength{\fboxsep}{2ex}

\newcommand\setmark[3]{（共{#1}题，每题{#2}分，共{#3}分）}

\newcommand{\blank}[1]{\underline{\hspace{#1}}}
\newcommand{\blankone}{\underline{\hspace{1em}}}
\newcommand{\blanksix}{\underline{\hspace{6em}}}

\onehalfspacing
