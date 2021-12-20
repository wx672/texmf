% 西南林业大学教职工年年度考核表2020版
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfuyearly}

\RequirePackage{pgfkeys}

\pgfkeys{%
  Year/.store in = \SWFU@Year, Year = \the\year,%%
  % Month/.store in = \SWFU@Month, Month = \the\month,%
  Date/.store in = \SWFU@Date, Date = \the\day,%
  School/.store in = \SWFU@School, School = 大数据与智能工程学院,%
  Name/.store in = \SWFU@Name, Name = 王晓林,%
  Gender/.store in = \SWFU@Gender, Gender = 男,%
  Birth/.store in = \SWFU@Birth, Birth = 1969年3月,%
  Political/.store in = \SWFU@Political, Political = 群众,%政治面貌
  Title/.store in = \SWFU@Title, Title = 讲师,%职称/职务
  Degree/.store in = \SWFU@Degree, Degree = 硕士,%学历
  Job/.store in = \SWFU@Job, Job = 教学,%现从事工作
  Sig/.store in = \SWFU@Sig,%  
  Sig = {\includegraphics[width=6em]{../signature}},%
  Sumup/.store in = \SWFU@Sumup,%
  Sumup = {本年度，本人认真完成了《计算机网络》、《操作系统原理》、《Linux应用基础》、
    《Linux应用编程》、《Linux操作系统原理与应用》等课程的教学工作，教学效果良好。同时本人
    认真完成了大智学院教学服务器的维护工作。服务器运行稳定，未发生任何问题。
  师德师风方面，本人认真贯彻执行了党的教育方针，言传身教均符合学校要求。}}

\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ProcessOptions\relax

\LoadClass[scheme=chinese,zihao=-4]{ctexart}

\RequirePackage{tabularray}
\RequirePackage{wx672tcb}

\newcommand{\mkvspace}[2]{\rule{0pt}{#1}\par{}#2\par{}\rule{0pt}{#1}}%\mkvspace{12ex}{text}

\RequirePackage{graphicx}

\RequirePackage[margin=2cm]{geometry}

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
  \noindent{}附件 2:
  \begin{center}
    \LARGE\bfseries 西南林业大学教职工\,\SWFU@Year{}\,年度考核表
  \end{center}
  学院/部门：{\kaishu\SWFU@School}\hfill%
  填表时间：{\kaishu\SWFU@Date}%\par
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
  \begin{Titleleft}[1em]{%
      个人总结\frown 履行岗位职责情况\par\enskip’工作成果\par\enskip’师德师风情况等\smile}
    \begin{minipage}[c][15cm]{.9\linewidth}
      \doublespacing\qquad\kaishu\SWFU@Sumup
    \end{minipage}
    \vfill
    \begin{flushright}
      本人签字：\makebox[3cm][c]{\SWFU@Sig}
    \end{flushright}
  \end{Titleleft}
  \noindent%
  \begin{tblr}{width=\linewidth,colspec={X[c]X[c]X[c]},vlines,hline{1,2},%
      row{1}={1cm,font=\bfseries},row{2}={5cm}}
    所在单位师德师风考核意见&所在单位廉洁自律考核意见&所在单位工作实绩考核意见\\
    &&\\
  \end{tblr}
  \vspace*{-2pt}
  \begin{Titleleft}{所在单位年度考核意见}
    \begin{minipage}[c][3cm]{.9\linewidth}\end{minipage}
    \vfill
    \begin{flushright}
      签章\makebox[5cm][l]{}\par%
      \makebox[6cm][r]{年\hspace{1cm}月\hspace{1cm}日}
    \end{flushright}
  \end{Titleleft}
  \begin{Titleleft}{个人 确认 年度 考核 结果}
    \begin{minipage}[c][3cm]{.9\linewidth}\end{minipage}
    \vfill
    \begin{flushright}
      签字\makebox[5cm][c]{\SWFU@Sig}\par%
      {\purisa\SWFU@Date}
    \end{flushright}
  \end{Titleleft}
  \begin{Titleleft}[1em]{学校考核意见}
    \begin{minipage}[c][3cm]{.9\linewidth}\end{minipage}
    \vfill
    \begin{flushright}
      签章\makebox[5cm][l]{}\par%
      \makebox[6cm][r]{年\hspace{1cm}月\hspace{1cm}日}
    \end{flushright}
  \end{Titleleft}
  \par\medskip\noindent
  备注：A4纸双面打印}

\pagestyle{empty}