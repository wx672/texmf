% Obsolete! Use swfcprogress.cls ('L' option) instead.
% 西南林业大学教学进程（实验教学）计划表
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfcprogresslab}

\LoadClass[a4paper,10pt]{article}

\RequirePackage{ifxetex} % XeTeX only

% \RequirePackage{calc,ifthen}
\RequirePackage{array}
\RequirePackage{tabu}
\RequirePackage{graphicx}

\RequirePackage{wx672cjk}

\RequirePackage[%showframe,
paperwidth=210mm,paperheight=297mm,
margin=2.5cm]{geometry}

\setlength{\parindent}{0pt}
\setlength{\parskip}{5pt}

%%% array related. make long title looks nicer
%\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
%\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
%\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

\renewcommand{\arraystretch}{1.5} % make table row higher

% Declare some variables to hold the text fields for the preliminary pages
\newcommand{\Coursetitle}[1]{\gdef\SWFCField@Coursetitle{#1}} % 课程名称
\newcommand{\Term}[1]{\gdef\SWFCField@Term{#1}} % 学年度
\newcommand{\Theory}[1]{\gdef\SWFCField@Theory{#1}} % 讲课学时
\newcommand{\Lab}[1]{\gdef\SWFCField@Lab{#1}} % 实验学时
\newcommand{\Signature}[1]{\gdef\SWFCField@Signature{#1}} % 任课教师签名
\newcommand{\Lecturea}[1]{\gdef\SWFCField@Lecturea{#1}} % 课程内容
\newcommand{\Lectureb}[1]{\gdef\SWFCField@Lectureb{#1}} % 课程内容
\newcommand{\Lecturec}[1]{\gdef\SWFCField@Lecturec{#1}} % 课程内容
\newcommand{\Lectured}[1]{\gdef\SWFCField@Lectured{#1}} % 课程内容
\newcommand{\Lecturee}[1]{\gdef\SWFCField@Lecturee{#1}} % 课程内容
\newcommand{\Lecturef}[1]{\gdef\SWFCField@Lecturef{#1}} % 课程内容
\newcommand{\Lectureg}[1]{\gdef\SWFCField@Lectureg{#1}} % 课程内容
\newcommand{\Lectureh}[1]{\gdef\SWFCField@Lectureh{#1}} % 课程内容
\newcommand{\Lecturei}[1]{\gdef\SWFCField@Lecturei{#1}} % 课程内容
\newcommand{\Lecturej}[1]{\gdef\SWFCField@Lecturej{#1}} % 课程内容
\newcommand{\Lecturek}[1]{\gdef\SWFCField@Lecturek{#1}} % 课程内容
\newcommand{\Lecturel}[1]{\gdef\SWFCField@Lecturel{#1}} % 课程内容
\newcommand{\Lecturem}[1]{\gdef\SWFCField@Lecturem{#1}} % 课程内容
\newcommand{\Lecturen}[1]{\gdef\SWFCField@Lecturen{#1}} % 课程内容
\newcommand{\Lectureo}[1]{\gdef\SWFCField@Lectureo{#1}} % 课程内容
\newcommand{\Lecturep}[1]{\gdef\SWFCField@Lecturep{#1}} % 课程内容
\newcommand{\Lectureq}[1]{\gdef\SWFCField@Lectureq{#1}} % 课程内容
\newcommand{\Lecturer}[1]{\gdef\SWFCField@Lecturer{#1}} % 课程内容
\newcommand{\Lectures}[1]{\gdef\SWFCField@Lectures{#1}} % 课程内容
\newcommand{\Lecturet}[1]{\gdef\SWFCField@Lecturet{#1}} % 课程内容

\newcommand{\makeform}{\pagestyle{empty}
  \begin{center}
    {\LARGE\textbf{西南林业大学教学进程（实验教学）计划表}}
  \end{center}
  学\hspace{.5em}年\hspace{.5em}度：\underline{\quad\SWFCField@Term\quad}\par
  课程名称：\underline{\SWFCField@Coursetitle{}}\par
  \begin{tabu}{|c|X|}\tabucline-
    课次&\centering{实验内容}\\\tabucline-
    1&\SWFCField@Lecturea{}\\\tabucline- 
    2&\SWFCField@Lectureb{}\\\tabucline-
    3&\SWFCField@Lecturec{}\\\tabucline-
    4&\SWFCField@Lectured{}\\\tabucline-
    5&\SWFCField@Lecturee{}\\\tabucline-
    6&\SWFCField@Lecturef{}\\\tabucline-
    7&\SWFCField@Lectureg{}\\\tabucline-
    8&\SWFCField@Lectureh{}\\\tabucline-
    9&\SWFCField@Lecturei{}\\\tabucline-
    10&\SWFCField@Lecturej{}\\\tabucline-
    11&\SWFCField@Lecturek{}\\\tabucline-
    12&\SWFCField@Lecturel{}\\\tabucline-
    13&\SWFCField@Lecturem{}\\\tabucline-
    14&\SWFCField@Lecturen{}\\\tabucline-
    15&\SWFCField@Lectureo{}\\\tabucline-
    16&\SWFCField@Lecturep{}\\\tabucline-
    17&\SWFCField@Lectureq{}\\\tabucline-
    18&\SWFCField@Lecturer{}\\\tabucline-
    19&\SWFCField@Lectures{}\\\tabucline-
    20&\SWFCField@Lecturet{}\\\tabucline-
  \end{tabu}\vspace{-1pt}
  \begin{tabu}{|l|X|}
    任课教师签名：&教研室意见：\\
    \SWFCField@Signature&\vspace{3ex}
    \hfill{}\makebox[18em][l]{教研室负责人签名：}\par\vspace{1ex}
    \hfill{}年\hspace{3em}月\hspace{3em}日\\\tabucline-
  \end{tabu}\vspace{-1pt}
  \begin{tabu}{@{}lX}
    注：&1. 本表一式三份，教研室、分院（系、部）、教务科各一份；\\
    &2. 有理论学时的教师请填写《教学进程（理论教学）计划表》，一式三份；\\
    &3. 请在接受教学任务后，于当学期第20周前交回。
  \end{tabu}}

\Term{2015-2016-02}  
\Coursetitle{操作系统原理}
\Signature{\LARGE\sig{王晓林}}
\Theory{48}
\Lab{16}
\Lecturea{}
\Lectureb{}
\Lecturec{}
\Lectured{}
\Lecturee{}
\Lecturef{}
\Lectureg{}
\Lectureh{}
\Lecturei{}
\Lecturej{}
\Lecturek{}
\Lecturel{}
\Lecturem{}
\Lecturen{}
\Lectureo{}
\Lecturep{}
\Lectureq{}
\Lecturer{}
\Lectures{}
\Lecturet{}
