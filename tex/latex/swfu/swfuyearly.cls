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

\RequirePackage{tabularx,makecell}
\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}} % for centering p column
\newcolumntype{M}[1]{>{\centering\arraybackslash}m{#1}} % for centering p column
\newcolumntype{C}{>{\centering\arraybackslash}X}
\renewcommand{\arraystretch}{1.5}

\newcommand{\mkvspace}[2]{\rule{0pt}{#1}\par{}#2\par{}\rule{0pt}{#1}}%\mkvspace{12ex}{text}

\RequirePackage{graphicx}
\RequirePackage{amssymb}% \smallsmile, \smallfrown
\RequirePackage[% showframe,
paperwidth=195mm, paperheight=270mm,
top=2cm, bottom=2cm,
left=2.5cm, right=2.5cm,
]{geometry}

\RequirePackage{tikz}
\usetikzlibrary{backgrounds,positioning,fit}

\newCJKfontfamily\sig{signature}
\newfontfamily\purisa{Purisa}

\newcommand{\makeform}{
  \begin{center}
    \Large\heiti 西南林业大学教职工\,\SWFU@Year{}\,年度考核表
  \end{center}
  学院/部门：{\kaishu\SWFU@School}\par
  \noindent{}填表时间：{\kaishu\SWFU@Year{}年\SWFU@Month{}月\SWFU@Date{}日}\par
  \noindent%
  \begin{tabularx}{\linewidth}{|*{3}{c|>{\kaishu}C|}}
    \hline
    姓名&\SWFU@Name&性别&\SWFU@Gender&出生年月&\SWFU@Birth\\\hline
  \end{tabularx}\\[-1pt]%
  \noindent%
  \begin{tabularx}{\linewidth}{|*{2}{c|>{\kaishu}C|}}
    政治面貌&\SWFU@Political&职称/职务&\SWFU@Title\\\hline
    学历&\SWFU@Degree&现从事工作&\SWFU@Job\\\hline
  \end{tabularx}\\[-1pt]
  \noindent%
  \begin{tabularx}{\linewidth}{|P{2em}|X|}
    \makecell{个\\[-1ex]人\\[-1ex]总\\[-1ex]结\\[-1ex]\frown\\[-1.5ex]%
    履\\[-1ex]行\\[-1ex]岗\\[-1ex]位\\[-1ex]职\\[-1ex]责\\[-1ex]情\\[-1ex]%
    况\\[-1ex]\hspace{1ex}’\\[-1ex]工\\[-1ex]作\\[-1ex]成\\[-1ex]果\\[-1ex]\hspace{1ex}’\\[-1ex]%
    师\\[-1ex]德\\[-1ex]师\\[-1ex]风\\[-1ex]情\\[-1ex]况\\[-1ex]等\\[-1.5ex]\smile}%
    & \begin{minipage}[c][15cm]{\linewidth}
      \qquad\kaishu\SWFU@Sumup
    \end{minipage}\\
    & \hfill{}本人签字：\makebox[3cm][c]{\SWFU@Sig}\\\hline
  \end{tabularx}
  \bigbreak
  \noindent%
  \begin{tabularx}{\linewidth}{|P{2em}|X|}
    \hline
    \makecell{所在\\单位\\师德\\考核\\意见}%
    &\\[-3em]%
    & \hfill{}签章\makebox[5cm][l]{}\par%
      \hfill\makebox[6cm][r]{年\hspace{1cm}月\hspace{1cm}日}\\\hline
    \makecell{所在\\单位\\年度\\考核\\意见}
    &\\[-3em]
    & \hfill{}签章\makebox[5cm][l]{}\par%
      \hfill\makebox[6cm][r]{年\hspace{1cm}月\hspace{1cm}日}\\\hline
    \makecell{个人\\确认\\师德\\考核\\和年\\度考\\核结\\果}
    &\\[-6em]
    & \hfill\makebox[5cm][c]{\SWFU@Sig}\\[-3ex]
    & \hfill{}签章\makebox[5cm][l]{}\\[-1ex]
    & \hfill\makebox[6cm][r]{{\purisa\SWFU@Year}年%
      \makebox[1cm]{\purisa\SWFU@Month}月%
      \makebox[1cm]{\purisa\SWFU@Date}日}\\\hline%
    \makecell{\,\\学\\校\\考\\核\\意\\见}
    &\\[-2em]
    & \hfill{}签章\makebox[5cm][l]{}\\[-1ex]
    & \hfill\makebox[6cm][r]{年\hspace{1cm}月\hspace{1cm}日}\\\hline
  \end{tabularx}\\
  \noindent{}备注：A4纸双面打印}

\pagestyle{empty}