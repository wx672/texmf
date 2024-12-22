% 西南林业大学教职工年年度考核表2020版
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfuyearly}

\RequirePackage{calc,etoolbox}
\newcounter{years}
\defcounter{years}{\the\year - 2004} %现岗位聘用时间

\RequirePackage{pgfkeys}

\pgfkeys{%
  Year/.store in = \SWFU@Year, Year = \the\year,%%
  % Month/.store in = \SWFU@Month, Month = \the\month,%
  Date/.store in = \SWFU@Date, Date = \the\day,%
  School/.store in = \SWFU@School, School = 大数据与智能工程学院,%
  Name/.store in = \SWFU@Name, Name = 王晓林,%姓名
  Level/.store in = \SWFU@Level, Level = 专业技术9级,%岗位等级
  Post/.store in = \SWFU@Post, Post = 专职教师,%专业技术职务
  Job/.store in = \SWFU@Job, Job = 教学,%从事工作
  MScTutor/.store in = \SWFU@MScTutor, MScTutor = 否,%是否担任研究生导师
  Tutor/.store in = \SWFU@Tutor, Tutor = 否,%担任班主任情况
  Years/.store in = \SWFU@Years, Years = \arabic{years}年,%现岗位聘用时间
  Parttime/.store in = \SWFU@Parttime, Parttime = 无,%社会兼职工作
  TLoad/.store in = \SWFU@TLoad, TLoad = ,%教学工作量（标准学时/教学积分）
  RLoad/.store in = \SWFU@RLoad, RLoad = ,%科研工作量（科研积分）
  Gender/.store in = \SWFU@Gender, Gender = 男,%
  Birth/.store in = \SWFU@Birth, Birth = 1969年3月,%
  Political/.store in = \SWFU@Political, Political = 群众,%政治面貌
  Train/.store in = \SWFU@Train, Train = 无,%参加培训情况
  % Title/.store in = \SWFU@Title, Title = 讲师,%职称/职务
  % Degree/.store in = \SWFU@Degree, Degree = 硕士,%学历
  Sig/.store in = \SWFU@Sig,%
  Sig = {\includegraphics[width=3cm]{wangxiaolin}},%
  Sumup/.store in = \SWFU@Sumup,%
  Sumup = {本年度，本人认真完成了《计算机网络》、《操作系统原理》、
    《Linux应用基础》等课程的教学工作，教学效果良好。同时本人认真完成了
    大智学院教学服务器的维护工作。服务器运行稳定，未发生任何问题。师德
    师风方面，本人认真贯彻执行了党的教育方针，言传身教均符合学校要求。}}

\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}%ctexart
\ProcessOptions\relax

\LoadClass{article}%[scheme=chinese]{ctexart}

\RequirePackage{wx672babel}
\RequirePackage{tabularray}
\RequirePackage[most]{tcolorbox}
\usetikzlibrary{calc}
\RequirePackage{enumitem}
\setlist{itemsep=-2pt}

\tcbset{%show bounding box,%
  enhanced, breakable, sharp corners, nobeforeafter,%
  colback=white, coltitle=black, colbacktitle=white, colframe=black,%
  bottomrule=.2pt, after skip=-1.5pt,%bottomrule at break=.5pt,
  before upper={\parindent 2em},%
  overlay middle={%
    \draw[line width=.2pt] (frame.north west)--(frame.north east);
    \draw[line width=.2pt] (frame.south west)--(frame.south east);%
  },%
  overlay last={%
    \draw[line width=.2pt] (frame.north west)--(frame.north east);},%
}

\newtcolorbox{Titleleft}[2][10cm]{% 
  height=#1,frame hidden, left=40pt, lower separated=false,%
  borderline={.4pt}{0pt}{black},% vlines
  borderline west={.4pt}{32pt}{black},% 2nd left vline
  overlay unbroken and first={%
    \node[anchor=center, text width=2em, font=\bfseries] at ($(frame.west)+(16pt,0)$) {#2};
    \draw[line width=.2pt] (frame.south west)--(frame.south east);% bottom hline
  },%
}

\newcommand{\mkvspace}[2]{\rule{0pt}{#1}\par{}#2\par{}\rule{0pt}{#1}}%\mkvspace{12ex}{text}

\RequirePackage{graphicx}

\RequirePackage[margin=2cm]{geometry}%,showframe

%%%%% setspace (\singlespacing, \onehalfspacing, \doublespacing)
\RequirePackage[singlespacing]{setspace}
\renewcommand{\singlespacing}{\setstretch{1.2}}
\renewcommand{\doublespacing}{\setstretch{1.5}}

% \RequirePackage{tikz}
% \usetikzlibrary{backgrounds,positioning,fit}

\RequirePackage{amssymb}% \smallsmile, \smallfrown
% \newCJKfontfamily\sig{signature}
% \newfontfamily\purisa{Purisa}

\newcommand{\makeform}{
  \begin{center}
    \Large\heifamily 西南林业大学\,\SWFU@Year{}\,年教职工年度考核登记表 \\
    \Large\heifamily （专业技术岗位）
  \end{center}
  单位（部门）：{\kaifamily\underline{\,\SWFU@School\,}}\hfill\par\smallskip%
  \noindent%
  \begin{tblr}{hline{1-4}, vlines, rows={2em,m},%
      colspec={cX[c]cX[c]cX[c]cX[c]cX[c]},%
      column{even}={font=\kaifamily},%
      cell{2}{2,8}={c=3}{c},%
      cell{3,4}{1}={c=2}{c},%
      cell{3}{3}={c=3}{c},%
      cell{3}{7}={c=4}{c},%
      cell{4}{3}={c=8}{c}%
    }
    % 姓名&\SWFU@Name&{岗位\\等级}&\SWFU@Level&专业技术职务&\SWFU@Job\\
    姓名&\SWFU@Name&性别&\SWFU@Gender&政治面貌&\SWFU@Political&%
    出生年月&\SWFU@Birth&{岗位\\等级}&\SWFU@Level\\
    {专业技\\术职务}&\SWFU@Post&&&%
    {是否担任\\研究生导师}&\SWFU@MScTutor&%
    {担任班\\主任情况}&\SWFU@Tutor&&\\
    现岗位聘用时间&&\SWFU@Years&&&从事工作&\SWFU@Job&&&\\
    社会兼职工作&&\SWFU@Parttime&&&&&&&\\
  \end{tblr}\\[-2pt]%
  \noindent%
  \begin{Titleleft}[18cm]{履行岗位职责取得成果及其他业绩情况800字}
    \noindent{}(重点围绕思想政治表现、教书育人、意识形态、师德师风等情况，实际承
    担和完成岗位任务的情况，在专业建设、课程建设、创新创业教育等本科
    教育教学工作中的成果和贡献，参加集体活动等情况。)
    \tcblower
    % \begin{minipage}[c][12.4cm]{.9\linewidth}
      % \vfill
      \doublespacing\qquad\kaifamily\SWFU@Sumup
    % \end{minipage}
  \end{Titleleft}
  \clearpage
  \noindent%
  \begin{tblr}{colspec={X[c]X[c]X[c]},vlines,hline{1,2,3,4},%
      rows={m},row{1}={font=\bfseries},%
      cell{4}{2}={c=2}{c}%
    }%
    项目&个人填写&单位填写\\
    {教学工作量（标准学时）}&\SWFU@TLoad&\\
    {科研工作量（科研积分）}&\SWFU@RLoad&\\
    参加培训情况&\SWFU@Train&\\
  \end{tblr}
  \vspace*{-2pt}
  \begin{Titleleft}[4cm]{师德考核结果}
    \noindent%
    考核等次（如为不合格需写明具体事由，可另附页）：\par\vspace*{15mm}
    \begin{flushright}
      基层党组织负责人（签字或盖章）：\makebox[3cm]{}\par\bigskip%
      （基层党组织公章）\makebox[4cm][r]{年\qquad{}月\qquad{}日}
    \end{flushright}
  \end{Titleleft}
  \begin{Titleleft}[4cm]{综合 考核 结果}
    \noindent%
    考核等次：\par\vspace{15mm}
    \begin{flushright}
      单位或部门领导（签字或盖章）：\makebox[3cm]{}\par\bigskip%
      （单位或部门公章）\makebox[4cm][r]{年\qquad{}月\qquad{}日}
    \end{flushright}
  \end{Titleleft}
  \vskip 1pt%
  \noindent%
  \begin{tblr}{colspec={c|X|c|X},column{1}={2em},rowspec={Q[m]},vlines}%
    {被\\考\\核\\人\\意\\见} &%
    \begin{minipage}[c][3.5cm]{\linewidth}
      {\kaifamily\large 已确认考核结果。}\par
      \vfill%
      \hspace{6em}本人签字：\quad\SWFU@Sig\par\bigskip%
      \hfill\SWFU@Date%{}年\qquad{}月\qquad{}日%
    \end{minipage}&%
    {复\\核\\意\\见} &%
    \begin{minipage}[c][3.5cm]{\linewidth}
      \vfill%
      \hspace{6em}人事处（公章）：\par\bigskip%
      \hfill\makebox[6cm][r]{年\hspace{1cm}月\hspace{1cm}日}
    \end{minipage}\\
  \end{tblr}
  \vspace*{-2pt}
  \begin{Titleleft}[3cm]{需要 说明 情况}
    \vspace*{22mm}
    \begin{flushright}
      盖章或签字：\makebox[6cm][r]{年\qquad{}月\qquad{}日}
    \end{flushright}
  \end{Titleleft}
  % \noindent
  \begin{tcolorbox}[sidebyside,sidebyside gap=1em,sidebyside align=top,%
    left=-2em,lower separated=false,%
    lefthand width=0pt,frame hidden]%
    \noindent{}注：
    \tcblower
    \begin{enumerate}
    \item 本表为存档材料，请用 A4 纸正反面打印或蓝黑笔填写。
    \item 师德考核等次分为合格、不合格，由单位（部门）填写。
    \item 教学工作量为标准学时不乘系数，科研工作量按照当年的科研计分计
      算办法进行计算。
    \item 年度考核综合考核结果分为优秀、合格、基本合格、不合格，教职工
      由单位（部门）填写。
    \end{enumerate}
  \end{tcolorbox}
  % \begin{tblr}{colspec={cX},colsep=0pt,row{1}={abovesep=5pt}}
  %   注：&
  %   \begin{minipage}[t][\parskip][t]{1.0\linewidth}
  %     \begin{enumerate}
  %     \item 本表为存档材料，请用 A4 纸正反面打印或蓝黑笔填写。
  %     \item 师德考核等次分为合格、不合格，由单位（部门）填写。
  %     \item 教学工作量为标准学时不乘系数，科研工作量按照当年的科研计分
  %       计算办法进行计算。
  %     \item 年度考核综合考核结果分为优秀、合格、基本合格、不合格，教职
  %       工由单位（部门）填写。
  %     \end{enumerate}
  %   \end{minipage}\\
  % \end{tblr}
}

\pagestyle{empty}
