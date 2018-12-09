% 西南林业大学教职工年年度考核表
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfuyearly}

\RequirePackage{ifxetex} % XeTeX only

\RequirePackage{pgfkeys,etoolbox,calc}

\pgfkeys{
  Year/.store in      = \SWFU@Year,      Year =,
  Month/.store in     = \SWFU@Month,     Month/.default     = 12,
  Date/.store in      = \SWFU@Date,      Date/.default      = 22,
  School/.store in    = \SWFU@School,    School/.default    = 大数据与智能工程学院,
  Name/.store in      = \SWFU@Name,      Name/.default      = 王晓林,
  Gender/.store in    = \SWFU@Gender,    Gender/.default    = 男,
  Birth/.store in     = \SWFU@Birth,     Birth/.default     = 1969-03,
  Political/.store in = \SWFU@Political, Political/.default = 群众,
  Title/.store in     = \SWFU@Title,     Title/.default     = 讲师,
  Degree/.store in    = \SWFU@Degree,    Degree/.default    = 硕士,
  Job/.store in       = \SWFU@Job,       Job/.default       = 教学,
}

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
    {\LARGE\heiti 西南林业大学教职工\underline{\ \SWFU@Year\ }年年度考核表}
  \end{center}
  学院/部门：{\SWFU@School}\hfill{}填表时间：
  \SWFU@Year{}年\SWFU@Month{}月\SWFU@Date{}日\\
  \begin{tabu}{|@{}X[c]@{}|@{}X[c]@{}|}\tabucline-
      \tabulinesep=2mm
      \begin{tabu}{c|X[c]|c}
        姓名&{\SWFU@Name}&性别\\
      \end{tabu}&
      \tabulinesep=2mm
      \begin{tabu}{X[c]|c|X[c]}
        {\SWFU@Gender}&出生年月&{\SWFU@Birth}\\
      \end{tabu}\\\tabucline- % end of the first raw
      \tabulinesep=2mm
      \begin{tabu}{c|X[c]@{}}
        政治面貌&{\SWFU@Political}\\\tabucline-
        文化程度&{\SWFU@Degree}\\
      \end{tabu}&
      \tabulinesep=2mm
      \begin{tabu}{c|X[c]}
        职称/职务&{\SWFU@Title}\\\tabucline-
        现从事工作&{\SWFU@Job}\\
      \end{tabu}\\\tabucline-
    \end{tabu} % end of the 3rd raw
    \vspace{-1pt}\tabulinesep=2mm
    \noindent\begin{tabu}{|p{1em}|X|}
      \vspace{4ex} 个人总结\par\rotatebox[origin=c]{270}{（}\par{}
      履行岗位职责情况\par\vspace{-1.5ex}\hfill{}、\par\vspace{1ex}
      工作成果等\par\rotatebox[origin=c]{270}{）}&
      {\footnotesize\kaishu （字数控制在800字以内）}\par\vspace{64ex}
      \hfill\makebox[16em][l]{本人签字：}\par\vspace{2ex}\\\tabucline-
      所在单位考核意见&\par\vspace{14ex}
      \hfill\makebox[16em][l]{签章}\par
      \hfill\makebox[12em][r]{年\hspace{3em}月\hspace{3em}日}\\\tabucline-
      学校考核意见&\par\vspace{9ex}
      \hfill\makebox[16em][l]{签章}\par
      \hfill\makebox[12em][r]{年\hspace{3em}月\hspace{3em}日}\\\tabucline-
    \end{tabu}}

\pagestyle{empty}