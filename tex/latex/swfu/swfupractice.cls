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

\RequirePackage{tabularray}
% \RequirePackage{tabularx,makecell}
% \newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}} % centering p column
% \newcolumntype{M}[1]{>{\centering\arraybackslash}m{#1}} % centering m column
% \newcolumntype{C}{>{\centering\arraybackslash}X}

\newcommand{\makeform}{%
  \pagestyle{empty}%
  {\centering
    {\Large\bfseries 西南林业大学实践教学（实习）计划表}\\\bigskip
    \begin{minipage}{\textwidth}
      \noindent{}\textbf{学院名称：}（公章）大数据与智能工程学院\\
      \textbf{学\qquad{}期：}\SWFU@Term{}
    \end{minipage}\par\medskip
    \noindent%
    \begin{tblr}{width=\linewidth, colspec={cX[c]cX[c]}, vlines, hlines,%
        cell{1,3}{2}={c=3}{c,m,font=\ttfamily},
        % cell{6}{2}={c=3}{m,font=\ttfamily},
        % cell{7}{2}={c=3}{m,font=\ttfamily},
        % cell{8}{2}={c=3}{m,font=\ttfamily},
      }
      课程名称&\SWFU@Coursetitle\\
      实习时间&\SWFU@Prjdates&实习天数&\SWFU@Prjdays\\
      实习地点&\SWFU@Prjlab&&\\
      实习班级&\SWFU@Prjclass&指导教师&\SWFU@AdvisorName\\
      实习人数&\SWFU@Prjheads&分组情况&\SWFU@Prjgrp
    \end{tblr}\par
    \vspace*{-1pt}
    \begin{tblr}{width=\linewidth, colspec={cX},rowspec={Q[m]Q[m]Q[m]},%
        vlines,hline{2-4}={solid}}
      实习要求 &%
      \begin{minipage}[c][10em]{.9\columnwidth}
        \SWFU@Prjreq
      \end{minipage}\\
      实习内容 &%
      \begin{minipage}[c][10em]{.9\columnwidth}
        \SWFU@Prjcontent
      \end{minipage}\\
      实习安排 &%
      （本栏须填写清楚实习的日期及该天实习的具体内容）
      \begin{minipage}[c][15em]{.9\columnwidth}        
        \SWFU@Prjplan
      \end{minipage}
    \end{tblr}
  }
}
