\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfcgplan}%[TeX Live 2016/Debian SWFU graduation planning form]

% The swfcgplan class is for producing planning form used at SWFU

\LoadClass[a4paper,12pt]{article}

\RequirePackage{ifxetex} % This class is for XeTeX only

%\RequirePackage{calc,ifthen}
\RequirePackage{array}
\RequirePackage{tabu,longtable}
\RequirePackage{graphicx}
\RequirePackage[ % showframe,
paperwidth=195mm,paperheight=270mm,
top=25mm,bottom=20mm,
left=30mm,right=30mm
]{geometry}

\RequirePackage{wx672fonts}
\RequirePackage{wx672cjk}

%%% array related. make long title looks nicer
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
%\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
%\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

%\renewcommand{\arraystretch}{1.5} % make table row higher

% Declare some variables to hold the text fields for the preliminary pages
%\newcommand{\Univ}[1]{\gdef\SWFCField@Univ{#1}} % 西南林业大学
\newcommand{\Prjtitle}[1]{\gdef\SWFCField@Prjtitle{#1}} % 论文标题
\newcommand{\Prjclass}[1]{\gdef\SWFCField@Prjclass{#1}} % 课题类别
\newcommand{\Prjattri}[1]{\gdef\SWFCField@Prjattri{#1}} % 课题性质
\newcommand{\Signature}[1]{\gdef\SWFCField@Signature{#1}} % 指导教师签名
\newcommand{\AdvisorName}[1]{\gdef\SWFCField@AdvisorName{#1}} % 指导教师姓名
\newcommand{\AdvisorTitle}[1]{\gdef\SWFCField@AdvisorTitle{#1}} % 职称
\newcommand{\Studclassa}[1]{\gdef\SWFCField@Studclassa{#1}} % 学生班级
\newcommand{\Studclassb}[1]{\gdef\SWFCField@Studclassb{#1}} % 学生班级
\newcommand{\Studclassc}[1]{\gdef\SWFCField@Studclassc{#1}} % 学生班级
\newcommand{\Studclassd}[1]{\gdef\SWFCField@Studclassd{#1}} % 学生班级
\newcommand{\Studclasse}[1]{\gdef\SWFCField@Studclasse{#1}} % 学生班级
\newcommand{\Studclassf}[1]{\gdef\SWFCField@Studclassf{#1}} % 学生班级
\newcommand{\Studnamea}[1]{\gdef\SWFCField@Studnamea{#1}} % 学生姓名
\newcommand{\Studnameb}[1]{\gdef\SWFCField@Studnameb{#1}} % 学生姓名
\newcommand{\Studnamec}[1]{\gdef\SWFCField@Studnamec{#1}} % 学生姓名
\newcommand{\Studnamed}[1]{\gdef\SWFCField@Studnamed{#1}} % 学生姓名
\newcommand{\Studnamee}[1]{\gdef\SWFCField@Studnamee{#1}} % 学生姓名
\newcommand{\Studnamef}[1]{\gdef\SWFCField@Studnamef{#1}} % 学生姓名
\newcommand{\Studtaska}[1]{\gdef\SWFCField@Studdtaska{#1}} % 主要完成工作
\newcommand{\Studtaskb}[1]{\gdef\SWFCField@Studdtaskb{#1}} % 主要完成工作
\newcommand{\Studtaskc}[1]{\gdef\SWFCField@Studdtaskc{#1}} % 主要完成工作
\newcommand{\Studtaskd}[1]{\gdef\SWFCField@Studdtaskd{#1}} % 主要完成工作
\newcommand{\Studtaske}[1]{\gdef\SWFCField@Studdtaske{#1}} % 主要完成工作
\newcommand{\Studtaskf}[1]{\gdef\SWFCField@Studdtaskf{#1}} % 主要完成工作
\newcommand{\Thesisplan}[1]{\gdef\SWFCField@Thesisplan{#1}} % 论文指导工作计划内容
\newcommand{\Prjplan}[1]{\gdef\SWFCField@Prjplan{#1}} % 毕业实习指导工作计划内容
\newcommand{\Startyear}[1]{\gdef\SWFCField@Startyear{#1}}
\newcommand{\Year}[1]{\gdef\SWFCField@Year{#1}}
\newcommand{\Month}[1]{\gdef\SWFCField@Month{#1}}
\newcommand{\Date}[1]{\gdef\SWFCField@Date{#1}}

\newcommand{\makeform}{\pagestyle{empty}
  {\centering
    {\Large\hei 西南林业大学\SWFCField@Year{}届本科毕业生\\[3pt]
      毕业论文（设计）毕业实习指导计划表}\\[3ex]}
  \begin{tabu}{X[r]@{}} （本表由指导教师填写）\\\tabucline- \end{tabu}
  \vspace{-1pt}\tabulinesep=2mm
  \begin{tabu}{|c|X[c]|}
    论文（设计）题目&\SWFCField@Prjtitle{}\\\tabucline-
  \end{tabu}\vspace{-1pt}
  \begin{tabu}{|c|X[c]|c|X[c]|}
    类别 &\SWFCField@Prjclass{}&性质&\SWFCField@Prjattri{} \\\tabucline-指导教
    师&\SWFCField@AdvisorName{}&职称&\SWFCField@AdvisorTitle{} \\\tabucline-
  \end{tabu}\vspace{-1pt}
  \begin{tabu}{|c|c|X[c]|}
    学生班级&学生姓名&主要完成工作\\\tabucline-
    \SWFCField@Studclassa{}&\SWFCField@Studnamea{}&\SWFCField@Studdtaska{}\\\tabucline-
    \SWFCField@Studclassb{}&\SWFCField@Studnameb{}&\SWFCField@Studdtaskb{}\\\tabucline-
    \SWFCField@Studclassc{}&\SWFCField@Studnamec{}&\SWFCField@Studdtaskc{}\\\tabucline-
    \SWFCField@Studclassd{}&\SWFCField@Studnamed{}&\SWFCField@Studdtaskd{}\\\tabucline-
    \SWFCField@Studclasse{}&\SWFCField@Studnamee{}&\SWFCField@Studdtaske{}\\\tabucline-
    \SWFCField@Studclassf{}&\SWFCField@Studnamef{}&\SWFCField@Studdtaskf{}\\\tabucline-
  \end{tabu}\vspace{-1pt}
  \begin{tabu}{|X[l]|}
    论文指导工作计划：\\
    \hspace{4em}\begin{minipage}{.7\linewidth}
      \SWFCField@Thesisplan{} \end{minipage}\\\tabucline-
  \end{tabu}
  \clearpage
  续表：\par
  \begin{tabu}{|X[l]|}\tabucline-
    毕业实习指导工作计划：\\
    \hspace{4em}\begin{minipage}{.7\linewidth} \SWFCField@Prjplan{} \end{minipage}\par
    \hfill{}指导教师：\makebox[5em]{\SWFCField@Signature{}}
    \makebox[3em]{\SWFCField@Startyear{}}年\makebox[2em]{\SWFCField@Month{}}月
    \makebox[2em]{\SWFCField@Date{}}日\\\tabucline-
    教研室主任审查意见：\\[8ex]
    \hfill{}签名：\hspace{8em}年\hspace{2em}月\hspace{2em}日\\\tabucline-
    分院、系主管意见：\\[8ex]
    \hfill{}签名：\hspace{8em}年\hspace{2em}月\hspace{2em}日\\\tabucline-
  \end{tabu}
  \vspace{-1pt}
  \begin{tabu}{@{}X}
    注：每项论文（设计）需填写一份；如表栏不够填写，请加附页。\\
  \end{tabu}}

%\Univ{西南林业大学}
\Signature{\sig{王晓林}}
\AdvisorTitle{讲师}
\AdvisorName{王晓林}
\Prjtitle{}
\Prjclass{} % 科研 设计 调查 其它
\Prjattri{} % 自选题 计划任务 横向任务 其它
\Studclassa{}\Studclassb{}\Studclassc{}\Studclassd{}\Studclasse{}\Studclassf{}
\Studnamea{}\Studnameb{}\Studnamec{}\Studnamed{}\Studnamee{}\Studnamef{}
\Studtaska{}\Studtaskb{}\Studtaskc{}\Studtaskd{}\Studtaske{}\Studtaskf{}

\Thesisplan{% 论文指导工作计划内容 
  \begin{itemize}
  \item
  \item
  \item 
  \end{itemize}}

\Prjplan{% 毕业实习指导工作计划内容
  \begin{itemize}
  \item
  \item
  \item 
  \end{itemize}}  
