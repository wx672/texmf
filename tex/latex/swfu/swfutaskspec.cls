% 西南林业大学本科毕业论文（设计）任务书，及实习计划表（学生填写）
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfutaskspec}%2019

\RequirePackage{pgfkeys}

\pgfkeys{%
  Prjtitle/.store in        = \SWFU@Prjtitle,%
  PrjFrmA/.store in         = \SWFU@PrjFrmA,  PrjFrmA={\unchecked{}},  %科研项目
  PrjFrmB/.store in         = \SWFU@PrjFrmB,  PrjFrmB={\unchecked{}},  %社会实践
  PrjFrmC/.store in         = \SWFU@PrjFrmC,  PrjFrmC={\unchecked{}},  %大学生创新创业项目
  PrjFrmD/.store in         = \SWFU@PrjFrmD,  PrjFrmD={\unchecked{}},  %其它
  PrjTypeA/.store in        = \SWFU@PrjTypeA, PrjTypeA={\unchecked{}}, %毕业论文
  PrjTypeB/.store in        = \SWFU@PrjTypeB, PrjTypeB={\checked{}},   %毕业设计
  Signature/.store in       = \SWFU@Signature,%
  StudSignature/.store in   = \SWFU@StudSignature,%
  Signature                 = {\includegraphics[width=2cm]{signature}},%
  StudSignature             = {\includegraphics[width=2cm]{signature}},%
  Studname/.store in        = \SWFU@Studname,%学生姓名
  Studid/.store in          = \SWFU@Studid,  %学号
  Subject/.store in         = \SWFU@Subject, %专业
  Prjwhy/.store in          = \SWFU@Prjwhy, %选题的目的及意义
  Prjwhat/.store in         = \SWFU@Prjwhat,%学生任务及要求
  Prjwhen/.store in         = \SWFU@Prjwhen,%进度安排
  Prjbib/.store in          = \SWFU@Prjbib, %参考文献
  Gyear/.store in           = \SWFU@Gyear,%届
  Year/.store in            = \SWFU@Year, %签字日期（年）
  Month/.store in           = \SWFU@Month,%签字日期（月）
  Date/.store in            = \SWFU@Date, %签字日期（日）
  School/.store in          = \SWFU@School, School={大数据与智能工程学院},%
  Plan/.store in            = \SWFU@Plan, %论文工作计划和预期目标摘要（实习计划表）
  Advisor/.store in         =\SWFU@Advisor,                           % 导师姓名1
  AdvisorTitle/.store in    =\SWFU@AdvisorTitle,                      % 职称1
  Advisortwo/.store in      =\SWFU@Advisortwo, Advisortwo=,           % 导师姓名2
  AdvisorTitletwo/.store in =\SWFU@AdvisorTitletwo, AdvisorTitletwo=, % 职称2
}

\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

\LoadClass[scheme=chinese]{ctexart}

\RequirePackage{graphicx}
\RequirePackage[%showframe,
paperwidth=195mm,paperheight=270mm,
top=2.5cm,bottom=2cm,
left=2cm,right=2cm
]{geometry}

\RequirePackage[backend=biber,style=gb7714-2015,gbpub=false,gbtype=false,gbpunctin=false,url=false,doi=false,isbn=false]{biblatex}

\newfontfamily\dejavu{DejaVu Sans Mono}
\newcommand\unchecked{{\dejavu □}}%ballot box
\newcommand\checked{{\large\dejavu ☑}} %🗹

\RequirePackage{enumitem} % \setlist
\setlist{itemsep=-.5ex}
%\setlist{nosep} % kills all vertical spacing

\RequirePackage{tabularx,makecell}
\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}} % for centering p column
\newcolumntype{M}[1]{>{\centering\arraybackslash}m{#1}} % for centering p column
\newcolumntype{C}{>{\centering\arraybackslash}X}
\renewcommand{\arraystretch}{1.5}

\newcommand{\maketaskspec}{%
  \pagestyle{plain}
  {\centering%
    {\heiti\Large 西南林业大学\SWFU@Gyear{}届本科毕业论文（设计）任务书}\\[3ex]%
    \begin{tabularx}{\textwidth}{|>{\bfseries}M{6em}|>{\kaishu}C|}%
      \hline%
      论文（设计）\par{}题目&\SWFU@Prjtitle\\\hline%
    \end{tabularx}\\[-1pt]
    \begin{tabularx}{\textwidth}%
      {|>{\bfseries}M{6em}|>{\kaishu}C|>{\bfseries}c|C|>{\bfseries}c|>{\kaishu}C|}%
      学生姓名&\SWFU@Studname& 学号&\SWFU@Studid& 专业&\SWFU@Subject\\\hline%
    \end{tabularx}\\[-1pt]
    \begin{tabularx}{\textwidth}{|>{\bfseries}M{6em}|>{\kaishu}X|>{\bfseries}M{6em}|>{\kaishu}C|}%
      题目来源&%
      \begin{minipage}[c]{\linewidth}%
        \SWFU@PrjFrmA{}科研项目\par%
        \SWFU@PrjFrmB{}社会实践\par%
        \SWFU@PrjFrmC{}大学生创新创业项目\par%
        \SWFU@PrjFrmD{}其它%
      \end{minipage}&%      
      题目类别&\SWFU@PrjTypeA{}毕业论文\qquad{}\SWFU@PrjTypeB{}毕业设计\\%
    \end{tabularx}\\[-1pt]%
    \begin{tabularx}{\textwidth}{|>{\bfseries}m{1em}|>{\kaishu}X|}\hline
      选题的目的及意义&%
      \begin{minipage}[c][22em][t]{.9\columnwidth}
        \par\vspace{1em}\SWFU@Prjwhy
      \end{minipage}\\\hline
      学生任务及要求&%
      \begin{minipage}[c][22em][t]{.9\columnwidth}
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
      任务下达日期&&\makecell{学生应送交毕业论文\\（设计）日期}&\\\hline%
    \end{tabularx}\\[-1pt]%
    {\bfseries%
      \begin{tabularx}{\textwidth}{|c|X|c|X|}%
        \parbox{4em}{\centering 指导教师签字}
        &\begin{minipage}[c][6em]{1.0\linewidth}%
          \makebox[7em][r]{\SWFU@Signature}\par%
          \hfill\SWFU@Year{}年\SWFU@Month{}月\SWFU@Date{}日%
        \end{minipage}%
        &\parbox{4em}{\centering 接受任务学生签字}
        &\begin{minipage}[c][6em]{1.0\linewidth}%
          \makebox[7em][r]{\SWFU@StudSignature}\par%
          \hfill\SWFU@Year{}年\SWFU@Month{}月\SWFU@Date{}日%
        \end{minipage}\\\hline%
        \parbox{3em}{\centering 教研室审核}& \begin{minipage}[c][8em]{1.0\linewidth}%
          \par\vspace{1ex}%
          审核意见：\par\vspace{\fill}%
          签字：\par%
          \hfill{}年\qquad{}月\qquad{}日%
        \end{minipage}&%
        \parbox{4.3em}{\centering 学院审核}& \begin{minipage}[c][8em]{1.0\linewidth}%
          \par\vspace{1ex}%
          审核意见：\par\vspace{\fill}%
          签章：\par%
          \hfill\qquad{}年\qquad{}月\qquad{}日%
        \end{minipage}\\\hline%
      \end{tabularx}}\\%
    \begin{tabularx}{\textwidth}{@{}c@{\,\,}c@{\,}X@{}}
      注：%
      &1.&此任务书由指导教师填写，各院审定，在毕业论文（设计）开始前一周内填好并发给学生。\\
      &2.&此任务书双面打印，一式两份。学生一份，另一份随毕业论文（设计）保存。
    \end{tabularx}}}

\newcommand\makeplan{%
  \pagestyle{plain}
  {\centering\heiti\Large 西南林业大学\SWFU@Gyear{}届本科毕业论文（设计）实习计划表\par}
  \bigskip
  \hfill（本表由毕业生填写）\par
  {\centering
    \begin{tabularx}{1.0\linewidth}{|>{\bfseries}c|C|}
      \hline
      论文（设计）题目&\SWFU@Prjtitle\\\hline
    \end{tabularx}
    \vskip -1pt
    \begin{tabularx}{1.0\linewidth}{|*{2}{>{\bfseries}c|C|}}
      \makecell{题目\\类别}%
      &\SWFU@PrjTypeA{}毕业论文\qquad\SWFU@PrjTypeB{}毕业设计%
      &\makecell{题目\\来源}%
      &\makecell[l]{%
        \SWFU@PrjFrmA{}科研项目\quad\SWFU@PrjFrmB{}社会实践\quad\SWFU@PrjFrmD{}其它来源\\
      \SWFU@PrjFrmC{}大学生创新创业项目}\\\hline
    \end{tabularx}
    \vskip -1pt
    \begin{tabularx}{1.0\linewidth}{|*{2}{>{\bfseries}r|C|}}
      指导教师&\SWFU@Advisor&职称&\SWFU@AdvisorTitle\\\hline
      辅助指导教师&\SWFU@Advisortwo&职称&\SWFU@AdvisorTitletwo\\\hline
    \end{tabularx}
    \vskip -1pt
    \begin{tabularx}{1.0\linewidth}{|*{3}{>{\bfseries}c|C|}}
      学生姓名&\SWFU@Studname&专业&\SWFU@Subject&学号&\SWFU@Studid\\\hline
    \end{tabularx}
    \vskip -1pt
    \begin{tabularx}{1.0\linewidth}{|>{\bfseries}c|C|}
      所属学院&\SWFU@School\\\hline
    \end{tabularx}
    \vskip -1pt
    \begin{tabularx}{1.0\linewidth}{|X|}
      论文工作计划和预期目标摘要：\\
      \begin{minipage}[t][35em]{1.0\linewidth}
        \qquad{}\SWFU@Plan
      \end{minipage}\\\hline
    \end{tabularx}
    {\heiti 注：}每位毕业生须填写一份；如表栏不够填写，请加附页。
  }}
