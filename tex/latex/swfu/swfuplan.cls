% 西南林业大学本科毕业生毕业论文（设计）毕业实习指导计划表
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfuplan}

\RequirePackage{ifxetex} % XeTeX only
\RequirePackage{pgfkeys}

\pgfkeys{%
  Prjtitle/.store in     = \SWFU@Prjtitle,% 论文标题
  Prjclass/.store in     = \SWFU@Prjclass,% 课题类别
  Prjattri/.store in     = \SWFU@Prjattri,% 课题性质
  Signature/.store in    = \SWFU@Signature,% 指导教师签名
  AdvisorName/.store in  = \SWFU@AdvisorName, % 指导教师姓名
  AdvisorTitle/.store in = \SWFU@AdvisorTitle,% 职称
  Thesisplan/.store in   = \SWFU@Thesisplan, % 论文指导工作计划内容
  Prjplan/.store in      = \SWFU@Prjplan, % 毕业实习指导工作计划内容
  Startyear/.store in    = \SWFU@Startyear, %
  Year/.store in         = \SWFU@Year, %
  Month/.store in        = \SWFU@Month, %
  Date/.store in         = \SWFU@Date, %
  Studlist/.store in     = \SWFU@Studlist,%
  Studclass/.store in    = \SWFU@Studclass,% 学生班级
  Studname/.store in     = \SWFU@Studname, % 学生姓名
  Studtask/.store in     = \SWFU@Studtask, % 主要完成工作
  Studclassb/.store in   = \SWFU@Studclassb, % 学生班级
  Studclassc/.store in   = \SWFU@Studclassc, % 学生班级
  Studclassd/.store in   = \SWFU@Studclassd, % 学生班级
  Studclasse/.store in   = \SWFU@Studclasse, % 学生班级
  Studclassf/.store in   = \SWFU@Studclassf, % 学生班级
  Studnameb/.store in    = \SWFU@Studnameb,   % 学生姓名
  Studnamec/.store in    = \SWFU@Studnamec,   % 学生姓名
  Studnamed/.store in    = \SWFU@Studnamed,   % 学生姓名
  Studnamee/.store in    = \SWFU@Studnamee,   % 学生姓名
  Studnamef/.store in    = \SWFU@Studnamef,   % 学生姓名
  Studtaskb/.store in    = \SWFU@Studtaskb,   % 主要完成工作
  Studtaskc/.store in    = \SWFU@Studtaskc,   % 主要完成工作
  Studtaskd/.store in    = \SWFU@Studtaskd,   % 主要完成工作
  Studtaske/.store in    = \SWFU@Studtaske,   % 主要完成工作
  Studtaskf/.store in    = \SWFU@Studtaskf,   % 主要完成工作
  WorkAlone/.style = {%
    Studclassb=, Studclassc=, Studclassd=, Studclasse=, Studclassf=,% 学生班级
    Studnameb=, Studnamec=, Studnamed=, Studnamee=, Studnamef=,     % 学生姓名
    Studtaskb=, Studtaskc=, Studtaskd=, Studtaske=, Studtaskf=,     % 主要完成工作
    Studlist={%
      \begin{tabularx}{\linewidth}{|>{\ttfamily}c|>{\ttfamily}c|>{\ttfamily}C|}
        \normalfont{学生班级}&\normalfont{学生姓名}&\normalfont{主要完成工作}\\\hline%
        \SWFU@Studclass&\SWFU@Studname&\SWFU@Studtask\\\hline
      \end{tabularx}}}}

\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

\LoadClass[scheme=plain]{ctexart}

\RequirePackage{tabularx}
\renewcommand{\arraystretch}{1.5}
\newcolumntype{M}[1]{>{\centering\arraybackslash}m{#1}} % for centering p column
\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}} % for centering p column
\newcolumntype{C}{>{\centering\arraybackslash}X}

\RequirePackage{graphicx}
\RequirePackage[% showframe,
paperwidth=195mm,paperheight=270mm,
top=10mm,bottom=5mm,
left=30mm,right=30mm
]{geometry}

\newcommand{\makeform}{\pagestyle{empty}
  {\centering
    {\Large\heiti 西南林业大学\SWFU@Year{}届本科毕业生\\[3pt]
      毕业论文（设计）毕业实习指导计划表}\\[3ex]}
  \noindent\begin{tabularx}{\linewidth}{Xr@{}}
    &（本表由指导教师填写）\\\hline
  \end{tabularx}\\[-1pt]
  \begin{tabularx}{\linewidth}{|c|C|}
    论文（设计）题目&\kaishu\SWFU@Prjtitle{}\\\hline
  \end{tabularx}\\[-1pt]
  \begin{tabularx}{\linewidth}{|c|>{\kaishu}C|c|>{\kaishu}C|}
    类别 &\SWFU@Prjclass&性质&\SWFU@Prjattri\\\hline%
    指导教师&\SWFU@AdvisorName&职称&\SWFU@AdvisorTitle\\\hline
  \end{tabularx}\\[-1pt]
  \SWFU@Studlist
  \vspace{-1pt}
  \begin{tabularx}{\linewidth}{|X|}
    论文指导工作计划：\\[1ex]
    \hspace{4em}\begin{minipage}{.7\linewidth}
      \kaishu\SWFU@Thesisplan
    \end{minipage}\\\hline
    毕业实习指导工作计划：\\
    \hspace{4em}\begin{minipage}{.7\linewidth}
      \kaishu\SWFU@Prjplan
    \end{minipage}\par
    \hfill{}指导教师：\makebox[5em]{\SWFU@Signature}
    \makebox[3em]{\SWFU@Startyear}年\makebox[2em]{\SWFU@Month}月\makebox[2em]{\SWFU@Date}日\\\hline
    教研室主任审查意见：\\[8ex]
    \hfill{}签名：\hspace{8em}年\hspace{2em}月\hspace{2em}日\\\hline
    分院、系主管意见：\\[8ex]
    \hfill{}签名：\hspace{8em}年\hspace{2em}月\hspace{2em}日\\\hline
  \end{tabularx}
  \vspace{-1pt}
  \begin{tabularx}{\linewidth}{@{}X}
    注：每项论文（设计）需填写一份；如表栏不够填写，请加附页。\\
  \end{tabularx}}
