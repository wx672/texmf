\ProvidesClass{swfcpractice}[2016/05/12 SWFU teaching schedule form]
\NeedsTeXFormat{LaTeX2e}

% The swfcgplan class is for producing planning form used at SWFU

\LoadClass[a4paper,10pt]{article}

% \RequirePackage{calc,ifthen}
\RequirePackage{array}
\RequirePackage{tabu}
\RequirePackage{graphicx}

\RequirePackage{marvosym,amsmath,amsfonts,amssymb}
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
%\newcommand{\Univ}[1]{\gdef\SWFCField@Univ{#1}} % 西南林业大学
%\newcommand{\Formtitle}[1]{\gdef\SWFCField@Formtitle{#1}} % 本科毕业（设计）论文
%\newcommand{\Formsubtitle}[1]{\gdef\SWFCField@Formsubtitle{#1}} % 指导教师意见 | 评阅意见

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
\newcommand{\Lectureu}[1]{\gdef\SWFCField@Lectureu{#1}} % 课程内容
\newcommand{\Lecturev}[1]{\gdef\SWFCField@Lecturev{#1}} % 课程内容
\newcommand{\Lecturew}[1]{\gdef\SWFCField@Lecturew{#1}} % 课程内容
\newcommand{\Lecturex}[1]{\gdef\SWFCField@Lecturex{#1}} % 课程内容
\newcommand{\Lecturey}[1]{\gdef\SWFCField@Lecturey{#1}} % 课程内容
\newcommand{\Lecturez}[1]{\gdef\SWFCField@Lecturez{#1}} % 课程内容
\newcommand{\Lectureza}[1]{\gdef\SWFCField@Lectureza{#1}} % 课程内容
\newcommand{\Lecturezb}[1]{\gdef\SWFCField@Lecturezb{#1}} % 课程内容
\newcommand{\Lecturezc}[1]{\gdef\SWFCField@Lecturezc{#1}} % 课程内容
\newcommand{\Lecturezd}[1]{\gdef\SWFCField@Lecturezd{#1}} % 课程内容
\newcommand{\Lectureze}[1]{\gdef\SWFCField@Lectureze{#1}} % 课程内容
\newcommand{\Lecturezf}[1]{\gdef\SWFCField@Lecturezf{#1}} % 课程内容
\newcommand{\Lecturezg}[1]{\gdef\SWFCField@Lecturezg{#1}} % 课程内容
\newcommand{\Lecturezh}[1]{\gdef\SWFCField@Lecturezh{#1}} % 课程内容
\newcommand{\Lecturezi}[1]{\gdef\SWFCField@Lecturezi{#1}} % 课程内容
\newcommand{\Lecturezj}[1]{\gdef\SWFCField@Lecturezj{#1}} % 课程内容
\newcommand{\Lecturezk}[1]{\gdef\SWFCField@Lecturezk{#1}} % 课程内容
\newcommand{\Lecturezl}[1]{\gdef\SWFCField@Lecturezl{#1}} % 课程内容
\newcommand{\Lecturezm}[1]{\gdef\SWFCField@Lecturezm{#1}} % 课程内容
\newcommand{\Lecturezn}[1]{\gdef\SWFCField@Lecturezn{#1}} % 课程内容

\newcommand{\makeform}{
  \pagestyle{empty}
  {\centering {\LARGE \textbf{西南林业大学教学进程（理论教学）计划表}}\\[3ex] 
    \begin{tabu}{@{}XXX[r]@{}}
      学\hspace{.5em}年\hspace{.5em}度：\underline{\SWFCField@Term{}}&&\\
      课程名称：\underline{\SWFCField@Coursetitle{}}&&\\
      讲课学时：\underline{\SWFCField@Theory{}}&
      实验学时：\underline{\SWFCField@Lab{}}&
      本科\,{\large\Checkedbox{}}\qquad 专科$\Box$
    \end{tabu}
    \begin{tabu}{|c|X|c|X|}\hline
      课次&\centering{课程内容}&课次&\centering{课程内容}\\\hline
        1&\SWFCField@Lecturea{}&21&\SWFCField@Lectureu{}\\\hline 
        2&\SWFCField@Lectureb{}&22&\SWFCField@Lecturev{}\\\hline
        3&\SWFCField@Lecturec{}&23&\SWFCField@Lecturew{}\\\hline
        4&\SWFCField@Lectured{}&24&\SWFCField@Lecturex{}\\\hline
        5&\SWFCField@Lecturee{}&25&\SWFCField@Lecturey{}\\\hline
        6&\SWFCField@Lecturef{}&26&\SWFCField@Lecturez{}\\\hline
        7&\SWFCField@Lectureg{}&27&\SWFCField@Lectureza{}\\\hline
        8&\SWFCField@Lectureh{}&28&\SWFCField@Lecturezb{}\\\hline
        9&\SWFCField@Lecturei{}&29&\SWFCField@Lecturezc{}\\\hline
       10&\SWFCField@Lecturej{}&30&\SWFCField@Lecturezd{}\\\hline
       11&\SWFCField@Lecturek{}&31&\SWFCField@Lectureze{}\\\hline
       12&\SWFCField@Lecturel{}&32&\SWFCField@Lecturezf{}\\\hline
       13&\SWFCField@Lecturem{}&33&\SWFCField@Lecturezg{}\\\hline
       14&\SWFCField@Lecturen{}&34&\SWFCField@Lecturezh{}\\\hline
       15&\SWFCField@Lectureo{}&35&\SWFCField@Lecturezi{}\\\hline
       16&\SWFCField@Lecturep{}&36&\SWFCField@Lecturezj{}\\\hline
       17&\SWFCField@Lectureq{}&37&\SWFCField@Lecturezk{}\\\hline
       18&\SWFCField@Lecturer{}&38&\SWFCField@Lecturezl{}\\\hline
       19&\SWFCField@Lectures{}&39&\SWFCField@Lecturezm{}\\\hline
       20&\SWFCField@Lecturet{}&40&\SWFCField@Lecturezn{}\\\hline
      \tabuphantomline
    \end{tabu}\vskip -1pt
    \begin{tabu}{|X|XXX[r]|}
      任课教师签名：&教研室意见：&&\\[1ex]
      \SWFCField@Signature{}&&&\\[-5ex]
      &&教研室负责人签名：&\\
      &&&年\hspace{3em}月\hspace{3em}日\\\hline
    \end{tabu}\vskip -1pt
    \begin{tabu}{@{}lX}
      注：&1. 本表一式三份，教研室、分院（系、部）、教务科各一份；\\
      &2. 有实验学时的教师请填写《教学进程（实验）计划表》，一式三份；\\
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
\Lectureu{}
\Lecturev{}
\Lecturew{}
\Lecturex{}
\Lecturey{}
\Lecturez{}
\Lectureza{}
\Lecturezb{}
\Lecturezc{}
\Lecturezd{}
\Lectureze{}
\Lecturezf{}
\Lecturezg{}
\Lecturezh{}
\Lecturezi{}
\Lecturezj{}
\Lecturezk{}
\Lecturezl{}
\Lecturezm{}
\Lecturezn{}
