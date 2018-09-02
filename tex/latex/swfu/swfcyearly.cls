% 西南林业大学教职工年年度考核表
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfcyearly}

\LoadClass[a4paper,10pt]{article}

\RequirePackage{ifxetex} % XeTeX only

%\RequirePackage{array}
\RequirePackage{tabu}

\RequirePackage{graphicx}

\RequirePackage[% showframe,
paperwidth=195mm, paperheight=270mm,
top=2cm, bottom=2cm,
left=2.5cm, right=2.5cm,
]{geometry}

\RequirePackage{tikz}
\usetikzlibrary{backgrounds,positioning,fit}
                
\RequirePackage{wx672cjk}

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
  \begin{center}
    {\LARGE\hei 西南林业大学教职工\underline{\ \SWFCField@Year\ }年年度考核表}
  \end{center}
  学院/部门：{\kai\SWFCField@School}\hfill{}填表时间：
  \SWFCField@Year{}年\SWFCField@Month{}月\SWFCField@Date{}日\\
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
    \vspace{-1pt}\tabulinesep=2mm
    \noindent\begin{tabu}{|p{1em}|X|}
      \vspace{4ex} 个人总结\par\rotatebox[origin=c]{270}{（}\par{}
      履行岗位职责情况\par\vspace{-1.5ex}\hfill{}、\par\vspace{1ex}
      工作成果等\par\rotatebox[origin=c]{270}{）}&
      {\footnotesize\kai （字数控制在800字以内）}\par\vspace{64ex}
      \hfill\makebox[16em][l]{本人签字：}\par\vspace{2ex}\\\tabucline-
      所在单位考核意见&\par\vspace{14ex}
      \hfill\makebox[16em][l]{签章}\par
      \hfill\makebox[12em][r]{年\hspace{3em}月\hspace{3em}日}\\\tabucline-
      学校考核意见&\par\vspace{9ex}
      \hfill\makebox[16em][l]{签章}\par
      \hfill\makebox[12em][r]{年\hspace{3em}月\hspace{3em}日}\\\tabucline-
    \end{tabu}}

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