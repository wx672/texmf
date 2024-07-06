% 实践（实习）报告
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfulabreport}

\RequirePackage{etoolbox}

\RequirePackage{pgfkeys}

\pgfkeys{/swfu/.is family, /swfu,%
  Title/.store in     = \@title, %
  Author/.store in    = \@author,%
  ID/.store in        = \SWFU@ID,%
  Class/.store in     = \SWFU@Class,%实习班级
  Tutor/.store in     = \SWFU@Tutor,%
  Reviewer/.store in  = \SWFU@Reviewer,  %
  ReviewDate/.store in= \SWFU@ReviewDate,%
  Month/.store in     = \SWFU@Month, %
  Date/.store in      = \SWFU@Date,  %
  Year/.store in      = \SWFU@Year,  %
  Mark/.store in      = \SWFU@Mark,  %
  LabDate/.store in   = \SWFU@LabDate,  %实习日期
  LabDays/.store in   = \SWFU@LabDays,  %实习天数
  Lab/.store in       = \SWFU@Lab,      %实习地点
  Heads/.store in     = \SWFU@Heads,    %实习人数
  Grouping/.store in  = \SWFU@Grouping, %分组情况
  Why/.store in       = \SWFU@Why,      %实习目的
  What/.store in      = \SWFU@What,     %实习内容
  Req/.store in       = \SWFU@Req,      %实习要求
  Sched/.store in     = \SWFU@Sched,    %课程实习安排
  Sumup/.store in     = \SWFU@Sumup,    %实习总结
  %%% Defaults
  Title     = \textcolor{red}{课程名称？},% 
  Author    = \textcolor{red}{学生姓名？},% 
  ID        = \textcolor{red}{学号？},% 
  Class     = \textcolor{red}{实习班级？},%
  Tutor     = \textcolor{red}{指导教师？},% 
  Reviewer  = \textcolor{red}{批阅教师？},%
  ReviewDate= \textcolor{red}{批阅日期？},%
  Mark      = \textcolor{red}{分数？},%
  Month     = \the\month,% 
  Date      = \the\day,  % 
  Year      = \the\year, %
  LabDate   = \textcolor{red}{实习日期？},%
  LabDays   = \textcolor{red}{实习天数？},%
  Lab       = \textcolor{red}{实习地点？},%
  Heads     = \textcolor{red}{实习人数？},%
  Grouping  = \textcolor{red}{分组情况？},%
  Why       = \textcolor{red}{实习目的？},%
  What      = \textcolor{red}{实习内容？},%
  Req       = \textcolor{red}{实习要求？},%
  Sched     = \textcolor{red}{课程实习安排？},%
  Sumup     = \textcolor{red}{实习总结？},%
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
    \begin{tikzpicture}[remember picture, overlay]

      \draw ($(current page.north west) + (3cm,-3cm)$) rectangle %
      ($(current page.south east) + (-2cm,3cm)$);%
      
      \node (tbl) at (current page.north west) [anchor=north west,%
      xshift=3.2cm,yshift=-3.2cm]{%
        \begin{tabular}{|c|c|}
          \hline%
          实验成绩&{\purisa\SWFU@Mark}\\\hline%
          批阅教师&\\\hline%
          日\hfill{}期&{\purisa\SWFU@ReviewDate}\\\hline%
        \end{tabular}%
      };%
      
      \node at (tbl.center) [xshift=1cm] {\SWFU@Reviewer};%
    \end{tikzpicture}

    \vspace*{25mm}
    \begin{center}
      \includegraphics[width=.75\linewidth]{swfulogo}\\[25mm]%6mm
      {\Huge\bfseries%
        大数据与智能工程学院\\\bigskip%
        实践（实习）报告}\\[1cm]%
      \begin{minipage}{.7\linewidth}
        \begin{large}
          \begin{tblr}{colspec={rX[c]},%
              column{1}={font=\bfseries},%
              rows={belowsep=-5pt,abovesep=20pt},%
              hline{2,3,4,5,6} = {2}{.4pt},%
            }%
            课程名称&\@title\\
            专业班级&\SWFU@Class\\
            学\qquad{}号&\SWFU@ID\\
            学生姓名&\@author\\
            指导教师&\mbox{\SWFU@Tutor}\\
          \end{tblr}
        \end{large}
      \end{minipage}
      \vfill
      {\Large\SWFU@Year\,年\,\SWFU@Month\,月\,\SWFU@Date\,日}%
    \end{center}%
  \end{titlepage}%
  \cleardoublepage
  \begin{center}
    \begin{tblr}{colspec={cXcX},hlines,vlines,}%      
      实习时间 & \SWFU@LabDate & 实习天数 & \SWFU@LabDays \\
      实习地点 & \SWFU@Lab     & 实习班级 & \SWFU@Class \\
      实习人数 & \SWFU@Heads   & 分组情况 & \SWFU@Grouping    \\
    \end{tblr}
  \end{center}
  
\section*{实习目的}
\SWFU@Why
\section*{实习要求}
\SWFU@Req
\section*{实习内容}
\SWFU@What
\section*{课程实习安排}
\noindent{}（本栏须填写清楚实习的日期及该天实习的具体内容）\par%
\SWFU@Sched
\section*{实习总结}
\SWFU@Sumup
\clearpage
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

