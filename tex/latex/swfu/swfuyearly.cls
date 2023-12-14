% 西南林业大学教职工年年度考核表2020版
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfuyearly}

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
  Years/.store in = \SWFU@Years, Years = 19年,%现岗位聘用时间
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
  Sig = {\includegraphics[width=6em]{../signature}},%
  Sumup/.store in = \SWFU@Sumup,%
  Sumup = {本年度，本人认真完成了《计算机网络》、《操作系统原理》、
    《Linux应用基础》等课程的教学工作，教学效果良好。同时本人认真完成了
    大智学院教学服务器的维护工作。服务器运行稳定，未发生任何问题。师德
    师风方面，本人认真贯彻执行了党的教育方针，言传身教均符合学校要求。}}

\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ProcessOptions\relax

\LoadClass[scheme=chinese]{ctexart}

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
  \begin{center}
    \Large\heiti 西南林业大学\,\SWFU@Year{}\,年教职工年度考核登记表 \\
    \Large\heiti （专业技术岗位）
  \end{center}
  单位（部门）：{\kaishu\underline{\,\SWFU@School\,}}\hfill\par\smallskip%
  \noindent%
  \begin{tblr}{width=\linewidth, hline{1-4}={solid}, vlines, rows={2em,m},%
      colspec={cX[c]cX[c]cX[c]cX[c]cX[c]},%
      column{even}={font=\kaishu},%
      cell{2}{2,8}={c=3}{c},%
      cell{3,4}{1}={c=2}{c},%
      cell{3}{3}={c=3}{c},%
      cell{3}{7}={c=4}{c},%
      cell{4}{3}={c=8}{c}%
    }
    % 姓名&\SWFU@Name&{岗位\\等级}&\SWFU@Level&专业技术职务&\SWFU@Job\\
    姓名&\SWFU@Name&性别&\SWFU@Gender&政治面貌&\SWFU@Political&出生年
    月&\SWFU@Birth&{岗位\\等级}&\SWFU@Level\\
    {专业技\\术职务}&\SWFU@Post&&&{是否担任\\研究生导
      师}&\SWFU@MScTutor&{担任班\\主任情况}&\SWFU@Tutor&&\\
    现岗位聘用时间&&\SWFU@Years&&&从事工作&\SWFU@Job&&&\\
    社会兼职工作&&\SWFU@Parttime&&&&&&&\\
  \end{tblr}\\[-2pt]%
  % \noindent%
  % \begin{tblr}{width=\linewidth, hline{2}, vlines, rows={2em},%
  %     colspec={cX[c]cX[c]},%
  %     cell{2}{2}={c=3}{c},%
  %     column{even}={font=\kaishu}}
  %   是否担任研究生导师&\SWFU@MScTutor&担任班主任情况&\SWFU@Tutor\\
  %   社会兼职工作&\SWFU@Parttime\\
  % \end{tblr}\\[-1pt]
  \noindent%
  \begin{Titleleft}{履行岗位职责取得成果及其他业绩情况800字}
    \begin{minipage}[c][15cm]{.9\linewidth}
      % (重点围绕思想政治表现、教书育人、意识形态、师德师风等情况，实际承
      % 担和完成岗位任务的情况，在专业建设、课程建设、创新创业教育等本科
      % 教育教学工作中的成果和贡献，参加集体活动等情况。)
      % \vfill
      \doublespacing\qquad\kaishu\SWFU@Sumup
    \end{minipage}
  \end{Titleleft}
  \noindent%
  \begin{tblr}{colspec={X[c]X[c]X[c]},vlines,hline{1,2,3,4},%
      rows={m},row{1}={1cm,font=\bfseries},%
      cell{4}{2}={c=2}{c}%
    }%
    项目&个人填写&单位填写\\
    {教学工作量（标准学时）}&\SWFU@TLoad&\\
    {科研工作量（科研积分）}&\SWFU@RLoad&\\
    参加培训情况&\SWFU@Train&\\
  \end{tblr}
  \vspace*{-2pt}
  \begin{Titleleft}{师德考核结果}
    \noindent%
    考核等次（如为不合格需写明具体事由，可另附页）：
    \begin{minipage}[t][25mm]{\linewidth}%      
    \end{minipage}
    \vfill
    \begin{flushright}
      基层党组织负责人（签字或盖章）：\makebox[5cm]{}\par\bigskip%
      （基层党组织公章）\makebox[6cm]{}\par\bigskip%
      \makebox[6cm][r]{年\hspace{1cm}月\hspace{1cm}日}
    \end{flushright}
  \end{Titleleft}
  \begin{Titleleft}{综合 考核 结果}
    \noindent%
    考核等次：
    \begin{minipage}[t][25mm]{\linewidth}%
    \end{minipage}
    \vfill
    \begin{flushright}
      单位或部门领导（签字或盖章）：\makebox[5cm]{}\par\bigskip%
      （单位或部门公章）\makebox[6cm]{}\par\bigskip%
      \makebox[6cm][r]{年\hspace{1cm}月\hspace{1cm}日}
    \end{flushright}
  \end{Titleleft}
  \vskip 1pt%
  \noindent%
  \begin{tblr}{colspec={c|X|c|X},rowspec={Q[m]},vlines}%,hline{Z}
    {被\\考\\核\\人\\意\\见} &%
    \begin{minipage}[c][3.5cm]{\linewidth}
      确认考核结果。\par
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
  \begin{Titleleft}{需要 说明 情况}
    \begin{minipage}[t][1cm]{\linewidth}%
    \end{minipage}
    \vfill
    \begin{flushright}
      盖章或签字：\makebox[6cm]{}\par\bigskip%
      \makebox[6cm][r]{年\hspace{1cm}月\hspace{1cm}日}
    \end{flushright}
  \end{Titleleft}
  %\par\medskip
  \noindent
  \begin{tblr}{colspec={cX},colsep=0pt}
    注：&
    \begin{minipage}[t][\parskip][t]{1.0\linewidth}
      \begin{enumerate}
      \item 本表为存档材料，请用 A4 纸正反面打印或蓝黑笔填写。
      \item 师德考核等次分为合格、不合格，由单位（部门）填写。
      \item 教学工作量为标准学时不乘系数，科研工作量按照当年的科研计分
        计算办法进行计算。
      \item 年度考核综合考核结果分为优秀、合格、基本合格、不合格，教职
        工由单位（部门）填写。
      \end{enumerate}
    \end{minipage}\\
  \end{tblr}
}

\pagestyle{empty}