% 西南林业大学本科毕业论文教师指导证明
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfuplist}

%\RequirePackage{ifxetex} % XeTeX only

\RequirePackage{pgfkeys}

\pgfkeys{
  Name/.store in       = \SWFU@Name, Name={王晓林}, % 教师姓名
  Dept/.store in       = \SWFU@Dept, Dept={大数据与智能工程学院}, % 所属部门
  Sum/.store in        = \SWFU@Sum,   % 指导人数合计（人）
  Hours/.store in      = \SWFU@Hours, % 工作量合计（学时）
  Year/.store in       = \SWFU@Year,  %年份
  Month/.store in      = \SWFU@Month, Month={\hspace{2em}}, %
  Date/.store in      = \SWFU@Date, Date={\hspace{2em}}, %
  Studa/.store in     = \SWFU@Studa,   Studa=,%学生姓名a
  Studb/.store in     = \SWFU@Studb,   Studb=,%学生姓名b
  Studc/.store in     = \SWFU@Studc,   Studc=,%学生姓名c
  Studd/.store in     = \SWFU@Studd,   Studd=,%学生姓名d
  Stude/.store in     = \SWFU@Stude,   Stude=,%学生姓名e
  Studf/.store in     = \SWFU@Studf,   Studf=,%学生姓名f
  Studg/.store in     = \SWFU@Studg,   Studg=,%学生姓名g
  Studh/.store in     = \SWFU@Studh,   Studh=,%学生姓名h
  Studi/.store in     = \SWFU@Studi,   Studi=,%学生姓名i
  Studj/.store in     = \SWFU@Studj,   Studj=,%学生姓名j
  Studk/.store in     = \SWFU@Studk,   Studk=,%学生姓名k
  Studl/.store in     = \SWFU@Studl,   Studl=,%学生姓名l
  Studm/.store in     = \SWFU@Studm,   Studm=,%学生姓名m
  Studn/.store in     = \SWFU@Studn,   Studn=,%学生姓名n
  Studo/.store in     = \SWFU@Studo,   Studo=,%学生姓名o
  Studp/.store in     = \SWFU@Studp,   Studp=,%学生姓名p
  Studq/.store in     = \SWFU@Studq,   Studq=,%学生姓名q
  Studr/.store in     = \SWFU@Studr,   Studr=,%学生姓名r
  Studs/.store in     = \SWFU@Studs,   Studs=,%学生姓名s
  Proja/.store in     = \SWFU@Proja,   Proja=, %论文（设计）题目a
  Projb/.store in     = \SWFU@Projb,   Projb=, %论文（设计）题目b
  Projc/.store in     = \SWFU@Projc,   Projc=, %论文（设计）题目c
  Projd/.store in     = \SWFU@Projd,   Projd=, %论文（设计）题目d
  Proje/.store in     = \SWFU@Proje,   Proje=, %论文（设计）题目e
  Projf/.store in     = \SWFU@Projf,   Projf=, %论文（设计）题目f
  Projg/.store in     = \SWFU@Projg,   Projg=, %论文（设计）题目g
  Projh/.store in     = \SWFU@Projh,   Projh=, %论文（设计）题目h
  Proji/.store in     = \SWFU@Proji,   Proji=, %论文（设计）题目i
  Projj/.store in     = \SWFU@Projj,   Projj=, %论文（设计）题目j
  Projk/.store in     = \SWFU@Projk,   Projk=, %论文（设计）题目k
  Projl/.store in     = \SWFU@Projl,   Projl=, %论文（设计）题目l
  Projm/.store in     = \SWFU@Projm,   Projm=, %论文（设计）题目m
  Projn/.store in     = \SWFU@Projn,   Projn=, %论文（设计）题目n
  Projo/.store in     = \SWFU@Projo,   Projo=, %论文（设计）题目o
  Projp/.store in     = \SWFU@Projp,   Projp=, %论文（设计）题目p
  Projq/.store in     = \SWFU@Projq,   Projq=, %论文（设计）题目q
  Projr/.store in     = \SWFU@Projr,   Projr=, %论文（设计）题目r
  Projs/.store in     = \SWFU@Projs,   Projs=, %论文（设计）题目s
}

\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

\LoadClass[zihao=-4,scheme=plain]{ctexart}

\RequirePackage[ % showframe,
%paperwidth=210mm,paperheight=297mm,
top=2.5cm,bottom=2cm,
left=3cm,right=3cm
]{geometry}

\RequirePackage{tabularx}
\newcolumntype{M}[1]{>{\centering\arraybackslash}m{#1}} % centering m cols
\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}} % centering p cols
\newcolumntype{C}{>{\centering\arraybackslash}X}
\renewcommand{\arraystretch}{1.5}

\newcommand{\mkvspace}[2]{\rule{0pt}{#1}\par{}#2\par{}\rule{0pt}{#1}}%\mkvspace{12ex}{text}

\newcommand{\makeform}{%
  \pagestyle{empty}%
  \begin{center}
    {\large\heiti 西南林业大学本科毕业论文（设计）教师指导情况}
  \end{center}
  {\setlength{\extrarowheight}{1pt}%
  \begin{tabularx}{\textwidth}{|>{\heiti}M{6em}|C|>{\heiti}M{5em}|C|}\hline%
    所属部门&\SWFU@Dept&教师姓名&\SWFU@Name\\\hline
    指导人数合计（人）&\SWFU@Sum&工作量合计（学时）&\SWFU@Hours\\\hline
  \end{tabularx}\\[-1pt]
  \begin{tabularx}{\textwidth}{|l|l|X|p{4em}|}
    \multicolumn{4}{|c|}{\heiti 毕业论文（设计）教师指导统计}\\\hline
    年份&学生姓名&论文（设计）题目&备注\\\hline
    \SWFU@Year&\SWFU@Studa&\SWFU@Proja&\\\hline
    \SWFU@Year&\SWFU@Studb&\SWFU@Projb&\\\hline
    \SWFU@Year&\SWFU@Studc&\SWFU@Projc&\\\hline
    \SWFU@Year&\SWFU@Studd&\SWFU@Projd&\\\hline
    \SWFU@Year&\SWFU@Stude&\SWFU@Proje&\\\hline
    \SWFU@Year&\SWFU@Studf&\SWFU@Projf&\\\hline
    \SWFU@Year&\SWFU@Studg&\SWFU@Projg&\\\hline
    \SWFU@Year&\SWFU@Studh&\SWFU@Projh&\\\hline
    \SWFU@Year&\SWFU@Studi&\SWFU@Proji&\\\hline
    \SWFU@Year&\SWFU@Studj&\SWFU@Projj&\\\hline
    \SWFU@Year&\SWFU@Studk&\SWFU@Projk&\\\hline
    \SWFU@Year&\SWFU@Studl&\SWFU@Projl&\\\hline
    \SWFU@Year&\SWFU@Studm&\SWFU@Projm&\\\hline
    \SWFU@Year&\SWFU@Studn&\SWFU@Projn&\\\hline
    \SWFU@Year&\SWFU@Studo&\SWFU@Projo&\\\hline
    \SWFU@Year&\SWFU@Studp&\SWFU@Projp&\\\hline
    \SWFU@Year&\SWFU@Studq&\SWFU@Projq&\\\hline
    \SWFU@Year&\SWFU@Studr&\SWFU@Projr&\\\hline
    \SWFU@Year&\SWFU@Studs&\SWFU@Projs&\\\hline
  \end{tabularx}}

\noindent{}电子表格可于教务处网页“实践教学”中下载\\[1ex]
\begin{flushright}
  实验与实习基地管理科\\[1em]
  \SWFU@Year{}\,年\,\SWFU@Month{}\,月\,\SWFU@Date{}\,日
\end{flushright}}
