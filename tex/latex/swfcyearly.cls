\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfcyearly}

% The swfcyearly class is for producing yearly work assessment form used at SWFU

\LoadClass[a4paper,10pt]{article}

\RequirePackage{calc,ifthen}
\RequirePackage{array}
\RequirePackage{tabu}

\RequirePackage{graphicx}
\RequirePackage[% showframe,
paperwidth=195mm, paperheight=270mm,
top=2cm, bottom=2cm,
left=2.5cm, right=2.5cm,
]{geometry}

\RequirePackage{tikz}
\usetikzlibrary{backgrounds,positioning,fit}
                
\RequirePackage{wx672fonts}
\RequirePackage{wx672cjk}

%%% make long title looks nicer
%\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
%\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
%\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

%\newcommand{\Formtitle}[1]{\gdef\SWFCField@Formtitle{#1}} % 西南林业大学课程教学小结表
\newcommand{\Year}[1]{\gdef\SWFCField@Year{#1}} % 年份
\newcommand{\Month}[1]{\gdef\SWFCField@Month{#1}} % 月份
\newcommand{\Date}[1]{\gdef\SWFCField@Date{#1}} % 日期
\newcommand{\School}[1]{\gdef\SWFCField@School{#1}} % 学院/部门
\newcommand{\Name}[1]{\gdef\SWFCField@Name{#1}} % 姓名
%\newcommand{\Sign}[1]{\gdef\SWFCField@Sign{#1}} % 本人签字
\newcommand{\Gender}[1]{\gdef\SWFCField@Gender{#1}} % 性别
\newcommand{\Birth}[1]{\gdef\SWFCField@Birth{#1}} % 出生年月
\newcommand{\Political}[1]{\gdef\SWFCField@Political{#1}} % 政治面貌
\newcommand{\Title}[1]{\gdef\SWFCField@Title{#1}} % 职务/职称
\newcommand{\Degree}[1]{\gdef\SWFCField@Degree{#1}} % 文化程度
\newcommand{\Job}[1]{\gdef\SWFCField@Job{#1}} % 现从事工作

\newcommand{\Signit}[3]{%\Signit{5cm}{-2cm}{../signature}
  \begin{tikzpicture}[overlay,remember picture]%
    \node [xshift=#1,yshift=#2] at (current page.center) {%
      \includegraphics[scale=.2]{#3}};
  \end{tikzpicture}}

\newcommand{\Sumup}[4]{%\Sumup{.4cm}{4cm}{.1}{./text}
  \begin{tikzpicture}[overlay,remember picture]%
    \node [xshift=#1,yshift=#2] at (current page.center) {%
      \includegraphics[scale=#3]{#4}};    
  \end{tikzpicture}}

\newcommand{\makeform}{
  {\centering
    {\LARGE\hei 西南林业大学教职工\underline{\ \SWFCField@Year\ }年年度考核表}\\[2ex]
    学院/部门：{\kai\SWFCField@School}\hfill{}填表时间：
    \SWFCField@Year{}年\SWFCField@Month{}月\SWFCField@Date{}日\\
    % \tabulinesep=2mm
    \begin{tabu}{|@{}X[c]@{}|@{}X[c]@{}|}\tabucline-
      \tabulinesep=2mm
      \begin{tabu}{c|X[c]|c}
        姓名&{\kai\SWFCField@Name}&性别\\
      \end{tabu}&
      \tabulinesep=2mm
      \begin{tabu}{X[c]|c|X[c]}
        {\kai\SWFCField@Gender}&出生年月&{\kai\SWFCField@Birth}\\
      \end{tabu}\\\tabucline- % end of the first raw
      \tabulinesep=2mm
      \begin{tabu}{c|X[c]@{}}
        政治面貌&{\kai\SWFCField@Political}\\\tabucline-
        文化程度&{\kai\SWFCField@Degree}\\
      \end{tabu}&
      \tabulinesep=2mm
      \begin{tabu}{c|X[c]}
        职称/职务&{\kai\SWFCField@Title}\\\tabucline-
        现从事工作&{\kai\SWFCField@Job}\\
      \end{tabu}\\\tabucline-
    \end{tabu} % end of the 3rd raw
    \vskip -1pt\tabulinesep=2mm
    \begin{tabu}{|p{1em}|X|}
      \vskip 4ex 个人总结\par\rotatebox[origin=c]{270}{（}\par{}
      履行岗位职责情况\par\vskip -1.5ex\hfill{}、\par\vskip 1ex 
      工作成果等\par\rotatebox[origin=c]{270}{）}
      &
      {\footnotesize\kai （字数控制在800字以内）}\par\vskip 65ex
      \hfill\makebox[16em][l]{本人签字：}\par\vskip 5ex\\\tabucline-
      所在单位考核意见&\par\vskip 12ex
      \hfill\makebox[16em][l]{签章}\par
      \hfill\makebox[12em][l]{年\quad{}月\quad{}日}\par\vskip 5ex\\\tabucline-
      学校考核意见&\par\vskip 7ex
      \hfill\makebox[16em][l]{签章}\par
      \hfill\makebox[12em][l]{年\quad{}月\quad{}日}\par\vskip 5ex\\\tabucline-
    \end{tabu}
  }}

\School{大数据与智能工程学院}
\Name{王晓林}\Gender{男}\Birth{1969-03}
\Political{群众}\Title{讲师}
\Degree{硕士}\Job{教学、科研}
\Year{2017}\Month{12}\Date{22}
%\Sumup{0}{0}{.5}{./text}
%\Signit{0}{0}{../signature}

%\Text{2017年度，
% 1. 本人认真完成了《操作系统原理》、《Linux应用基础》等课程的教学工作，教学效果良好；
% 2. 顺利完成了大智学院教学服务器的运行、维护工作。服务器运行稳定，未发生任何事故。}
\pagestyle{empty}