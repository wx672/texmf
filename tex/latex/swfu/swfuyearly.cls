% 西南林业大学教职工年年度考核表
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfuyearly}

\RequirePackage{ifxetex} % XeTeX only

\RequirePackage{pgfkeys}

\pgfkeys{%
  Year/.store in      = \SWFU@Year,%
  Month/.store in     = \SWFU@Month,%
  Date/.store in      = \SWFU@Date,%
  School/.store in    = \SWFU@School,%
  Name/.store in      = \SWFU@Name,%
  Gender/.store in    = \SWFU@Gender,%
  Birth/.store in     = \SWFU@Birth,%
  Political/.store in = \SWFU@Political,%
  Title/.store in     = \SWFU@Title,%
  Degree/.store in    = \SWFU@Degree,%
  Job/.store in       = \SWFU@Job,%
  Sumup/.store in     = \SWFU@Sumup,%
  Sig/.store in       = \SWFU@Sig,
  Year      = 2019,%
  Month     = 12,%
  Date      = 12,%
  School    = 大数据与智能工程学院,%
  Name      = 王晓林,%
  Gender    = 男,%
  Birth     = 1969年3月,%
  Political = 群众,%
  Title     = 讲师,%
  Degree    = 硕士,%
  Job       = 教学,%
  Sig       = {\includegraphics[width=6em]{../signature}},%
  Sumup     = {本年度，本人认真完成了《计算机网络》、《操作系统原理》、《Linux应用基础》等
    课程的教学工作，教学效果良好。同时本人认真完成了大智学院教学服务器的维护工作。服务器运
    行稳定，未发生任何问题。}}

\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ProcessOptions\relax

\LoadClass[scheme=plain]{ctexart}

\RequirePackage{tabu}

\RequirePackage{graphicx}

\RequirePackage[% showframe,
paperwidth=195mm, paperheight=270mm,
top=2cm, bottom=2cm,
left=2.5cm, right=2.5cm,
]{geometry}

\RequirePackage{tikz}
\usetikzlibrary{backgrounds,positioning,fit}

\newCJKfontfamily\sig{signature}
\newfontfamily\purisa{Purisa}

\newcommand{\Signit}[3]{%\Signit{5cm}{-2cm}{../signature}
  \begin{tikzpicture}[overlay,remember picture]%
    \node [xshift=#1,yshift=#2] at (current page.center) {%
      \includegraphics[scale=.1]{#3}};
  \end{tikzpicture}}

\newcommand{\Sumup}[4]{%\Sumup{.4cm}{4cm}{.1}{./text}
  \begin{tikzpicture}[overlay,remember picture]%
    \node [xshift=#1,yshift=#2] at (current page.center) {%
      \includegraphics[scale=#3]{#4}};
  \end{tikzpicture}}

\newcommand{\makeform}{
  \begin{center}
    {\LARGE\heiti 西南林业大学教职工\,\SWFU@Year\,年年度考核表}
  \end{center}
  学院/部门：{\kaishu\SWFU@School}\hfill{}填表时间：
  {\kaishu\SWFU@Year{}年\SWFU@Month{}月\SWFU@Date{}日}\par
  \tabulinesep=2mm%
  \noindent\begin{tabu}{|c|>{\kaishu}X[c]|c|>{\kaishu}X[c]|c|>{\kaishu}X[c]|}
    \tabucline-
    姓名&\SWFU@Name&性别&\SWFU@Gender&出生年月&\SWFU@Birth\\\tabucline-
  \end{tabu}%
  \vspace{-1pt}%
  \noindent\begin{tabu}{|c|>{\kaishu}X[c]|c|>{\kaishu}X[c]|}
    政治面貌&{\SWFU@Political}&职称/职务&{\SWFU@Title}\\\tabucline-
    文化程度&{\SWFU@Degree}&现从事工作&{\SWFU@Job}\\\tabucline-
  \end{tabu}
  \vspace{-1pt}\tabulinesep=2mm
  \noindent\begin{tabu}{|c|X|}
    \begin{minipage}{1em}\par\vspace{-20em}
      个人总结\par\rotatebox[origin=c]{270}{（}\par{}
      履行岗位职责情况\par\vspace{-1.5ex}\hfill{}、\par\vspace{1ex}
      工作成果等\par\rotatebox[origin=c]{270}{）}
    \end{minipage}&
    \par
    \begin{minipage}[b][25em]{.8\columnwidth}
      \par\vspace{1em}{\kaishu\SWFU@Sumup}\par\vspace{\fill}
    \end{minipage}\par
    \hfill\makebox[16em][l]{\kaishu 本人签字：\SWFU@Sig}\par\vspace*{1ex}\\\tabucline-
    \begin{minipage}{2em}
      所在单位考核意见
    \end{minipage}
    &\par\vspace{\fill}
    \hfill\makebox[16em][l]{签章}\par
    \hfill\makebox[12em][r]{年\hspace{3em}月\hspace{3em}日}\\\tabucline-
    \begin{minipage}[c]{2em}
      个人确认考核结果%
    \end{minipage}&%
    \begin{minipage}[c][6em][b]{.89\columnwidth}
      \hfill\makebox[12em][l]{\SWFU@Sig}\par
      \hfill\makebox[16em][l]{签章}\par%
      \hfill\makebox[12em][r]{{\purisa\SWFU@Year}年%
        \makebox[3em]{\purisa\SWFU@Month}月%
        \makebox[3em]{\purisa\SWFU@Date}日}%
    \end{minipage}\\\tabucline-%
    \begin{minipage}{1em}
      学校考核意见
    \end{minipage}&\par\vspace{1.2em}    
    \hfill\makebox[16em][l]{签章}\par
    \hfill\makebox[12em][r]{年\hspace{3em}月\hspace{3em}日}\\\tabucline-
  \end{tabu}}

\pagestyle{empty}