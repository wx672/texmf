% 西南林业大学实践教学（实习）计划表
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfupractice}

\RequirePackage{pgfkeys}

\pgfkeys{%
  Coursetitle/.store in = \SWFU@Coursetitle, Coursetitle = 计算机网络实习,%
  Term/.store in        = \SWFU@Term,%        学期 
  Prjdates/.store in    = \SWFU@Prjdates,%    实习时间 （6月24--26日）
  Prjdays/.store in     = \SWFU@Prjdays,%     实习天数    
  Prjlab/.store in      = \SWFU@Prjlab,%      实习地点 
  Prjclass/.store in    = \SWFU@Prjclass,  %  实习班级 
  Prjheads/.store in    = \SWFU@Prjheads,%    实习人数 
  Prjreq/.store in      = \SWFU@Prjreq,      Prjreq     = 见实习指导,% 实习要求 
  Prjcontent/.store in  = \SWFU@Prjcontent,  Prjcontent = 见实习指导,% 实习内容 
  Prjgrp/.store in      = \SWFU@Prjgrp,      Prjgrp     = 不分组,    % 分组情况 
  Prjplan/.store in     = \SWFU@Prjplan,%     实习安排
  AdvisorName/.store in = \SWFU@AdvisorName, AdvisorName = 王晓林,%
}
\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ProcessOptions\relax

\LoadClass[scheme=chinese,zihao=-4]{ctexart}

\RequirePackage[paperwidth=210mm,paperheight=297mm,margin=2.5cm]{geometry}%showframe,

\RequirePackage{tabularx,makecell}
\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}} % centering p column
\newcolumntype{M}[1]{>{\centering\arraybackslash}m{#1}} % centering m column
\newcolumntype{C}{>{\centering\arraybackslash}X}

\newcommand{\makeform}{%
  \pagestyle{empty}%
  {\centering
    {\Large\bfseries 西南林业大学实践教学（实习）计划表}\\[2.5ex]
    \begin{tabularx}{\textwidth}{>{\bfseries}l@{：}>{\ttfamily}X}
      学院名称&（公章）大数据与智能工程学院\\[.3ex]
      学\hspace{2em}期&\SWFU@Term{}\\[.2ex]
    \end{tabularx}
    \setlength{\extrarowheight}{3pt}
    \begin{tabularx}{\textwidth}{|*{2}{l|>{\ttfamily}X|}}\hline
      课程名称%
      &\multicolumn{3}{>{\ttfamily}p{.7\textwidth}|}{\centering{\SWFU@Coursetitle{}}}\\[3pt]\hline
      实习时间&\SWFU@Prjdates&实习天数&\SWFU@Prjdays\\[3pt]\hline
      实习地点&\multicolumn{3}{>{\ttfamily}p{.7\textwidth}|}{\SWFU@Prjlab}\\[3pt]\hline
      实习班级&\SWFU@Prjclass&指导教师&\SWFU@AdvisorName\\[3pt]\hline
      实习人数&\SWFU@Prjheads&分组情况&\SWFU@Prjgrp\\[3pt]\hline
    \end{tabularx}\vskip -1pt
    \begin{tabularx}{\textwidth}{|M{4em}|>{\ttfamily}X|}
      \makecell[t]{实习要求}%
      & \begin{minipage}[c][10em]{1.0\linewidth}
        \SWFU@Prjreq
      \end{minipage}\\\hline
      \makecell{实习内容}%
      & \begin{minipage}[c][10em]{1.0\linewidth}
        \SWFU@Prjcontent
      \end{minipage}\\\hline
      &（本栏须填写清楚实习的日期及该天实习的具体内容）\\[-2em]
      \makecell{实习安排}%
      & \begin{minipage}[c][20em]{1.0\linewidth}        
        \SWFU@Prjplan
      \end{minipage}\\\hline
    \end{tabularx}
  }
}
