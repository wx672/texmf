% 西南林业大学教职工年年度考核表2020版
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfuyearly}

\RequirePackage{pgfkeys}

\pgfkeys{%
  Year/.store in = \SWFU@Year,%
  Month/.store in = \SWFU@Month,%
  Date/.store in = \SWFU@Date,%
  School/.store in = \SWFU@School,%
  Name/.store in = \SWFU@Name,%
  Gender/.store in = \SWFU@Gender,%
  Birth/.store in = \SWFU@Birth,%
  Political/.store in = \SWFU@Political,%政治面貌
  Title/.store in = \SWFU@Title,%职称/职务
  Degree/.store in = \SWFU@Degree,%学历
  Job/.store in = \SWFU@Job,%现从事工作
  Sumup/.store in = \SWFU@Sumup,%
  Sig/.store in = \SWFU@Sig, Year = 2020,%
  Month = 12,%
  Date = 4,%
  School = 大数据与智能工程学院,%
  Name = 王晓林,%
  Gender = 男,%
  Birth = 1969年3月,%
  Political = 群众,%
  Title = 讲师,%
  Degree = 硕士,%
  Job = 教学,%
  Sig = {\includegraphics[width=6em]{../signature}},%
  Sumup = {本年度，本人认真完成了《计算机网络》、《操作系统原理》、《Linux应用基础》、
    《Linux应用编程》、《Linux操作系统原理与应用》等课程的教学工作，教学效果良好。同时本人
    认真完成了大智学院教学服务器的维护工作。服务器运行稳定，未发生任何问题。
  师德师风方面，本人认真贯彻执行了党的教育方针，言传身教均符合学校要求。}}

\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ProcessOptions\relax

\LoadClass[scheme=chinese,zihao=-4]{ctexart}

\RequirePackage{tabularray}

\newcommand{\mkvspace}[2]{\rule{0pt}{#1}\par{}#2\par{}\rule{0pt}{#1}}%\mkvspace{12ex}{text}

\RequirePackage{graphicx}

\RequirePackage[% showframe,
paperwidth=195mm, paperheight=270mm,
top=2cm, bottom=2cm,
left=2.5cm, right=2.5cm,
]{geometry}

%%%%% setspace (\singlespacing, \onehalfspacing, \doublespacing)
\RequirePackage[singlespacing]{setspace}
\renewcommand{\singlespacing}{\setstretch{1}}
\renewcommand{\doublespacing}{\setstretch{1.5}}

% \RequirePackage{tikz}
% \usetikzlibrary{backgrounds,positioning,fit}

\RequirePackage{amssymb}% \smallsmile, \smallfrown
\newCJKfontfamily\sig{signature}
\newfontfamily\purisa{Purisa}

\newcommand{\makeform}{
  \begin{center}
    \Large\heiti 西南林业大学教职工\,\SWFU@Year{}\,年度考核表
  \end{center}
  \begin{doublespace}
    学院/部门：{\kaishu\SWFU@School}\par
    \noindent{}填表时间：{\kaishu\SWFU@Year{}年\SWFU@Month{}月\SWFU@Date{}日}%\par
  \end{doublespace}
  \noindent%
  \begin{tblr}{width=\linewidth, hlines, vlines, rows={2em},%
      colspec={cX[c]cX[c]cX[c]}, column{even}={font=\kaishu},
    }
    姓名&\SWFU@Name&性别&\SWFU@Gender&出生年月&\SWFU@Birth\\
  \end{tblr}\\[-1pt]%
  \noindent%
  \begin{tblr}{width=\linewidth, hline{2}, vlines, rows={2em}, colspec={cX[c]cX[c]},%
      column{even}={font=\kaishu}}
    政治面貌&\SWFU@Political&职称/职务&\SWFU@Title\\
    学历&\SWFU@Degree&现从事工作&\SWFU@Job\\
  \end{tblr}\\[-1pt]
  \noindent%
  \begin{tblr}{width=\linewidth, hline{1,Z}, vlines, colspec={Q[2em,c]X}}
    \begin{minipage}{1em}
      {\centering\singlespacing
        个人总结\frown 履行岗位职责情况\par\enskip’工作成果\par\enskip’师德师风情况等\smile}%
    \end{minipage}    
    & \begin{minipage}[c][15cm]{\linewidth}
      \doublespacing\qquad\kaishu\SWFU@Sumup
    \end{minipage}\\
    & \hfill{}本人签字：\makebox[3cm][c]{\SWFU@Sig}\\
  \end{tblr}
  \bigbreak
  \noindent%
  \begin{tblr}{width=\linewidth, hline{1,3,5,7,Z}, vlines, colspec={Q[2em,c]X},
      row{1,3,5,7}={abovesep+=2em,belowsep+=-1em},
      cell{5}{2}={f}
    }
    {所在\\单位\\师德\\考核\\意见}&\\%r1
    & \hfill{}签章\makebox[5cm][l]{}\par%
    \hfill\makebox[6cm][r]{年\hspace{1cm}月\hspace{1cm}日}\\%r2
    {所在\\单位\\年度\\考核\\意见}&\\%r3
    & \hfill{}签章\makebox[5cm][l]{}\par%
    \hfill\makebox[6cm][r]{年\hspace{1cm}月\hspace{1cm}日}\\%r4
    {个人\\确认\\师德\\考核\\和年\\度考\\核结\\果}%
    & \hfill\makebox[5cm][c]{\SWFU@Sig}\\%r5
    & \hfill{}签章\makebox[5cm][l]{}\par%
    \hfill\makebox[6cm][r]{{\purisa\SWFU@Year}年%
      \makebox[1cm]{\purisa\SWFU@Month}月%
      \makebox[1cm]{\purisa\SWFU@Date}日}\\%r6
    {学\\校\\考\\核\\意\\见}&\\%r7
    & \hfill{}签章\makebox[5cm][l]{}\\%r8
    & \hfill\makebox[6cm][r]{年\hspace{1cm}月\hspace{1cm}日}\\%r9
  \end{tblr}\par\noindent%
  备注：A4纸双面打印}

\pagestyle{empty}