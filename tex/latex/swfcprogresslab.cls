\ProvidesClass{swfcpractice}[2016/07/05 SWFU teaching schedule form]
\NeedsTeXFormat{LaTeX2e}

% The swfcgplan class is for producing planning form used at SWFU

\LoadClass[a4paper,10pt]{article}

% \RequirePackage{calc,ifthen}
\RequirePackage{array}
\RequirePackage{tabu}
\RequirePackage{graphicx}

% \RequirePackage{latexsym}%,amsmath,amsfonts,amssymb}
\RequirePackage{xltxtra} %fontspec,xunicode are loaded here.
\RequirePackage{xeCJK}

\RequirePackage[%showframe,
paperwidth=210mm,paperheight=297mm,
margin=2.5cm]{geometry}

%\renewcommand\normalsize{\fontsize{10pt}{12pt}\selectfont} % The LaTeX Companion, A.4.9
\defaultfontfeatures{Mapping=tex-text}
\setmainfont{Liberation Serif}
\setsansfont{Liberation Sans}

\setCJKmainfont[BoldFont={Adobe Heiti Std}]{Adobe Song Std}
\setCJKsansfont{Noto Sans CJK SC Regular}
\setCJKfamilyfont{hei}{Adobe Heiti Std}
\setCJKfamilyfont{song}{Adobe Song Std}

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
\newcommand{\Signature}[1]{\gdef\SWFCField@Signature{\hspace{6ex}\includegraphics[scale=.15]{#1}}} % 任课教师签名
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

\newcommand{\makeform}{
  \pagestyle{empty}
  {\centering {\LARGE \textbf{西南林业大学教学进程（实验教学）计划表}}\\[5ex]
    \begin{tabu}{@{}X}
      学\hspace{.5em}年\hspace{.5em}度：\underline{\SWFCField@Term{}}\\[.5ex]
      课程名称：\underline{\SWFCField@Coursetitle{}}\\[1ex]
    \end{tabu}  
    \begin{tabu}{|c|X|}\hline
      课次&\centering{实验内容}\\\hline
        1&\SWFCField@Lecturea{}\\\hline 
        2&\SWFCField@Lectureb{}\\\hline
        3&\SWFCField@Lecturec{}\\\hline
        4&\SWFCField@Lectured{}\\\hline
        5&\SWFCField@Lecturee{}\\\hline
        6&\SWFCField@Lecturef{}\\\hline
        7&\SWFCField@Lectureg{}\\\hline
        8&\SWFCField@Lectureh{}\\\hline
        9&\SWFCField@Lecturei{}\\\hline
       10&\SWFCField@Lecturej{}\\\hline
       11&\SWFCField@Lecturek{}\\\hline
       12&\SWFCField@Lecturel{}\\\hline
       13&\SWFCField@Lecturem{}\\\hline
       14&\SWFCField@Lecturen{}\\\hline
       15&\SWFCField@Lectureo{}\\\hline
       16&\SWFCField@Lecturep{}\\\hline
       17&\SWFCField@Lectureq{}\\\hline
       18&\SWFCField@Lecturer{}\\\hline
       19&\SWFCField@Lectures{}\\\hline
       20&\SWFCField@Lecturet{}\\\hline
      \tabuphantomline
    \end{tabu}\vskip -1pt
    \begin{tabu}{|X|XXX[r]|}
      任课教师签名：&教研室意见：&&\\[1ex]
      \SWFCField@Signature{}&&&\\[-5ex]
      &&教研室负责人签名：&\\
      &&&年\hspace{3em}月\hspace{3em}日\\\hline
    \end{tabu}
    \begin{tabu}{@{}lX}
      注：&1. 本表一式三份，教研室、分院（系、部）、教务科各一份；\\
      &2. 有理论学时的教师请填写《教学进程（理论教学）计划表》，一式三份；\\
      &3. 请在接受教学任务后，于当学期第20周前交回。
    \end{tabu}
  }
}

\Term{2015-2016-02}  
\Coursetitle{操作系统原理}
\Signature{}
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
