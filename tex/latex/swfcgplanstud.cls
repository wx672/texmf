% 西南林业大学本科毕业论文（设计）实习计划表（本表由毕业生填写）
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfcgplanstud}

\LoadClass[a4paper,12pt]{article}

\RequirePackage{ifxetex} % XeTeX only

\RequirePackage{tabu}

\RequirePackage{array}
\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}} % for centering p column

\RequirePackage[ % showframe,
paperwidth=195mm,paperheight=270mm,
top=25mm,bottom=20mm,
left=20mm,right=20mm
]{geometry}

\setlength{\parindent}{0pt}

\RequirePackage{wx672cjk}

\newcommand{\School}[1]{\gdef\SWFCField@School{#1}} % 所属院（系、部）
\newcommand{\Prjtitle}[1]{\gdef\SWFCField@Prjtitle{#1}} % 论文（设计）题目
\newcommand{\Prjtype}[1]{\gdef\SWFCField@Prjtype{#1}} % 课题类型
%\newcommand{\Prjsrc}[1]{\gdef\SWFCField@Prjsrc{#1}} % 题目来源
%\newcommand{\Signature}[1]{\gdef\SWFCField@Signature{#1}} % 指导教师签名
\newcommand{\AdvisorName}[1]{\gdef\SWFCField@AdvisorName{#1}} % 指导教师姓名
\newcommand{\AdvisorTitle}[1]{\gdef\SWFCField@AdvisorTitle{#1}} % 职称
\newcommand{\AdvisorNameB}[1]{\gdef\SWFCField@AdvisorNameB{#1}} % 指导教师姓名
\newcommand{\AdvisorTitleB}[1]{\gdef\SWFCField@AdvisorTitleB{#1}} % 职称
\newcommand{\Studclass}[1]{\gdef\SWFCField@Studclass{#1}} % 学生班级
\newcommand{\Studname}[1]{\gdef\SWFCField@Studname{#1}} % 学生姓名
\newcommand{\Studid}[1]{\gdef\SWFCField@Studid{#1}} % 学生学号
\newcommand{\Thesisplan}[1]{\gdef\SWFCField@Thesisplan{#1}} % 论文工作计划和预期目标摘要
\newcommand{\Year}[1]{\gdef\SWFCField@Year{#1}} % 届

\newcommand{\makeform}{\pagestyle{empty}
  {\centering
    {\large\hei 西南林业大学\SWFCField@Year{}届本科
      毕业论文（设计）实习计划表}\\[3ex]}
  \hfill{}（本表由毕业生填写）\par
  \vspace{-1pt}\tabulinesep=2mm
  \begin{tabu}{|c|X[c]|}\tabucline-
    论文（设计）题目&\kai\SWFCField@Prjtitle\\\tabucline-
  \end{tabu}\vspace{-1pt}
  \begin{tabu}{|c|X[c,m]|c|X[c,m]|}
    题目类型&\kai\SWFCField@Prjtype&题目来源&\tabulinesep=0pt
    {\kai\begin{tabu}{@{}X@{}}
        科研项目\unchecked\quad{}社会实践\unchecked\\
        大学生创新创业项目\unchecked\qquad 其它\checked\\
      \end{tabu}}\\\tabucline-
指导教师&\kai\SWFCField@AdvisorName&职称&\kai\SWFCField@AdvisorTitle\\\tabucline-
辅助指导教师&\kai\SWFCField@AdvisorNameB&职称&\kai\SWFCField@AdvisorTitleB\\\tabucline-
  \end{tabu}\vspace{-1pt}
  \begin{tabu}{|P{6em}|X[c]|c|X[c]|c|c|}
    学生姓名&\kai\SWFCField@Studname&
    学生班级&\kai\SWFCField@Studclass&
    学生学号&\SWFCField@Studid\\\tabucline-
    \multicolumn{2}{|c|}{\kai 所属教学院（系、部）（公章）}&
    \multicolumn{4}{c|}{\kai\SWFCField@School}\\\tabucline-
  \end{tabu}\vspace{-1pt}
  \begin{tabu}{|X[l]|}
    论文工作计划和预期目标摘要：\\
    \hspace{4em}\begin{minipage}{.7\linewidth}
      \SWFCField@Thesisplan\end{minipage}\\\tabucline-
  \end{tabu}
  注：每位毕业生须填写一份；如表栏不够填写，请加附页。}

\School{大数据与智能工程学院}
\AdvisorTitle{讲师}
\AdvisorName{王晓林}
\AdvisorTitleB{}
\AdvisorNameB{}
\Prjtitle{}
\Prjtype{毕业论文\unchecked\quad{}毕业设计\checked} % 毕业论文/毕业设计
%\Prjsrc{} % 题目来源
\Studclass{}
\Studname{}

\Thesisplan{% 论文指导工作计划内容 
  \begin{itemize}
  \item
  \item
  \item 
  \end{itemize}}
