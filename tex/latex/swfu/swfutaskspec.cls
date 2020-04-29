% 西南林业大学本科毕业论文（设计）任务书
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfutaskspec}

\RequirePackage{ifxetex} % XeTeX only

\RequirePackage{pgfkeys}

\pgfkeys{%
  Prjtitle/.store in      = \SWFU@Prjtitle,%
  Signature/.store in     = \SWFU@Signature,%
  StudSignature/.store in = \SWFU@StudSignature, StudSignature=,%
  Studname/.store in      = \SWFU@Studname,%
  Studid/.store in        = \SWFU@Studid,%
  Studclass/.store in     = \SWFU@Studclass,%
  Prjwhy/.store in        = \SWFU@Prjwhy,%
  Prjwhat/.store in       = \SWFU@Prjwhat,%
  Prjwhen/.store in       = \SWFU@Prjwhen,%
  Prjbib/.store in        = \SWFU@Prjbib,%
  Gyear/.store in         = \SWFU@Gyear,%
  Year/.store in          = \SWFU@Year,%
  Month/.store in         = \SWFU@Month,%
  Date/.store in          = \SWFU@Date,%
}

\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

\LoadClass[scheme=plain]{ctexart}

\RequirePackage{graphicx}
\RequirePackage[%showframe,
paperwidth=195mm,paperheight=270mm,
top=2.5cm,bottom=2cm,
left=2cm,right=2cm
]{geometry}

\RequirePackage[backend=biber,style=gb7714-2015,gbpub=false,gbtype=false,gbpunctin=false,url=false,doi=false,isbn=false]{biblatex}

\RequirePackage{wx672hyperref}

\newfontfamily\dejavu{DejaVu Sans Mono}
\newcommand\unchecked{\dejavu □}%ballot box
\newcommand\checked{\large\dejavu ☑} %🗹

\RequirePackage{tabularx,longtable}
\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}} % for centering p column
\newcolumntype{M}[1]{>{\centering\arraybackslash}m{#1}} % for centering p column
\newcolumntype{C}{>{\centering\arraybackslash}X}
\renewcommand{\arraystretch}{1.5}

\newcommand{\makeform}{\pagestyle{plain}
  {\centering%
    {\heiti\Large 西南林业大学\SWFU@Gyear{}届本科毕业论文（设计）任务书}\\[3ex]%
    \begin{tabularx}{\textwidth}{|>{\bfseries}M{6em}|>{\kaishu}C|}%
      \hline%
      论文（设计）\par{}题目&\SWFU@Prjtitle\\\hline%
    \end{tabularx}\\[-1pt]
    \begin{tabularx}{\textwidth}%
      {|>{\bfseries}M{6em}|>{\kaishu}C|>{\bfseries}c|C|>{\bfseries}c|>{\kaishu}C|}%
      学生姓名&\SWFU@Studname& 学号&\SWFU@Studid& 专业&\SWFU@Studclass\\\hline%
    \end{tabularx}\\[-1pt]
    \begin{tabularx}{\textwidth}{|>{\bfseries}M{6em}|>{\kaishu}X|>{\bfseries}M{6em}|>{\kaishu}C|}%
      题目来源&%
      \begin{minipage}[c]{\linewidth}%
        \unchecked{}科研项目\par%
        \unchecked{}社会实践\par\unchecked{}大学生创新创业项目\par {\large\checked}其它%
      \end{minipage}&%      
      题目类别&\unchecked{}毕业论文\qquad{}{\large\checked}毕业设计\\%
    \end{tabularx}\\[-1pt]%
    \begin{tabularx}{\textwidth}{|>{\bfseries}m{1em}|>{\kaishu}X|}\hline
      选题的目的及意义&%
      \begin{minipage}[c][25em][t]{.9\columnwidth}
        \par\vspace{1em}\SWFU@Prjwhy  
      \end{minipage}\\\hline
      学生任务及要求&%
      \begin{minipage}[c][25em][t]{.9\columnwidth}
        \par\vspace{1em}\SWFU@Prjwhat  
      \end{minipage}\\\hline
    \end{tabularx}\clearpage
    \begin{tabularx}{\textwidth}{|>{\bfseries}m{1em}|>{\kaishu}X|}\hline
      进度安排&%
      \begin{minipage}[c][20em][t]{.9\columnwidth}
        \par\vspace{1em}\SWFU@Prjwhen
      \end{minipage}\\\hline
      参考文献&%
      \begin{minipage}[c][15em][t]{.9\columnwidth}
        \par\vspace{1em}\SWFU@Prjbib  
      \end{minipage}\\\hline
    \end{tabularx}
    \begin{tabularx}{\textwidth}{|>{\bfseries}c|X|>{\bfseries}c|X|}%
      任务下达日期&&\parbox{9em}{\centering 学生应送交毕业论文（设计）日期}&\\\hline%
    \end{tabularx}\\[-1pt]%
    {\bfseries%
      \begin{tabularx}{\textwidth}{|c|X|c|X|}%
        \parbox{4em}{\centering 指导教师签字}& \begin{minipage}[c][6em]{1.0\linewidth}%
          \makebox[7em][r]{\SWFU@Signature}\par%
          \hfill\SWFU@Year{}年\SWFU@Month{}月\SWFU@Date{}日%
        \end{minipage}&%%
        \parbox{4em}{\centering 接受任务学生签字}& \begin{minipage}[c][6em]{1.0\linewidth}%
          \makebox[7em][r]{\SWFU@StudSignature}\par%
          % \par\vspace{\fill}
          \hfill\SWFU@Year{}年\SWFU@Month{}月\SWFU@Date{}日%
        \end{minipage}\\\hline%
        \parbox{3em}{\centering 教研室审核}& \begin{minipage}[c][8em]{1.0\linewidth}%
          \par\vspace{1ex}%
          审核意见：\par\vspace{\fill}%
          签字：\par%
          \hfill\SWFU@Year{}年\SWFU@Month{}月\SWFU@Date{}日%
        \end{minipage}&%
        \parbox{4.3em}{\centering 学院审核}& \begin{minipage}[c][8em]{1.0\linewidth}%
          \par\vspace{1ex}%
          审核意见：\par\vspace{\fill}%
          签章：\par%
          \hfill\SWFU@Year{}年\SWFU@Month{}月\SWFU@Date{}日%
        \end{minipage}\\\hline%
      \end{tabularx}}\\%
    \begin{tabularx}{\textwidth}{@{}c@{\quad}c@{\,}X@{}}
      注：%
      &1.&此任务书由指导教师填写，各院审定，在毕业论文（设计）开始前一周内填好并发给学生。\\
      &2.&此任务书双面打印，一式两份。学生一份，另一份随毕业论文（设计）保存。
    \end{tabularx}}}
