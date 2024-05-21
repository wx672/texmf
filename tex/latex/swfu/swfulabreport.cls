% 实践（实习）报告
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfulabreport}

\RequirePackage{pgfkeys}

\pgfkeys{/swfu/.is family, /swfu, %
  Author/.store in    = \@author, %
  Title/.store in     = \@title,  %
  ID/.store in        = \SWFU@ID, %
  Major/.store in     = \SWFU@Major,     %
  Advisor/.store in   = \SWFU@Advisor,   %
  Reviewer/.store in  = \SWFU@Reviewer,  %
  ReviewDate/.store in= \SWFU@ReviewDate,%
  Month/.store in     = \SWFU@Month, %
  Date/.store in      = \SWFU@Date,  %
  Year/.store in      = \SWFU@Year,  %
  Mark/.store in      = \SWFU@Mark,  %
  LabDate/.store in   = \SWFU@LabDate,%实习日期
  LabDays/.store in   = \SWFU@LabDays,%实习天数
  Lab/.store in       = \SWFU@Lab,%实习地点
  Class/.store in     = \SWFU@Class,%实习班级
  Mates/.store in     = \SWFU@Mates,%实习人数
  Group/.store in     = \SWFU@Group,%分组情况
  Why/.store in       = \SWFU@Why,%实习目的
  Must/.store in      = \SWFU@Must,%实习要求
  What/.store in      = \SWFU@What,%实习内容
  How/.store in       = \SWFU@How,%课程实习安排
  Sum/.store in       = \SWFU@Sum,%实习总结
  %%% Defaults
  Author    = \textcolor{red}{学生姓名？},% 
  Title     = \textcolor{red}{课程名称？},% 
  ID        = \textcolor{red}{学号？},% 
  Major     = \textcolor{red}{专业班级？},% 
  Advisor   = \textcolor{red}{指导教师？},% 
  Reviewer  = \textcolor{red}{批阅教师？},%
  ReviewDate= \textcolor{red}{批阅日期？},%
  Mark      = \textcolor{red}{分数？},%
  Month     = \the\month,% 
  Date      = \the\day,  % 
  Year      = \the\year, %
  LabDate   = \textcolor{red}{实习日期？},%
  LabDays   = \textcolor{red}{实习天数？},%
  Lab       = \textcolor{red}{实习地点？},%
  Class     = \textcolor{red}{实习班级？},%
  Mates     = \textcolor{red}{实习人数？},%
  Group     = \textcolor{red}{分组情况？},%
  Why       = \textcolor{red}{实习目的？},%
  Must      = \textcolor{red}{实习要求？},%
  What      = \textcolor{red}{实习内容？},%
  How       = \textcolor{red}{课程实习安排？},%
  Sum       = \textcolor{red}{实习总结？},%
}

\newcommand{\swfusetup}[1]{\pgfkeys{/swfu, #1}}

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
  % chapter/name = {第,部分},%
  % chapter/number = {\chinese{chapter}},%
  % chapter/format = \centering\large\heiti,% 小3号，黑体
  % chapter/beforeskip = {0pt},%
  % section/name = {第,步},%
  % section/number = {\arabic{section}},%
  % section/format = {\heiti\zihao{4}},% 4号，黑体
  % subsection/name = {},%
  % subsection/format = \heiti,% 小4号，黑体
  % subsection/numbering = false,%
  % subsubsection/name = {},%
  % subsubsection/format = \heiti,% 小4号，黑体
  % subsubsection/numbering = false,%
  % paragraph/format = \heiti,% 黑体
  % subparagraph/format = \heiti,% 黑体
}

\setCJKmainfont{Noto Serif CJK SC}
\setCJKsansfont{Noto Sans CJK SC}
% \newCJKfontfamily\kaishu{LXGW Bright GB}%
% \newCJKfontfamily\heiti{WenQuanYi Micro Hei}%

\newfontfamily\purisa{Purisa}
%\newfontfamily\noto{Noto Serif CJK KR}
%%%%% geometry
\RequirePackage[%showframe,%showcrop,
a4paper,twoside=false,%
vmargin=3cm,%
left=3cm,right=2cm,%
headsep=1em,footskip=1cm,%headheight=15pt, to avoid "headheight too small"
nomarginpar]{geometry}

\RequirePackage[yyyymmdd]{datetime}%for \ReviewDate

%%%%% fancyhdr
\RequirePackage{fancyhdr}
\fancyhf{}

\fancypagestyle{plain}{%
  \fancyhf{}%
  \fancyfoot[C]{\fontsize{8}{8}\selectfont\thepage}
  \renewcommand{\headrulewidth}{0pt}}

\pagestyle{plain}

%%%%% misc
% \RequirePackage{indentfirst} % enabled if scheme=chinese
\RequirePackage{units,xparse}%
\RequirePackage{enumitem} % \setlist
\setlist{nosep} % kills all vertical spacing
\RequirePackage{tabularray,multicol,tasks}%,booktabs,makecell,tabularx,multirow,longtable

\settasks{%
  label={(\arabic*)},%
  label-width={4ex},%
}

%%%%% graphicx
\RequirePackage{graphicx}
\graphicspath{% mind the trailing '/'
  {./figs/}{../figs/}{./img/}{../img/}{./pics/}{../pics/}{./}{../}}

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

%%%%% fonts
\RequirePackage{amsmath,amsfonts,amssymb,marvosym,pifont}

%%%%% setspace (\singlespacing, \onehalfspacing, \doublespacing)
\RequirePackage[onehalfspacing]{setspace}
\renewcommand{\doublespacing}{\setstretch{1.5}}
\renewcommand{\onehalfspacing}{\setstretch{1.2}}

%%%%% tikz
\RequirePackage{tikz}
\usetikzlibrary{calc,positioning,backgrounds,scopes}%

%%%%% minted
\RequirePackage{minted} % has to be loaded at last!!!
%\usemintedstyle{bw}

\renewcommand{\listingscaption}{程序} % used by minted
\renewcommand{\listoflistingscaption}{程序目录}
% \renewcommand{\thelisting}{\thechapter{}-\arabic{listing}}
\renewcommand{\thelisting}{\thesection{}-\arabic{listing}}

\renewcommand{\theFancyVerbLine}{
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

% need lexer.py
% https://github.com/fcurella/jsx-lexer/blob/master/jsx/lexer.py
% \newenvironment{jsxcode}%
% {\VerbatimEnvironment\begin{minted}{lexer.py:JsxLexer -x}}%
% {\end{minted}}

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
    \begin{tikzpicture}[remember picture, overlay]

      \draw ($(current page.north west) + (3cm,-3cm)$) rectangle %
      ($(current page.south east) + (-2cm,3cm)$);
      
      \node (tbl) at (current page.north west) [anchor=north west,%
      xshift=3.2cm,yshift=-3.2cm]{
        \begin{tabular}{|c|c|}
          \hline
          实验成绩&{\purisa\SWFU@Mark}\\\hline
          批阅教师&\\\hline
          日\hfill{}期&{\purisa\SWFU@ReviewDate}\\\hline
        \end{tabular}
      };
      
      \node at (tbl.center) [xshift=1cm] {\SWFU@Reviewer};
    \end{tikzpicture}

    \vspace*{25mm}
    \begin{center}
      \includegraphics[width=.75\linewidth]{swfulogo}\\[25mm]%6mm
      {\Huge\bfseries%
        大数据与智能工程学院\\\bigskip%
        实践（实习）报告}\\[1cm]%
      \begin{minipage}{.7\linewidth}
        \begin{large}
          \begin{tblr}{width=\linewidth, colspec={@{}rX[c]@{}},%
              column{1}={font=\bfseries},%
              rows={belowsep=-5pt,abovesep=20pt},%
              hline{2,3,4,5,6} = {2}{.4pt,solid},%
            }
            课程名称&\@title\\
            专业班级&\SWFU@Major\\
            学\qquad{}号&\SWFU@ID\\
            学生姓名&\@author\\
            指导教师&\mbox{\SWFU@Advisor}\\
          \end{tblr}
        \end{large}
      \end{minipage}
      \vfill
      {\Large\bfseries\SWFU@Year\,年\,\SWFU@Month\,月\,\SWFU@Date\,日}%
    \end{center}%
  \end{titlepage}%
  \cleardoublepage
  \begin{center}
    \begin{tblr}{colspec={cXcX},hlines,vlines,%
        % rows={m},%
        % cell{1,2,3}{2}={c},%
        % cell{4,5,6}{2}={c=3}{l},%
      }
      实习时间 & \SWFU@LabDate & 实习天数 & \SWFU@LabDays \\
      实习地点 & \SWFU@Lab     & 实习班级 & \SWFU@Class \\
      实习人数 & \SWFU@Mates   & 分组情况 & \SWFU@Group    \\
      % 实习目的 &%
      % {\SWFU@Why} && \\
      % 实习要求 &%
      % \begin{minipage}[c][12cm]{.9\linewidth} \SWFU@Must \end{minipage} && \\
      % 实习内容 &%
      % \begin{minipage}[c][18cm]{.9\linewidth} \SWFU@What \end{minipage} && \\
    \end{tblr}
  \end{center}
  
\section*{实习目的}
\SWFU@Why
\section*{实习要求}
\SWFU@Must
\section*{实习内容}
\SWFU@What
\section*{课程实习安排}
\noindent{}（本栏须填写清楚实习的日期及该天实习的具体内容）\par%
\SWFU@How
\clearpage
}

\newcommand\lastpage{
  \section*{实习总结}
  \SWFU@Sum
}
%%%%% misc
\renewcommand{\headrulewidth}{0pt}
\urlstyle{tt} % url.sty
\raggedbottom{}
\setlength{\parindent}{2em}

