% 西南林业大学试卷
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfuexam}

\RequirePackage{ifxetex} %  XeTeX only

\DeclareOption{a3}{%
  \PassOptionsToPackage{a3paper,landscape,twocolumn,%
    columnsep=3cm,top=2cm,bottom=20mm,left=4cm,right=2cm}{geometry}}

\DeclareOption{a4}{%
  \PassOptionsToPackage{onecolumn,paperwidth=195mm,paperheight=270mm,%
    top=2cm,bottom=15mm,left=25mm,right=15mm}{geometry}}

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
\RequirePackage{multicol,varwidth,marvosym,soul,tasks}
\RequirePackage{setspace} % \singlespacing, \onehalfspacing, \doublespacing

\RequirePackage{tabularx}
\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}} % for centering p column
\newcolumntype{M}[1]{>{\centering\arraybackslash}m{#1}} % for centering p column
\newcolumntype{C}{>{\centering\arraybackslash}X}
\renewcommand{\arraystretch}{1.2}

\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhead{} \fancyfoot{}
\cfoot{第\,\thepage\,页，共\,\pageref{LastPage}\,页}
\renewcommand{\headrulewidth}{0pt}

\newcommand{\code}[1]{\texttt{#1}}

\newcommand{\bblank}{\underline{\hspace{1in}}}
\newcommand{\hroom}[1]{\underline{\quad{}#1\quad}}
\newcommand{\vroom}[2]{\rule{0pt}{#1}\par{}#2\par{}\rule{0pt}{#1}}%\vroom{12ex}{text}
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
      \mbox{\LARGE 西南林业大学\SWFU@Yfrom~\symbol{`~}~\SWFU@Yto{}学年第~\SWFU@Term~学期}\\[3mm]
      \mbox{\LARGE 《\SWFU@Course{}》试题（\SWFU@AB{}卷）}\\[3mm]
      \mbox{\large \SWFU@Group\qquad{}考试形式：\SWFU@EXtype\qquad{}考试时长：%
        \SWFU@EXtime{}分钟}\\[1mm]}
    \begin{tabularx}{.9\columnwidth}{|c|*{10}{M{1.5em}|}C|}
      \hline
      题号&一&二&三&四&五&六&七&八&九&十&总分\\\hline
      分数& & & & & & & & & & & \\\hline
      计& & & & & & & & & & & \\[-.5ex]
      分& & & & & & & & & & & \\[-.5ex]
      人& & & & & & & & & & & \\\hline
    \end{tabularx}\\[2em]
    \underline{{\Large 直接卷上作答，不要另用答题纸}}
  \end{center}
  \vspace{3mm}
}

\RequirePackage{wx672minted}
\usemintedstyle{bw}
\newCJKfontfamily\sig{signature}

\ctexset{  
  punct=kaiming,
  section/format = \Large\bfseries,
}

\onehalfspacing
