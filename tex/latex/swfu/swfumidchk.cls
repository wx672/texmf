% 西南林业大学本科毕业论文（设计）中期检查表
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfumidchk}

\RequirePackage{pgfkeys}

\newcommand{\Studclass}[1]{\gdef\SWFCField@Studclass{\kaishu #1}} % 学生班级

\pgfkeys{
  Studname/.store in        = \SWFU@Studname,%学生姓名
  Studid/.store in          = \SWFU@Studid,%学生学号
  Subject/.store in         = \SWFU@Subject,%专业
  AdvisorName/.store in     = \SWFU@AdvisorName,%指导教师  
  Prjtitle/.store in        = \SWFU@Prjtitle,%论文题目
  Prjdone/.store in         = \SWFU@Prjdone,%目前已完成任务
  Prjtodo/.store in         = \SWFU@Prjtodo,%尚需完成的任务
  Prjproblem/.store in      = \SWFU@Prjproblem,%存在的问题和解决办法
  AdvisorComments/.store in = \SWFU@AdvisorComments,%
  AdvisorComments={进度符合要求，抓紧完成论文。},%指导教师评语
  Signature/.store in       = \SWFU@Signature,%
  Signature={\includegraphics[width=25mm]{signature}},%指导教师签名
  Year/.store in            = \SWFU@Year,%
  Month/.store in           = \SWFU@Month,%
  Date/.store in            = \SWFU@Date,%
}

\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

\LoadClass[scheme=chinese]{ctexart}

\RequirePackage[ % showframe,
paperwidth=195mm,paperheight=270mm,
top=25mm,bottom=20mm,
left=20mm,right=20mm
]{geometry}

\RequirePackage{tabularx,makecell,array,graphicx}
\newcolumntype{M}[1]{>{\centering\arraybackslash}m{#1}} % for centering p column
\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}} % for centering p column
\newcolumntype{C}{>{\centering\arraybackslash}X}
%\renewcommand{\arraystretch}{1.2}

\RequirePackage{enumitem} % \setlist
\setlist{itemsep=-.5ex}
%\setlist{nosep} % kills all vertical spacing

\setlength{\parindent}{0pt}

\newfontfamily\dejavu{DejaVu Sans Mono}
\newcommand\unchecked{\dejavu □}%ballot box
\newcommand\checked{\large\dejavu ☑} %🗹

\newcommand{\makeform}{\pagestyle{empty}%
  {\centering\Large\heiti 西南林业大学本科毕业论文（设计）中期检查表\par}
  \medskip
  \begin{tabularx}{\linewidth}{|c|C|c|C|}\hline
    学生姓名&\SWFU@Studid&学生学号&\SWFU@Studname\\\hline
    专\quad{}业&\SWFU@Subject&指导教师&\SWFU@AdvisorName\\\hline
  \end{tabularx}\vspace{-1pt}
  \begin{tabularx}{\linewidth}{|M{4em}|X|}
    论文题目%
    &\makecell[c]{\SWFU@Prjtitle}\\\hline
    \makecell{目前已完\\成任务}%
    &\begin{minipage}[c]{1.0\linewidth}
      \SWFU@Prjdone
    \end{minipage}\\[-1em]
    &\hfill{}是否符合计划进度？\checked{}是\quad\unchecked{}否\\\hline
    \makecell{尚需完成\\的任务}%
    &\begin{minipage}[c]{1.0\linewidth}
      \SWFU@Prjtodo
    \end{minipage}\\[-1em]
    &\hfill{}能否按期完成任务？\checked{}是\quad\unchecked{}否\\\hline
    \makecell{存在的问\\题和解决\\办法}
    &\begin{minipage}[c]{1.0\linewidth}
      \SWFU@Prjproblem
    \end{minipage}\\\hline
  \end{tabularx}\vspace{-1pt}
  \begin{tabularx}{\linewidth}{|C|} （以上部分由学生填写）\\\hline \end{tabularx}\vspace*{-1.5pt}
  \begin{tabularx}{\linewidth}{|c|X|}
    \hline
    \makecell[t]{指\\[-1ex]导\\[-1ex]教\\[-1ex]师\\[-1ex]评\\[-1ex]语}
    &\begin{minipage}[c]{1.0\linewidth}
      \qquad\SWFU@AdvisorComments
    \end{minipage}\\[-5em]
    &\hfill{}指导教师（签名）：\makebox[5cm][c]{\SWFU@Signature}\par%
    \hfill\SWFU@Year{}年\makebox[2em][c]{\SWFU@Month}月\makebox[2em][c]{\SWFU@Date}日\\\hline
  \end{tabularx}\vspace{-1pt}
  \begin{tabularx}{\linewidth}{|C|}
    （以下部分由教学院、系、部填写）\\\hline
  \end{tabularx}
  \vskip -1.5pt%
  \begin{tabularx}{\linewidth}{|X|c|c|C|}\hline
    \makecell[c]{评\, 分\, 项\, 目}
    &最高分值&评分&备\, 注\\\hline
    指导教师对毕业实习的指导力度&25&&\\\hline
    毕业论文的实验条件&15&&\\\hline
    毕业论文的适合度&20&&\\\hline
    完成论文的进度&15&&\\\hline
    学生表现&25&&\\\hline
    \multicolumn{2}{|c|}{总\qquad{}分}&
    \multicolumn{2}{c|}{}\\\hline
  \end{tabularx}
  \vskip -1.5pt
  \begin{tabularx}{\linewidth}{|M{1em}|X|M{1em}|X|}
    \hline
    \makecell{教\\[-1ex]研\\[-1ex]室\\[-1ex]意\\[-1ex]见}%
    & \begin{minipage}[c][4cm]{1.0\linewidth}
      \vfill{}
      教研室负责人：\par\hfill{}年\qquad{}月\qquad{}日%
    \end{minipage}      
    &\makecell{学\\[-1ex]院\\[-1ex]意\\[-1ex]见}%
    & \begin{minipage}[c][4cm]{1.0\linewidth}
      \vfill{}
      学院负责人：\par\hfill{}年\qquad{}月\qquad{}日
    \end{minipage}\\\hline
  \end{tabularx}}
