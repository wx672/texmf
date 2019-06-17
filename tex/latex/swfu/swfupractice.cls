% 西南林业大学实践教学（实习）计划表
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfupractice}

\RequirePackage{ifxetex} % XeTeX only

\RequirePackage{pgfkeys}

\pgfkeys{%
  Coursetitle/.store in = \SWFU@Coursetitle, Coursetitle = 计算机网络实习,%
  Term/.store in        = \SWFU@Term,%        学期 
  Prjdates/.store in    = \SWFU@Prjdates,%    实习时间 
  Prjdays/.store in     = \SWFU@Prjdays,%     实习天数    
  Prjlab/.store in      = \SWFU@Prjlab,%      实习地点 
  Prjclass/.store in    = \SWFU@Prjclass,  %  实习班级 
  Prjheads/.store in    = \SWFU@Prjheads,%    实习人数 
  Prjreq/.store in      = \SWFU@Prjreq,      Prjreq     = 见实习指导,% 实习要求 
  Prjcontent/.store in  = \SWFU@Prjcontent,  Prjcontent = 见实习指导,% 实习内容 
  Prjgrp/.store in      = \SWFU@Prjgrp,%      分组情况 
  AdvisorName/.store in = \SWFU@AdvisorName, AdvisorName = 王晓林,%
  Prjplan/.store in     = \SWFU@Prjplan,%     实习安排
}
\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ProcessOptions\relax

\LoadClass[scheme=plain]{ctexart}

\RequirePackage[paperwidth=210mm,paperheight=297mm,margin=2.5cm]{geometry}%showframe,

\RequirePackage{tabularx}
\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}} % centering p column
\newcolumntype{M}[1]{>{\centering\arraybackslash}m{#1}} % centering m column
\newcolumntype{C}{>{\centering\arraybackslash}X}

\newcommand{\makeform}{%
  \pagestyle{empty}%
  {\centering
    {\Large \textbf{西南林业大学实践教学（实习）计划表}}\\[2.5ex]
    \begin{tabularx}{\textwidth}{>{\bfseries}l@{：}>{\ttfamily}X}
      学院名称&\textbf{（公章）}大数据与智能工程学院\\[.3ex]
      学\hspace{2em}期&\SWFU@Term{}\\[.2ex]
    \end{tabularx}
    \setlength{\extrarowheight}{3pt}
    \begin{tabularx}{\textwidth}{|l|>{\ttfamily}X|l|>{\ttfamily}X|}\hline
      课程名称&\multicolumn{3}{>{\ttfamily}p{.7\textwidth}|}{\centering{\SWFU@Coursetitle{}}}\\[3pt]\hline
      实习时间&\SWFU@Prjdates&实习天数&\SWFU@Prjdays\\[3pt]\hline
      实习地点&\multicolumn{3}{>{\ttfamily}p{.7\textwidth}|}{\SWFU@Prjlab}\\[3pt]\hline
      实习班级&\SWFU@Prjclass&指导教师&\SWFU@AdvisorName\\[3pt]\hline
      实习人数&\SWFU@Prjheads&分组情况&\SWFU@Prjgrp\\[3pt]\hline
    \end{tabularx}\vskip -1pt
    \begin{tabularx}{\textwidth}{|m{4em}|>{\ttfamily}X|}
      &\\[5em]
      实习要求&\SWFU@Prjreq\\[7em]\hline
      &\\[5em]
      实习内容&\SWFU@Prjcontent\\[7em]\hline
      &（本栏须填写清楚实习的日期及该天实习的具体内容）\\[2em]
      实习安排&\SWFU@Prjplan\\[10em]\hline
    \end{tabularx}
  }
}
