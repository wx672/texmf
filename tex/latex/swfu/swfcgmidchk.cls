% 西南林业大学本科毕业论文（设计）中期检查表
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfcgmidchk}

\LoadClass[scheme=plain]{ctexart}

\RequirePackage{ifxetex} % XeTeX only

\RequirePackage{tabu,array,graphicx}

\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}} % for centering p column

\RequirePackage[ % showframe,
paperwidth=195mm,paperheight=270mm,
top=25mm,bottom=20mm,
left=20mm,right=20mm
]{geometry}

\setlength{\parindent}{0pt}

\newfontfamily\dejavu{DejaVu Sans Mono}
\newcommand\unchecked{\dejavu □}%ballot box
\newcommand\checked{\large\dejavu ☑} %🗹

\newcommand{\Studid}[1]{\gdef\SWFCField@Studid{#1}} % 学生学号
\newcommand{\Studname}[1]{\gdef\SWFCField@Studname{\kaishu #1}} % 学生姓名
\newcommand{\Studclass}[1]{\gdef\SWFCField@Studclass{\kaishu #1}} % 学生班级
\newcommand{\AdvisorName}[1]{\gdef\SWFCField@AdvisorName{\kaishu #1}} % 指导教师
\newcommand{\Prjtitle}[1]{\gdef\SWFCField@Prjtitle{\kaishu #1}} % 论文题目
\newcommand{\Prjdone}[1]{\gdef\SWFCField@Prjdone{\kaishu #1}} % 目前已完成任务
\newcommand{\Prjtodo}[1]{\gdef\SWFCField@Prjtodo{\kaishu #1}} % 尚需完成的任务
\newcommand{\Prjproblem}[1]{\gdef\SWFCField@Prjproblem{\kaishu #1}} % 存在的问题和解决办法
\newcommand{\AdvisorComments}[1]{\gdef\SWFCField@AdvisorComments{\kaishu #1}} % 指导教师评语
\newcommand{\Signature}[1]{\gdef\SWFCField@Signature{#1}} % 指导教师签名
\newcommand{\Year}[1]{\gdef\SWFCField@Year{#1}}   % 年
\newcommand{\Month}[1]{\gdef\SWFCField@Month{#1}} % 月
\newcommand{\Date}[1]{\gdef\SWFCField@Date{#1}}   % 日

\newcommand{\makeform}{\pagestyle{empty}%
  {\centering\large\heiti 西南林业大学\SWFCField@Year{}届本科毕业论文（设计）中期检查表\\[3ex]}
  \tabulinesep=2mm
  \begin{tabu}{|c|X[c]|c|X[c]|}\tabucline-
    学生学号&\SWFCField@Studid&学生姓名&\SWFCField@Studname\\\tabucline-
    学生班级&\SWFCField@Studclass&指导教师&\SWFCField@AdvisorName\\\tabucline-
  \end{tabu}\vspace{-1pt}
  \begin{tabu}{|P{4em}|X[c,m]|}
    论文题目&\SWFCField@Prjtitle\\\tabucline-
    目前已\par{}完成任务&\SWFCField@Prjdone\par\vspace{2ex}
    \hfill{}是否符合计划进度？\checked{}是\quad\unchecked{}否\\\tabucline-
    尚需完成\par{}的任务&\SWFCField@Prjtodo\par\vspace{2ex}
    \hfill{}能否按期完成任务？\checked{}是\quad\unchecked{}否\\\tabucline-
    存在的问\par{}题和解决\par{}办法&
    \begin{minipage}{1.0\linewidth} \SWFCField@Prjproblem \end{minipage}\\\tabucline-
  \end{tabu}\vspace{-1pt}
  \begin{tabu}{|X[c]|} （以上部分由学生填写）\\\tabucline- \end{tabu}\vspace{-1pt}
  \begin{tabu}{|P{1em}|X[l]|}
    指导教师评语&{\SWFCField@AdvisorComments}\par\vspace{3ex}
    \hfill{}指导教师：\SWFCField@Signature{}（签名）
    \quad{}时间：\hspace{4em}年\hspace{2em}月\hspace{2em}日\\\tabucline-
  \end{tabu}\vspace{-1pt}
  \begin{tabu}{|X[c]|} （以下部分由教学院、系、部填写）\\\tabucline- \end{tabu}\vspace{-1pt}
  \begin{tabu}{|X[l]|c|P{3em}|X[c]|}\tabucline-
    \hspace{3.5em} 评\, 分\, 项\, 目
    &最高分值&评分&备\, 注\\\tabucline-
    指导教师对毕业实习的指导力度&25&&\\\tabucline-
    毕业论文的实验条件&15&&\\\tabucline-
    毕业论文的适合度&20&&\\\tabucline-
    完成论文的进度&15&&\\\tabucline-
    学生表现&25&&\\\tabucline-
    \multicolumn{2}{|c|}{总\hspace{4em}分}&
    \multicolumn{2}{c|}{}\\\tabucline-
  \end{tabu}\vspace{-1pt}
  \begin{tabu}{|P{1em}|X|P{1em}|X[.938]|}
    教研室意见&
    \vspace{12ex}教研室负责人：\par{}时间：\hfill{}年\hspace{2em}月\hspace{2em}日&
    教学院系部意见&
    \vspace{12ex}教学院系部负责人：\par{}时间：\hfill{}年\hspace{2em}月\hspace{2em}日
    \\\tabucline-
  \end{tabu}}

\Studclass{}
\Studname{}
\Studid{}
\AdvisorName{王晓林}
\Prjtitle{}
\Prjdone{}
\Prjtodo{}
\Prjproblem{}
\AdvisorComments{}
\Year{}\Month{}\Date{}
\Signature{{\sig 王晓林}}