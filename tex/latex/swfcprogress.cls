% 西南林业大学教学进程（理论教学）计划表
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfcpractice}

\LoadClass[a4paper,10pt]{article}

\RequirePackage{ifxetex} % XeTeX only

\RequirePackage{tabu}
\RequirePackage{graphicx}

\RequirePackage[%showframe,
paperwidth=210mm,paperheight=297mm,
margin=2.5cm]{geometry}

\setlength{\parindent}{0pt}

\RequirePackage{wx672fonts}
\RequirePackage{wx672cjk}

\RequirePackage{array}
%%% array related. make long title looks nicer
%\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
%\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
%\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

\renewcommand{\arraystretch}{1.5} % make table row higher

% Declare some variables to hold the text fields for the preliminary pages
\newcommand{\Coursetitle}[1]{\gdef\SWFCField@Coursetitle{#1}} % 课程名称
\newcommand{\Term}[1]{\gdef\SWFCField@Term{#1}} % 学年度
\newcommand{\Hours}[1]{\gdef\SWFCField@Hours{#1}} % 讲课、实验学时（标签）
\newcommand{\Thours}[1]{\gdef\SWFCField@Thours{#1}} % 讲课小时数
\newcommand{\Lhours}[1]{\gdef\SWFCField@Lhours{#1}} % 实验小时数
\newcommand{\TLtitle}[1]{\gdef\SWFCField@TLtitle{#1}} % 理论/实验（标题）
\newcommand{\TLlabel}[1]{\gdef\SWFCField@TLlabel{#1}} % 理论/实验（附注）
\newcommand{\Chkbox}[1]{\gdef\SWFCField@Chkbox{#1}} % 本科\checked{}专科\unchecked
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
\newcommand{\Lectureu}[1]{\gdef\SWFCField@Lectureu{#1}} % 课程内容
\newcommand{\Lecturev}[1]{\gdef\SWFCField@Lecturev{#1}} % 课程内容
\newcommand{\Lecturew}[1]{\gdef\SWFCField@Lecturew{#1}} % 课程内容
\newcommand{\Lecturex}[1]{\gdef\SWFCField@Lecturex{#1}} % 课程内容

\newcommand{\Bigtable}[1]{\gdef\SWFCField@Bigtable{#1}} % 大表

\newcommand{\makeform}{\pagestyle{empty}
  \begin{center}
    {\LARGE\hei 西南林业大学教学进程（\SWFCField@TLtitle{}）计划表}
  \end{center}
  学\hspace{.5em}年\hspace{.5em}度：\underline{\quad\SWFCField@Term\quad}\par
  课程名称：\underline{\quad\SWFCField@Coursetitle\quad}\hfill{}\SWFCField@Chkbox\par
  \SWFCField@Hours\par
  \SWFCField@Bigtable
  \vspace{-1pt}
  \begin{tabu}{|l|X|}
    任课教师签名：&教研室意见：\\
    \SWFCField@Signature&\vspace{3ex}
    \hfill{}\makebox[18em][l]{教研室负责人签名：}\par\vspace{1ex}
    \hfill{}年\hspace{3em}月\hspace{3em}日\\\tabucline-
  \end{tabu}\vspace{-1pt}
  \begin{tabu}{@{}lX}
    注：&1. 本表一式三份，教研室、分院（系、部）、教务科各一份；\\
    &2. 有\SWFCField@TLlabel{}学时的教师请填写《教学进程（\SWFCField@TLlabel{}）计划表》，一式三份；\\
    &3. 请在接受教学任务后，于当学期第20周前交回。
  \end{tabu}}

\DeclareOption{T}{
  \Bigtable{\tabulinesep^2mm_2mm
    \begin{tabu}{|c|X|c|X|}\tabucline-
      课次&\centering{课程内容}&课次&\centering{课程内容}\\\tabucline-
      1&\SWFCField@Lecturea&21&\SWFCField@Lectureu\\\tabucline-
      2&\SWFCField@Lectureb&22&\SWFCField@Lecturev\\\tabucline-
      3&\SWFCField@Lecturec&23&\SWFCField@Lecturew\\\tabucline-
      4&\SWFCField@Lectured&24&\SWFCField@Lecturex\\\tabucline-
      5&\SWFCField@Lecturee&25&\\\tabucline-
      6&\SWFCField@Lecturef&26&\\\tabucline-
      7&\SWFCField@Lectureg&27&\\\tabucline-
      8&\SWFCField@Lectureh&28&\\\tabucline-
      9&\SWFCField@Lecturei&29&\\\tabucline-
      10&\SWFCField@Lecturej&30&\\\tabucline-
      11&\SWFCField@Lecturek&31&\\\tabucline-
      12&\SWFCField@Lecturel&32&\\\tabucline-
      13&\SWFCField@Lecturem&33&\\\tabucline-
      14&\SWFCField@Lecturen&34&\\\tabucline-
      15&\SWFCField@Lectureo&35&\\\tabucline-
      16&\SWFCField@Lecturep&36&\\\tabucline-
      17&\SWFCField@Lectureq&37&\\\tabucline-
      18&\SWFCField@Lecturer&38&\\\tabucline-
      19&\SWFCField@Lectures&39&\\\tabucline-
      20&\SWFCField@Lecturet&40&\\\tabucline-
    \end{tabu}}

  \TLtitle{理论教学}\TLlabel{实验}%  
  \Hours{讲课学时：\underline{\quad\SWFCField@Thours\quad}\hspace{8em}%
    实验学时：\underline{\quad\SWFCField@Lhours\quad}}%
  \Thours{48}\Lhours{16}%
  \Chkbox{本科\,\checked\qquad{}专科\unchecked}
}

\DeclareOption{L}{
  \Bigtable{\tabulinesep^2mm_2mm
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
    \end{tabu}}
  
  \TLtitle{实验教学}\TLlabel{理论教学}%
  \Hours{} \Thours{} \Lhours{} \Chkbox{}
}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
\ExecuteOptions{T} % default to T

\Term{2015-2016-02}  
\Coursetitle{操作系统原理}
\Signature{{\LARGE\sig 王晓林}}
\Lecturea{What's an OS?}
\Lectureb{Bootstrapping, Interrupts}
\Lecturec{System Calls}
\Lectured{Process}
\Lecturee{Thread}
\Lecturef{IPC}
\Lectureg{Semaphores}
\Lectureh{Monitors, Message Passing}
\Lecturei{Classical IPC Problems}
\Lecturej{CPU Scheduling}
\Lecturek{CPU Scheduling}
\Lecturel{Deadlock}
\Lecturem{Deadlock}
\Lecturen{Memory Management}
\Lectureo{Virtual Memory}
\Lecturep{Paging}
\Lectureq{Page Replacement Algorithms}
\Lecturer{Segmentation}
\Lectures{File System Structure}
\Lecturet{Files and Directories}
\Lectureu{Inodes}
\Lecturev{Inodes}
\Lecturew{Ext2 File System}
\Lecturex{Virtual File Systems}
