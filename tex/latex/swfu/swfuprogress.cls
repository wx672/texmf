% 西南林业大学教学进程（理论教学）计划表
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfuprogress}

\RequirePackage{ifxetex} % XeTeX only

\RequirePackage{pgfkeys}

\pgfkeys{%
  Coursetitle/.store in = \SWFU@Coursetitle,% 课程名称
  Term/.store in        = \SWFU@Term,       % 学年度
  Hours/.store in       = \SWFU@Hours,      % 讲课、实验学时（标签）
  Thours/.store in      = \SWFU@Thours, Thours=,  % 讲课小时数
  Lhours/.store in      = \SWFU@Lhours, Lhours=,  % 实验小时数
  TLtitle/.store in     = \SWFU@TLtitle,TLtitle=, % 理论/实验（标题）
  TLlabel/.store in     = \SWFU@TLlabel,TLlabel=, % 理论/实验（附注）
  Chkbox/.store in      = \SWFU@Chkbox, Chkbox=,  % 本科、专科
  Signature/.store in   = \SWFU@Signature,        % 任课教师签名
  WKa/.store in    = \SWFU@WKa, WKa=,% 课程内容
  WKb/.store in    = \SWFU@WKb, WKb=,%
  WKc/.store in    = \SWFU@WKc, WKc=,%
  WKd/.store in    = \SWFU@WKd, WKd=,%
  WKe/.store in    = \SWFU@WKe, WKe=,%
  WKf/.store in    = \SWFU@WKf, WKf=,%
  WKg/.store in    = \SWFU@WKg, WKg=,%
  WKh/.store in    = \SWFU@WKh, WKh=,%
  WKi/.store in    = \SWFU@WKi, WKi=,%
  WKj/.store in    = \SWFU@WKj, WKj=,%
  WKk/.store in    = \SWFU@WKk, WKk=,%
  WKl/.store in    = \SWFU@WKl, WKl=,%
  WKm/.store in    = \SWFU@WKm, WKm=,%
  WKn/.store in    = \SWFU@WKn, WKn=,%
  WKo/.store in    = \SWFU@WKo, WKo=,%
  WKp/.store in    = \SWFU@WKp, WKp=,%
  WKq/.store in    = \SWFU@WKq, WKq=,%
  WKr/.store in    = \SWFU@WKr, WKr=,%
  WKs/.store in    = \SWFU@WKs, WKs=,%
  WKt/.store in    = \SWFU@WKt, WKt=,%
  WKu/.store in    = \SWFU@WKu, WKu=,%
  WKv/.store in    = \SWFU@WKv, WKv=,%
  WKw/.store in    = \SWFU@WKw, WKw=,%
  WKx/.store in    = \SWFU@WKx, WKx=,%
  Bigtable/.store in    = \SWFU@Bigtable, % 大表
  T/.style = {% 理论教学计划表
    TLtitle = 理论教学, TLlabel = 实验,%
    Hours = {讲课学时：\underline{\quad\texttt{\SWFU@Thours}\quad}\hspace{8em}%
      实验学时：\underline{\quad\texttt{\SWFU@Lhours}\quad}},%
    Thours = 48, Lhours = 16,%
    Chkbox = {本科\,\checked\quad{}专科\,\unchecked},%
    Bigtable = {%
    \begin{tabularx}{\linewidth}{|c|>{\ttfamily}X|c|>{\ttfamily}X|}\hline%
      \normalfont{课次}& \multicolumn{1}{c|}{\normalfont{课程内容}}&
      \normalfont{课次}& \multicolumn{1}{c|}{\normalfont{课程内容}}\\\hline%
      1&\SWFU@WKa&21&\SWFU@WKu\\\hline%
      2&\SWFU@WKb&22&\SWFU@WKv\\\hline%
      3&\SWFU@WKc&23&\SWFU@WKw\\\hline%
      4&\SWFU@WKd&24&\SWFU@WKx\\\hline%
      5&\SWFU@WKe&25&\\\hline%
      6&\SWFU@WKf&26&\\\hline%
      7&\SWFU@WKg&27&\\\hline%
      8&\SWFU@WKh&28&\\\hline%
      9&\SWFU@WKi&29&\\\hline%
      10&\SWFU@WKj&30&\\\hline%
      11&\SWFU@WKk&31&\\\hline%
      12&\SWFU@WKl&32&\\\hline%
      13&\SWFU@WKm&33&\\\hline%
      14&\SWFU@WKn&34&\\\hline%
      15&\SWFU@WKo&35&\\\hline%
      16&\SWFU@WKp&36&\\\hline%
      17&\SWFU@WKq&37&\\\hline%
      18&\SWFU@WKr&38&\\\hline%
      19&\SWFU@WKs&39&\\\hline%
      20&\SWFU@WKt&40&\\\hline%
    \end{tabularx}}},%
L/.style = {% 实验教学计划表
  TLtitle = 实验教学, TLlabel = 理论教学,%
  Hours=, Thours=, Lhours=,Chkbox=,%
  Bigtable = {%
    \begin{tabularx}{\linewidth}{|c|>{\ttfamily}X|}\hline%
      \normalfont{课次}& \multicolumn{1}{c|}{\normalfont{实验内容}}\\\hline%
      1&\SWFU@WKa\\\hline %
      2&\SWFU@WKb\\\hline%
      3&\SWFU@WKc\\\hline%
      4&\SWFU@WKd\\\hline%
      5&\SWFU@WKe\\\hline%
      6&\SWFU@WKf\\\hline%
      7&\SWFU@WKg\\\hline%
      8&\SWFU@WKh\\\hline%
      9&\SWFU@WKi\\\hline%
      10&\SWFU@WKj\\\hline%
      11&\SWFU@WKk\\\hline%
      12&\SWFU@WKl\\\hline%
      13&\SWFU@WKm\\\hline%
      14&\SWFU@WKn\\\hline%
      15&\SWFU@WKo\\\hline%
      16&\SWFU@WKp\\\hline%
      17&\SWFU@WKq\\\hline%
      18&\SWFU@WKr\\\hline%
      19&\SWFU@WKs\\\hline%
      20&\SWFU@WKt\\\hline%
    \end{tabularx}}}}

\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ProcessOptions\relax

\LoadClass[scheme=plain]{ctexart}

\RequirePackage{graphicx,tabularx}

\newcolumntype{C}{>{\centering\arraybackslash}X}
\newcolumntype{M}[1]{>{\centering\arraybackslash}m{#1}} % centering m column
\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}} % centering p column
\renewcommand{\arraystretch}{1.8}

\RequirePackage[%showframe,
paperwidth=210mm,paperheight=297mm,
margin=2.5cm]{geometry}

%\renewcommand{\arraystretch}{1.5} % make table row higher

\newfontfamily\dejavu{DejaVu Sans Mono}
\newcommand\unchecked{{\dejavu □}}%ballot box
\newcommand\checked{{\large\dejavu ☑}} %🗹

\newcommand{\makeform}{\pagestyle{empty}
  \begin{center}
    {\LARGE\heiti 西南林业大学教学进程（\SWFU@TLtitle{}）计划表}
  \end{center}
  学\hspace{.5em}年\hspace{.5em}度：\underline{\quad\texttt{\SWFU@Term}\quad}\par
  课程名称：\underline{\quad\kaishu\SWFU@Coursetitle\quad}\hfill\SWFU@Chkbox\par
  \SWFU@Hours\par
  \SWFU@Bigtable
  \vspace{-1pt}
  \begin{tabularx}{\linewidth}{|l|X|}
    任课教师签名：&教研室意见：\\
    \SWFU@Signature&\vspace{3ex}
    \hfill{}\makebox[18em][l]{教研室负责人签名：}\par\vspace{1ex}
    \hfill{}年\hspace{3em}月\hspace{3em}日\\\hline
  \end{tabularx}\vspace{-1pt}
  \begin{tabularx}{\linewidth}{@{}lr@{.\,}X}
    注：&1&本表一式三份，教研室、分院（系、部）、教务科各一份；\\[-1ex]
    &2&有\SWFU@TLlabel{}学时的教师请填写《教学进程（\SWFU@TLlabel{}）计划表》，一式三份；\\[-1ex]
    &3&请在接受教学任务后，于当学期第20周前交回。
  \end{tabularx}}

\setlength{\parindent}{0pt}
