% !!! OBSOLETE !!! Use swfu4in1.cls instead.
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
  % Year/.store in            = \SWFU@Year,%
  % Month/.store in           = \SWFU@Month,%
  Date/.store in            = \SWFU@Date, Date={\the\year 年\the\month 月\the\day 日}%
}

\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

\LoadClass[scheme=chinese]{ctexart}

\RequirePackage[ % showframe,
hmargin=2.5cm,top=1.5cm,bottom=1cm]{geometry}

\RequirePackage{tabularray,graphicx,wx672tcb}

\RequirePackage{enumitem} % \setlist
\setlist{itemsep=-.5ex}
%\setlist{nosep} % kills all vertical spacing

\setlength{\parindent}{0pt}

\newfontfamily\nerd{FiraCode Nerd Font Mono}
\RequirePackage{newunicodechar}
\newunicodechar{□}{{\large\nerd □}}%ballot box
\newunicodechar{☑}{{\large\nerd ☑}}%checked box
\newcommand\unchecked{{\large\nerd □}} %ballot box
\newcommand\checked{{\large\nerd ☑}} %🗹

\newcommand{\makeform}{\pagestyle{empty}%
  {\centering\Large\heiti 西南林业大学本科毕业论文（设计）中期检查表\par}
  \medskip
  \begin{tblr}{width=\linewidth,colspec={cX[c]cX[c]},hline{1-7},vlines,%
      cell{3-5}{2}={c=3}{c}, cell{7}{1}={c=4}{c},%
      cell{6}{2}={c=3}{l}}
    学生姓名&\SWFU@Studname&学生学号&\SWFU@Studid\\
    专\quad{}业&\SWFU@Subject&指导教师&\SWFU@AdvisorName\\
    论文题目 &{\SWFU@Prjtitle}&&\\
    {目前已完\\成任务} & %
    \begin{tblr}{width=.85\textwidth,colspec={X},row{1}={2cm}{t},row{2}={f}}
        \SWFU@Prjdone\\
        \hfill{}是否符合计划进度？\qquad\checked{}是\quad\unchecked{}否\\
    \end{tblr} &&\\
    {尚需完成\\的任务} & %
    \begin{tblr}{width=.85\textwidth,colspec={X},row{1}={2cm}{t},row{2}={f}}
      \SWFU@Prjtodo\\
      \hfill{}能否按期完成任务？\qquad\checked{}是\quad\unchecked{}否\\
    \end{tblr} &&\\
    {存在的问\\题和解决\\办法} & {\SWFU@Prjproblem} \\%    
    \mbox{（以上部分由学生填写）}&&&\\
  \end{tblr}\vspace{-1pt}
  \begin{titleleft}{指导教师评语}
    \SWFU@AdvisorComments\par\bigskip%
    \hfill{}指导教师（签名）：\makebox[3cm][c]{\SWFU@Signature}\par\medskip%
    \hfill{}\SWFU@Date
  \end{titleleft}\vspace{-1pt}
  \begin{tblr}{width=\linewidth,colspec={lccX[c]},hline{2-Z},vlines,%
      cell{1}{1}={c=4}{c}, cell{8}{1,3}={c=2}{c}, cell{2}{1}={c},%
    }
    \mbox{（以下部分由教学院、系、部填写）}&&&\\
    {评\, 分\, 项\, 目} &最高分值&评分&备\, 注\\
    指导教师对毕业实习的指导力度&25&&\\
    毕业论文的实验条件&15&&\\
    毕业论文的适合度&20&&\\
    完成论文的进度&15&&\\
    学生表现&25&&\\
    总\qquad{}分&&&\\
  \end{tblr}
  \vskip -1.5pt
  \begin{tblr}{width=\linewidth,colspec={cXcX},vlines,hlines,%
      column{1,3}={5mm,m},%
    }
    {教研室意见} & %
    \begin{minipage}[c][3cm]{\linewidth}
      \vfill{}%
      教研室负责人：\par%
      \hfill{}年\qquad{}月\qquad{}日%
    \end{minipage} & %
    {学院意见} & %
    \begin{minipage}[c][3cm]{\linewidth}
      \vfill{}
      学院负责人：\par%
      \hfill{}年\qquad{}月\qquad{}日
    \end{minipage}\\
  \end{tblr}}
