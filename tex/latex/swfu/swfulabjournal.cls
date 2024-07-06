% 实习报告（教务处版）
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfulabjournal}

\RequirePackage{etoolbox}

\RequirePackage{pgfkeys}

\pgfkeys{/swfu/.is family, /swfu,%
  Title/.store   in = \@title, %实习名称
  Author/.store  in = \@author,%学生姓名
  ID/.store      in = \SWFU@ID,%学号
  School/.store  in = \SWFU@School,%学院
  Subject/.store in = \SWFU@Subject,%专业
  Grade/.store   in = \SWFU@Grade,%年级
  Tutor/.store   in = \SWFU@Tutor,%指导教师
  YearS/.store   in = \SWFU@YearS,  %
  YearE/.store   in = \SWFU@YearE,  %
  MonthS/.store  in = \SWFU@MonthS, %
  MonthE/.store  in = \SWFU@MonthE, %
  DateS/.store   in = \SWFU@DateS,  %
  DateE/.store   in = \SWFU@DateE,  %
  %%% Defaults
  Title   = \textcolor{red}{课程名称？},% 
  Author  = \textcolor{red}{学生姓名？},% 
  ID      = \textcolor{red}{学号？},%
  School  = {大数据与智能工程学院},%
  Subject = \textcolor{red}{专业？},%
  Grade   = \textcolor{red}{年级？},%
  Tutor   = \textcolor{red}{指导教师？},% 
  YearS   = \the\year, %
  YearE   = \the\year, %
  MonthS  = \the\month,% 
  MonthE  = \the\month,% 
  DateS   = \the\day,  % 
  DateE   = \the\day,  % 
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
vmargin=25mm,left=25mm,right=25mm,%
headsep=1em,footskip=1cm,%headheight=15pt, to avoid "headheight too small"
]{geometry}

%%%%% fancyhdr
\RequirePackage{fancyhdr}
\fancyhf{}%
\fancyfoot[C]{\fontsize{8}{8}\selectfont\thepage}
\fancyhead[C]{\fontsize{10}{10}\selectfont\makebox[15em][s]{西南林业大学本科生实习日志}}
\fancypagestyle{plain}{%
  \fancyhf{}%
  \fancyfoot[C]{\fontsize{8}{8}\selectfont\thepage}% like "88"
  \fancyhead[C]{\fontsize{10}{10}\selectfont\makebox[15em][s]{西南林业大学本科生实习日志}}
  \renewrobustcmd{\headrulewidth}{.4pt}}

%%%%% misc
\RequirePackage{tabularray}%

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

%%%%% fonts
\RequirePackage{amsmath,amsfonts,amssymb}

%%%%% setspace (\singlespacing, \onehalfspacing, \doublespacing)
\RequirePackage[doublespacing]{setspace}
\renewrobustcmd{\doublespacing}{\setstretch{1.6}}

%%%%% tikz
\RequirePackage{tikz}
\usetikzlibrary{calc,positioning,backgrounds,scopes}%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewrobustcmd{\maketitle}{% Title page layout
  \begin{titlepage}
    \vspace*{3mm}
    \begin{center}
      \includegraphics[width=.6\linewidth]{swfulogo-text}\\[6mm]%
      \includegraphics[width=.27\linewidth]{swfulogo-emblem}\\[8mm]%
      {\Huge\bfseries\sffamily\makebox[.65\linewidth][s]{本科生实习日志}}\\[1cm]%
      \begin{minipage}{.6\linewidth}
        \begin{large}
          \begin{tblr}{colspec={rX},%
              column{1}={font=\bfseries\sffamily},%
              rowsep=3pt,%
            }%
            实习名称：&\@title\\
            学\qquad{}院：&\SWFU@School\\
            专\qquad{}业：&\SWFU@Subject\\
            年\qquad{}级：&\SWFU@Grade\\
            指导教师：&\SWFU@Tutor\\
            姓\qquad{}名：&\@author\\
            学\qquad{}号：&\SWFU@ID\\
          \end{tblr}
        \end{large}
      \end{minipage}
      \vfill
      {\large\bfseries\sffamily%
        \SWFU@YearS\,年\,\SWFU@MonthS\,月\,\SWFU@DateS\,日 --- %
        \SWFU@YearE\,年\,\SWFU@MonthE\,月\,\SWFU@DateE\,日}%
    \end{center}%
  \end{titlepage}%
  \clearpage
  \thispagestyle{empty}
  \begin{center}\Large\bfseries\sffamily%
    实习环节情况说明
  \end{center}
  \begin{large}
    \begin{enumerate}
    \item 实习应拟定实习指导书或计划，实习报告应规定基本内容，拟定框架
      要求。
    \item 实习期间，学生应每日填写实习日志，内容包括：实习时间、地点、
      单位、内容、收获和体会，也可摘抄实习实测数据资料。实习结束后按照
      要求认真撰写实习报告。实习日志和实习报告在 实习完成后一起交指导教
      师，作为实习成绩评定的依据。
    \item 教师按照实习计划的要求，根据学生的实习日志、实习报告、纪律、
      表现等综合评定实习成绩。
    \end{enumerate}
    \qquad{}凡有下列情况之一者实习成绩为不合格：
    \begin{enumerate}
    \item[（1）] 未达到实习计划规定的基本要求；
    \item[（2）] 实习报告混乱，分析有原则性错误；实习日志缺失，或内容大
      部分未完成；
    \item[（3）] 实习缺课三分之一以上或无故旷课三天以上；
    \item[（4）] 实习中严重违反纪律。
    \end{enumerate}
  \end{large}
  \clearpage
  \defcounter{page}{1}
}

\newrobustcmd\addjournal[6]{% #1 - date; #2 - time; #3 - lab; 
                            % #4 - campus; #5 - what; #6 - sumup;
  \begin{center}
    \begin{tblr}{colspec={cX[c]cX[c]},hlines,vlines,%
        cell{3,4}{2}={c=3}{l},rows={m},%
      }%
      实习日期 & {#1} & 实习时间 & {#2} \\
      实习地点 & {#3} & 实习单位 & {#4} \\
      {实\\习\\内\\容} &%
      \begin{minipage}[c][11cm][c]{.8\linewidth}
        #5
      \end{minipage} &&\\
      {收\\获\\与\\体\\会} &%
      \begin{minipage}[c][11cm][c]{.8\linewidth}
        #6
      \end{minipage}
      &&\\
    \end{tblr}
  \end{center}
}

% \newrobustcmd\lastpage{
%   \section*{实习总结}
%   \SWFU@Sumup
% }

%%%%%   misc
\renewrobustcmd{\headrulewidth}{0pt}
\urlstyle{tt} % url.sty
\raggedbottom{}
\deflength{\parindent}{2em}

\providerobustcmd{\tightlist}{%
  \setlength{\itemsep}{0pt}\setlength{\parskip}{0pt}}

\pagestyle{plain}
