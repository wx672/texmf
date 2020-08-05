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

\LoadClass[scheme=plain]{ctexart}

\RequirePackage{tabularx}
\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}} % for centering p column
\newcolumntype{M}[1]{>{\centering\arraybackslash}m{#1}} % for centering p column
\newcolumntype{C}{>{\centering\arraybackslash}X}
\renewcommand{\arraystretch}{1.5}

\newcommand{\mkvspace}[2]{\rule{0pt}{#1}\par{}#2\par{}\rule{0pt}{#1}}%\mkvspace{12ex}{text}

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

\newcommand{\makeform}{
  \begin{center}
    \LARGE\heiti 西南林业大学教职工\,\SWFU@Year\,年度考核表
  \end{center}
  学院/部门：{\kaishu\SWFU@School}\hfill{}%
  填表时间：{\kaishu\SWFU@Year{}年\SWFU@Month{}月\SWFU@Date{}日}\par
  \noindent\begin{tabularx}{\linewidth}{|c|>{\kaishu}C|c|>{\kaishu}C|c|>{\kaishu}C|}
    \hline
    姓名&\SWFU@Name&性别&\SWFU@Gender&出生年月&\SWFU@Birth\\\hline
  \end{tabularx}\\[-1pt]%
  \noindent\begin{tabularx}{\linewidth}{|c|>{\kaishu}C|c|>{\kaishu}C|}
    政治面貌&\SWFU@Political&职称/职务&\SWFU@Title\\\hline
    学历&\SWFU@Degree&现从事工作&\SWFU@Job\\\hline
  \end{tabularx}\\[-1pt]
  \noindent%
  \begin{tabularx}{\linewidth}{|P{2em}|X|}
    \mkvspace{20ex}{%
    \parbox{1em}{\linespread{1}\centering% 
    个人总结\par\rotatebox[origin=c]{270}{（}\par{}
    履行岗位职责情况\par\vspace{-1.5ex}\hfill{}、\par\vspace{1ex}
    工作成果\par\vspace{-1.5ex}\hfill{}、\par\vspace{1ex}
    师德师风情况等\par\rotatebox[origin=c]{270}{）}}}
    &\kaishu\SWFU@Sumup\\%[-5em]
    & \hfill\makebox[16em][l]{本人签字：{\SWFU@Sig}}\\\hline
  \end{tabularx}
  \clearpage%
  \noindent%
  \begin{tabularx}{\linewidth}{|P{2em}|X|}
    \hline
    \mkvspace{10ex}{所在单位师德考核意见} &\\[-3em]
                                     & \hfill\makebox[16em][l]{签章}\par
                                       \hfill\makebox[12em][r]{年\hspace{3em}月\hspace{3em}日}\\\hline
    \mkvspace{10ex}{所在单位年度考核意见} &\\[-3em]
                                     & \hfill\makebox[16em][l]{签章}\par
                                       \hfill\makebox[12em][r]{年\hspace{3em}月\hspace{3em}日}\\\hline
    \mkvspace{4ex}{个人确认师德考核和年度考核结 果} &\\[-7em]
                                     & \hfill\makebox[12em][l]{\SWFU@Sig}\\
                                     & \hfill\makebox[16em][l]{签章}\\[-1ex]
                                     & \hfill\makebox[12em][r]{{\purisa\SWFU@Year}年%
                                       \makebox[3em]{\purisa\SWFU@Month}月\makebox[3em]{\purisa\SWFU@Date}日}\\\hline%
    \mkvspace{10ex}{%
    \parbox{1em}{\linespread{1}\centering%
    学校考核意见}}&\\[-3em]
                                     & \hfill\makebox[16em][l]{签章}\\[-1ex]
                                     & \hfill\makebox[12em][r]{年\hspace{3em}月\hspace{3em}日}\\\hline
  \end{tabularx}\\
\noindent{}备注：A4纸双面打印}

\pagestyle{empty}