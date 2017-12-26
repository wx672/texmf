\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfcpractice}%[TeX Live 2016/Debian SWFU practice registration form]

% The swfcgplan class is for producing planning form used at SWFU

\LoadClass[a4paper,12pt]{article}

\RequirePackage{ifxetex} % This class is for XeTeX only

% \RequirePackage{calc,ifthen}
\RequirePackage{array}
\RequirePackage{tabu}
\RequirePackage{graphicx}

\RequirePackage[%showframe,
paperwidth=210mm,paperheight=297mm,
margin=2.5cm]{geometry}

\RequirePackage{wx672fonts}
\RequirePackage{wx672cjk}

%%% array related. make long title looks nicer
%\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
%\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
%\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

\renewcommand{\arraystretch}{1.5} % make table row higher

% Declare some variables to hold the text fields for the preliminary pages
\newcommand{\Coursetitle}[1]{\gdef\SWFCField@Coursetitle{#1}} % 课程名称
\newcommand{\Term}[1]{\gdef\SWFCField@Term{#1}} % 学期
\newcommand{\Prjdates}[1]{\gdef\SWFCField@Prjdates{#1}} % 实习时间
\newcommand{\Prjdays}[1]{\gdef\SWFCField@Prjdays{#1}} % 实习天数
\newcommand{\Prjlab}[1]{\gdef\SWFCField@Prjlab{#1}} % 实习地点
\newcommand{\Prjclass}[1]{\gdef\SWFCField@Prjclass{#1}} % 实习班级
\newcommand{\Prjheads}[1]{\gdef\SWFCField@Prjheads{#1}} % 实习人数
\newcommand{\Prjreq}[1]{\gdef\SWFCField@Prjreq{#1}} % 实习要求
\newcommand{\Prjcontent}[1]{\gdef\SWFCField@Prjcontent{#1}} % 实习内容
\newcommand{\Prjgrp}[1]{\gdef\SWFCField@Prjgrp{#1}} % 分组情况
\newcommand{\AdvisorName}[1]{\gdef\SWFCField@AdvisorName{#1}} % 指导教师
\newcommand{\Prjplan}[1]{\gdef\SWFCField@Prjplan{#1}} % 课程实习安排

\newcommand{\makeform}{%
  \pagestyle{empty}%
  {\centering
    \begin{tabu}{@{}X}
      附表 2\\[2ex]
    \end{tabu}
    {\Large \textbf{西南林业大学实践教学（实习）登记表}}\\[2.5ex]
    \begin{tabu}{@{}X}
      \textbf{院（系、部）名称（公章）：}计算机与信息学院\\[.3ex]
      \textbf{学\hspace{1em}期：}\SWFCField@Term{}\\[.2ex]
    \end{tabu}
    \begin{tabu}{|X[.7,c m]|X|X[.7,c m]|X|}\hline
      课程名称&\multicolumn{3}{p{.7\textwidth}|}{\centering{\SWFCField@Coursetitle{}}}\\\hline
      实习时间&\centering{\SWFCField@Prjdates{}}&实习天数&\centering{\SWFCField@Prjdays{}}\\\hline
      实习地点&\multicolumn{3}{p{.7\textwidth}|}{\centering{\SWFCField@Prjlab{}}}\\\hline
      实习班级&\centering{\SWFCField@Prjclass}&指导教师&\centering{\SWFCField@AdvisorName{}}\\\hline
      实习人数&\centering{\SWFCField@Prjheads}&分组情况&\centering{\SWFCField@Prjgrp{}}\\\hline
    \end{tabu}\vskip -1pt
    \begin{tabu}{|X[.2405,c m]|X[c m]|}
      \vspace{1cm}实习要求\vspace{1cm}&\SWFCField@Prjreq\\\hline
      \vspace{1cm}实习内容\vspace{1cm}&\SWFCField@Prjcontent\\\hline
      \vspace{5cm}课程实习安排\vspace{5cm}&\SWFCField@Prjplan\\\hline
    \end{tabu}
  }
}

\Term{2014-2015-02}  
\AdvisorName{王晓林}
\Coursetitle{计算机网络}
\Prjdates{第19周} % 实习时间
\Prjdays{4} % 实习天数
\Prjlab{新校区A7机房} % 实习地点
\Prjclass{计科14（网络）} % 实习班级
\Prjheads{58} % 实习人数
\Prjgrp{无} % 分组情况

\Prjreq{% 实习要求
  见实习指导
}
\Prjcontent{% 实习内容
  见实习指导
}

\Prjplan{% 实习安排
  \begin{itemize}
  \item[7.13]
  \item[7.14]
  \item[7.15]
  \item[7.16]
  \end{itemize}
}
