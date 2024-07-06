% 西南林业大学试卷
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfuexam}

\DeclareOption{a3}{%
  \PassOptionsToPackage{a3paper,nomarginpar,landscape,twocolumn,%showframe,%
    columnsep=25mm,vmargin=2cm,left=4cm,right=2cm}{geometry}}

\DeclareOption{a4}{%
  \PassOptionsToPackage{onecolumn,a4paper,nomarginpar,%showframe,
    vmargin=2cm,left=25mm,right=15mm}{geometry}}

\DeclareOption*{
  \PassOptionsToClass{\CurrentOption}{ctexart}
}
\ExecuteOptions{a3} % default to a3
\ProcessOptions\relax

\LoadClass[scheme=chinese,zihao=-4]{ctexart}

\setCJKmainfont{Noto Serif CJK SC}
\setCJKsansfont{Noto Sans CJK SC}
% \newCJKfontfamily\kaishu{LXGW WenKai GB}%
% \newCJKfontfamily\heiti{WenQuanYi Micro Hei}%

\RequirePackage{calc,etoolbox}%
\RequirePackage{geometry}
\RequirePackage{graphicx}
\graphicspath{{./figs/}{./}} %note that the trailing “/” is required

\RequirePackage{lastpage} % for 'page n of m'; 
\RequirePackage[strict]{changepage} % \ifoddpage
\RequirePackage{dashrule} % \dashfill, 
\RequirePackage{fancybox} % \fancyput
\RequirePackage{amsmath,amsfonts,amssymb}
\RequirePackage{tabularray,multicol,marvosym,soul,tasks,indentfirst,enumitem}
\RequirePackage{setspace} % \singlespacing, \onehalfspacing, \doublespacing

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhead{} \fancyfoot{}
\cfoot{第\,\thepage\,页，共\,\pageref{LastPage}\,页}
\renewrobustcmd{\headrulewidth}{0pt}

\newrobustcmd{\code}[1]{\texttt{#1}}

\RequirePackage{pgfkeys}
\pgfkeys{%
  Yfrom/.store in = \SWFU@Yfrom, Yfrom=,% 学年
  Yto/.store   in = \SWFU@Yto,   Yto  =,%
  Term/.store  in = \SWFU@Term,  Term =,% 学期
  Course/.store in = \SWFU@Course, Course=,%
  AB/.store     in = \SWFU@AB,     AB=,% A、B卷
  Lecturer/.store in = \SWFU@Lecturer, Lecturer=,   %
  Group/.store    in = \SWFU@Group,    Group   =,   % 班级
  EXtype/.store   in = \SWFU@EXtype,   EXtype  =闭卷,% 开卷
  EXtime/.store   in = \SWFU@EXtime,   EXtime  =120,%
}

\newrobustcmd{\swfusetup}[1]{\pgfkeys{#1}}

\newrobustcmd{\blank}[1][4em]{\underline{\hspace{#1}}}

\newrobustcmd{\mydash}{%
  \hdashrule[.5ex][x]{.41\textheight}{.1pt}{2mm}}%
\newrobustcmd{\swfudash}{%
  \mydash{}密封线以下, 不得加注任何标记\mydash}%

\newsavebox{\swfubbox}
\newrobustcmd{\SWFCbinding}{%
\sbox{\swfubbox}{%
  \parbox{\textheight}{%
    {\centering%
      \makebox[\textheight][s]{%
        \makebox[.28\textheight][l]{姓名\blank[.2\textheight]}%
        \makebox[.28\textheight][l]{学号\blank[.2\textheight]}%
        \makebox[.28\textheight][l]{班级\blank[.2\textheight]}%
        \makebox[5em][l]{任课教师\blank[25mm]}%
        \begin{minipage}[c][1cm]{2cm}%
          \SWFU@Lecturer% 
        \end{minipage}%          
      }\\\smallskip%
      \mbox{请在所附答题纸上空出密封位置。并填写姓名、学号、班级、任课教师}\\\smallskip%
      \swfudash}}}%  
  \ifbool{@twocolumn}%
  {% true
    \fancyput(-.6in,-10in){\rotatebox{90}{\usebox{\swfubbox}}}}% 
  {}% false
}

\newrobustcmd{\SWFCheader}{
  \begin{center}
    {\bfseries%
      \mbox{\LARGE %
        西南林业大学%
        \SWFU@Yfrom~\symbol{`~}~\SWFU@Yto{}学年%
        第~\SWFU@Term~学期}\\\bigskip%
      \mbox{\LARGE %
        《\SWFU@Course{}》试题（\SWFU@AB{}卷）}\\\bigskip
      \mbox{\large %
        \SWFU@Group\qquad{}%
        考试形式：\SWFU@EXtype\qquad{}%
        考试时长：\SWFU@EXtime{}分钟}}\par\medskip\noindent%
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

\deflength{\fboxsep}{2ex}

\newrobustcmd\setmark[3]{（共{#1}题，每题{#2}分，共{#3}分）}

\onehalfspacing
