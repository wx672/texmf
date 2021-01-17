% 西南林业大学本科毕业论文（设计）开题报告、任务书、及实习计划表（学生填写）
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfu3in1}

% pass unknown options to ctexart
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ProcessOptions\relax

\LoadClass[scheme=chinese]{ctexart}

\newfontfamily\dejavu{DejaVu Sans Mono}%
\newcommand\unchecked{{\dejavu □}} %ballot box
\newcommand\checked{{\large\dejavu ☑}} %🗹

\RequirePackage{pgfkeys}

\pgfkeys{%
  Advisora/.store in       = \SWFU@Advisora,       Advisora=,       % 指导教师a
  Advisorb/.store in       = \SWFU@Advisorb,       Advisorb=,       % 指导教师b
  AdvisoraTitle/.store in  = \SWFU@AdvisoraTitle,  AdvisoraTitle=,  % 指导教师a职称
  AdvisorbTitle/.store in  = \SWFU@AdvisorbTitle,  AdvisorbTitle=,  % 指导教师b职称
  AdvisoraSig/.store in    = \SWFU@AdvisoraSig,    AdvisoraSig=,    % 指导教师a签名
  AdvisorbSig/.store in    = \SWFU@AdvisorbSig,    AdvisorbSig=,    % 指导教师b签名
  AdvisoraGender/.store in = \SWFU@AdvisoraGender, AdvisoraGender=, % 指导教师a性别
  AdvisorbGender/.store in = \SWFU@AdvisorbGender, AdvisorbGender=, % 指导教师b性别
  AdvisoraAge/.store in    = \SWFU@AdvisoraAge,    AdvisoraAge=,    % 指导教师a年龄
  AdvisorbAge/.store in    = \SWFU@AdvisorbAge,    AdvisorbAge=,    % 指导教师b年龄
  AdvisoraDegree/.store in = \SWFU@AdvisoraDegree, AdvisoraDegree=, % 指导教师a学位
  AdvisorbDegree/.store in = \SWFU@AdvisorbDegree, AdvisorbDegree=, % 指导教师b学位
  AdvisoraFrom/.store in   = \SWFU@AdvisoraFrom, %（开题报告）指导教师a工作单位
  AdvisorbFrom/.store in   = \SWFU@AdvisorbFrom, %（开题报告）指导教师b工作单位
  AdvisoraFrom = {大数据与智能工程学院},%a
  AdvisorbFrom =,%b  
  Studid/.store in        = \SWFU@Studid,  % 学号
  Subject/.store in       = \SWFU@Subject, % 专业
  Grade/.store in         = \SWFU@Grade,   % 年级
  StudSignature/.store in = \SWFU@StudSignature,%（任务书）学生签名
  StudSignature           = {\includegraphics[width=2cm]{signature}},%
  School/.store in        = \SWFU@School,   %（实习计划表）学生所属学院
  School = {大数据与智能工程学院},%
  Gyear/.store in = \SWFU@Gyear,%（任务书、实习计划表）届
  Year/.store in  = \SWFU@Year, %（开题报告、任务书）填表、签字时间（年）
  Month/.store in = \SWFU@Month,%（开题报告、任务书）填表、签字时间（月）
  Date/.store in  = \SWFU@Date, %（开题报告、任务书）填表、签字时间（日）
  PrjFrmA/.store in  = \SWFU@PrjFrmA, PrjFrmA={\unchecked{}},   %科研项目
  PrjFrmB/.store in  = \SWFU@PrjFrmB, PrjFrmB={\unchecked{}},   %社会实践
  PrjFrmC/.store in  = \SWFU@PrjFrmC, PrjFrmC={\unchecked{}},   %大学生创新创业项目
  PrjFrmD/.store in  = \SWFU@PrjFrmD, PrjFrmD={\unchecked{}},   %其它来源
  PrjTypeA/.store in = \SWFU@PrjTypeA, PrjTypeA={\unchecked{}}, %毕业论文
  PrjTypeB/.store in = \SWFU@PrjTypeB, PrjTypeB={\checked{}},   %毕业设计
  AdvisorComment/.store in = \SWFU@AdvisorComment, %（开题报告）指导教师意见
  PPSLi/.store in  = \SWFU@PPSLi,    %（开题报告）1. 该研究的目的、意义
  PPSLii/.store in = \SWFU@PPSLii,   %（开题报告）2. 国内外研究现状及发展趋势
  BIB/.store in    = \SWFU@BIB,      %（开题报告、任务书）参考文献
  PPSLiv/.store in = \SWFU@PPSLiv,   %（开题报告）4. 该研究的主要内容，重点解决的问题，
                                     %             预期结果或成果
  PPSLv/.store in  = \SWFU@PPSLv,    %（开题报告）5. 拟采取的研究方法或实验方法，步骤，
                                     %             可能出现的技术问题及解决办法
  PPSLvi/.store in = \SWFU@PPSLvi,   %（开题报告）6. 完成该研究已具备的条件  
  TSKwhy/.store in  = \SWFU@TSKwhy,  %（任务书）选题的目的及意义
  TSKwhat/.store in = \SWFU@TSKwhat, %（任务书）学生任务及要求
  TSKwhen/.store in = \SWFU@TSKwhen, %（任务书）进度安排
  Plan/.store in    = \SWFU@Plan,    %（实习计划表）论文工作计划和预期目标摘要
}

\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

\RequirePackage[%showframe,%showcrop,
top=3cm,bottom=2.5cm,left=3cm,right=2.5cm,
nomarginpar,headheight=15pt, % to avoid "headheight too small"
]{geometry}

\RequirePackage{graphicx} % before xltxtra
\graphicspath{{./figs/}{./}{../}} %mind the trailing “/”

\RequirePackage{caption,subcaption}% \captionof{table|figure}{t|f}

\RequirePackage{tabularx,longtable,booktabs,makecell,multicol,multirow,array}
\renewcommand{\arraystretch}{1.5}
\newcolumntype{C}{>{\centering\arraybackslash}X}
\newcolumntype{M}[1]{>{\centering\arraybackslash}m{#1}} % centering m column
\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}} % centering p column

\RequirePackage{indentfirst,enumitem} % \setlist
\setlist{nosep} % kills all vertical spacing
% \setlist{itemsep=-.5ex}

%%%%% biblatex
\RequirePackage[backend=biber,%
style=gb7714-2015,gbpub=false,gbtype=false,gbpunctin=false,%
url=false,doi=false,isbn=false]{biblatex}

% https://tex.stackexchange.com/questions/247185/tcolorbox-theorem-which-isnt-framed-on-the-sides
\RequirePackage[breakable]{tcolorbox}
\newtcolorbox{mainbodybox}[1]{breakable,sharp corners,nobeforeafter,%
  colback=white,coltitle=black,colbacktitle=white,%
  boxrule=.5pt,titlerule=0pt,%
  bottomrule at break=.5pt,after skip=-1.5pt,% bottomrule=0pt, bottom=1em,
  before upper={\parindent 2em},% indentfirst  
  fonttitle=\large\bfseries,title=#1}

% \singlespacing, \onehalfspacing, \doublespacing
\RequirePackage[doublespacing]{setspace}
\renewcommand\doublespacing{\setstretch{1.6}}

\setlength{\parindent}{2em}

\pagestyle{plain}

\newcommand{\PPSLtitlepage}{% Proposal title page
  \thispagestyle{empty}
  \begin{center}
    \makebox[14em][s]{\LARGE\heiti 西南林业大学}\\[5mm]
    \makebox[28em][s]{\LARGE\heiti 本科毕业论文（设计）开题报告}\\[5mm]
    \vskip 3cm
    \begin{large}
      \begin{minipage}{1.0\linewidth}
        \begin{tabularx}{\textwidth}{@{}rX@{}}
          \makebox[5em][s]{论文题目}%
          &\makebox[0pt][t]{%
            \begin{minipage}[t]{30em}
              \begin{center}
                \parbox[t]{29em}{\centering\bfseries\Large\@title}
              \end{center}
            \end{minipage}}%
            \rule[-1.5ex]{30em}{.1pt}\par%
            \rule[-1.5ex]{30em}{.1pt}\\%
        \end{tabularx}
      \end{minipage}
      \vskip 2cm
      \begin{minipage}{.8\linewidth}
        \begin{center}
          \begin{tabularx}{\textwidth}{@{}rC@{}}
            \makebox[7em][s]{专业名称}%
            & \SWFU@Subject\\[-1ex]\cline{2-2}
            \makebox[7em][s]{年级}%
            & \SWFU@Grade\\[-1ex]\cline{2-2}
            \makebox[7em][s]{学生姓名}%
            & \@author\\[-1ex]\cline{2-2}
            \makebox[7em][s]{学生学号}%
            & \SWFU@Studid\\[-1ex]\cline{2-2}
            \makebox[7em][s]{指导教师 (职称)}%
            & \SWFU@Advisora{}（\SWFU@AdvisoraTitle）\\[-1ex]\cline{2-2}
            & \SWFU@Advisorb{} \SWFU@AdvisorbTitle\\[-1ex]\cline{2-2}
            \makebox[7em][s]{填表时间}%
            & \SWFU@Year{}年\,\SWFU@Month{}月\,\SWFU@Date{}日\\[-1ex]\cline{2-2}
          \end{tabularx}
        \end{center}
      \end{minipage}
    \end{large}
    \vfill
    {\Large\bfseries 西南林业大学教务处制}\\[1cm]
  \end{center}
  \clearpage}

\newcommand{\PPSLinstructionpage}{% Proposal instruction page
  \begin{center}
    \LARGE\bfseries\makebox[7em][s]{填表说明}
  \end{center}
  \vskip 5ex
  \begin{itemize}
  \item[一、] 开题报告各项内容要实事求是，逐条认真填写，表达要明确、严谨。外来语应用中文和
    英文同时表达，第一次出现的缩写词，须注出全称。
  \item[二、] 开题报告需用计算机打印，一律为 A4 开本，于左侧装订成册。各栏空格不够时，请自
    行加页。
  \item[三、] 开题报告需在第八学期开学之前完成。
  \item[四、] 开题报告需装入西南林业大学毕业论文（设计）档案袋。
  \end{itemize}
  \clearpage}

\newcommand{\PPSLmain}{% main part
  \begin{singlespace}
    \noindent
    \begin{tabularx}{\linewidth}{|M{2em}|@{}X@{}|}\hline
      指导教师基本情况%
      & {\begin{tabularx}{\linewidth}{c|c|c|c|c|C}
           指导教师姓名%
           &\makecell*{性\\别}&\makecell*{年\\龄}&\makecell*{学历或\\学位}%
           &\makecell*{专业技术\\职务或职称}&工作单位\\\hline
           \SWFU@Advisora%
           &\SWFU@AdvisoraGender&\SWFU@AdvisoraAge&\SWFU@AdvisoraDegree%
           &\SWFU@AdvisoraTitle&\SWFU@AdvisoraFrom\\\hline
           \SWFU@Advisorb%
           &\SWFU@AdvisorbGender&\SWFU@AdvisorbAge&\SWFU@AdvisorbDegree%
           &\SWFU@AdvisorbTitle&\SWFU@AdvisorbFrom\\
         \end{tabularx}}\\\hline
      课题来源%
      & \qquad\SWFU@PrjFrmA{}科研项目%
        \qquad\SWFU@PrjFrmB{}社会实践%
        \qquad\SWFU@PrjFrmC{}大学生创新创业项目%
        \qquad\SWFU@PrjFrmD{}其它来源\\[2ex]%
    \end{tabularx}
  \end{singlespace}
  \vskip -2pt
  \begin{mainbodybox}{1.\, 该研究的目的、意义}
    \SWFU@PPSLi{}
  \end{mainbodybox}
  \begin{mainbodybox}{2.\, 国内外研究现状及发展趋势}
    \SWFU@PPSLii{}
  \end{mainbodybox}
  \begin{mainbodybox}{3.\, 主要参考文献}
    \SWFU@BIB{}
  \end{mainbodybox}
  \begin{mainbodybox}{4.\, 该研究的主要内容，重点解决的问题，预期结果或成果}
    \SWFU@PPSLiv{}
  \end{mainbodybox}
  \begin{mainbodybox}{5.\, 拟采取的研究方法或实验方法，步骤，可能出现的技术问题及解决办法}
    \SWFU@PPSLv{}
  \end{mainbodybox}
  \begin{mainbodybox}{6.\, 完成该研究已具备的条件}
    \SWFU@PPSLvi{}
  \end{mainbodybox}
  \begin{mainbodybox}{指导教师意见}
    \bigskip
    \SWFU@AdvisorComment\par
    \hfill 签名：\makebox[7em]{\SWFU@AdvisoraSig}\par
    \medskip
    \hfill\SWFU@Year 年 \SWFU@Month 月 \SWFU@Date 日
  \end{mainbodybox}
  \noindent
  \begin{tcolorbox}[sharp corners,nobeforeafter,%
    left=0pt,right=0pt,top=-13pt,bottom=0pt,boxsep=0pt,%
    colback=white, boxrule=.5pt]
    \singlespacing\noindent
    \begin{tabularx}{\linewidth}{M{1em}|X|M{1em}|X}
      \makecell{教\\研\\室\\意\\见}%
      & \begin{minipage}[c][3.5cm]{1.0\linewidth}
        教研室负责人：\par%
        \vfill
        \hfill{}年\qquad{}月\qquad{}日%
      \end{minipage}
      & \makecell{教\\学\\院\\系\\部\\意\\见}%
      & \begin{minipage}[c][3.5cm]{1.0\linewidth}
        教学院系部负责人：\par%
        \vfill
        \hfill{}年\qquad{}月\qquad{}日          
      \end{minipage}\\
    \end{tabularx}    
  \end{tcolorbox}%
}

\newcommand{\maketaskspec}{%
  \pagestyle{empty}
  {\centering\singlespacing%
    {\heiti\Large 西南林业大学\SWFU@Gyear{}届本科毕业论文（设计）任务书}\\[3ex]%
    \begin{tabularx}{\textwidth}{|>{\bfseries}M{6em}|>{\kaishu}C|}%
      \hline%
      论文（设计）\par{}题目&\@title\\\hline%
    \end{tabularx}\\[-1pt]
    \begin{tabularx}{\textwidth}{|>{\bfseries}M{6em}|>{\kaishu}C|*{2}{>{\bfseries}c|>{\kaishu}C|}}%
      学生姓名&\@author& 学号&\SWFU@Studid& 专业&\SWFU@Subject\\\hline%
    \end{tabularx}\\[-1pt]
    \begin{tabularx}{\textwidth}{|*{2}{>{\bfseries}M{6em}|>{\kaishu}C|}}%
      题目来源&%
      \begin{minipage}[c][5em]{\linewidth}%
        \SWFU@PrjFrmA{}科研项目\par%
        \SWFU@PrjFrmB{}社会实践\par%
        \SWFU@PrjFrmC{}大学生创新创业项目\par%
        \SWFU@PrjFrmD{}其它%
      \end{minipage}&%      
      题目类别&\SWFU@PrjTypeA{}毕业论文\qquad{}\SWFU@PrjTypeB{}毕业设计\\\hline%
    \end{tabularx}\\%
    \begin{tabularx}{\textwidth}{|>{\bfseries}m{1em}|>{\kaishu}X|}
      选题的目的及意义
      & \begin{minipage}[c][22em][t]{.9\columnwidth}
        \medskip
        \qquad\SWFU@TSKwhy
      \end{minipage}\\\hline
      学生任务及要求
      & \begin{minipage}[c][24em][t]{.9\columnwidth}
        \medskip
        \qquad\SWFU@TSKwhat{}
      \end{minipage}\\\hline
    \end{tabularx}\clearpage
    \begin{tabularx}{\textwidth}{|>{\bfseries}m{1em}|>{\kaishu}X|}\hline
      进度安排
      & \begin{minipage}[c][15em][t]{.9\columnwidth}
        \medskip
        \qquad\SWFU@TSKwhen
      \end{minipage}\\\hline
      参考文献
      & \begin{minipage}[c][20em][t]{.9\columnwidth}
        \medskip
        \SWFU@BIB
      \end{minipage}\\\hline
    \end{tabularx}
    \begin{tabularx}{\textwidth}{|*{2}{>{\bfseries}c|X|}}%
      任务下达日期&&\makecell{学生应送交毕业论文\\（设计）日期}&\\\hline%
    \end{tabularx}\\[-1pt]%
    \begin{tabularx}{\textwidth}{|*{2}{>{\bfseries}c|X|}}%
      \parbox{4em}{\centering 指导教师签字}
      &\begin{minipage}[c][6em]{1.0\linewidth}%
        \makebox[7em][r]{\SWFU@AdvisoraSig}\par%
        \hfill\SWFU@Year{}年\SWFU@Month{}月\SWFU@Date{}日%
      \end{minipage}%
      &\parbox{4em}{\centering 接受任务学生签字}
      &\begin{minipage}[c][6em]{1.0\linewidth}%
        \makebox[7em][r]{\SWFU@StudSignature}\par%
        \hfill\SWFU@Year{}年\SWFU@Month{}月\SWFU@Date{}日%
      \end{minipage}\\\hline%
      \parbox{3em}{\centering 教研室审核}& \begin{minipage}[c][8em]{1.0\linewidth}%
        \par\vspace{1ex}%
        审核意见：\par
        \vfill%
        签字：\par%
        \hfill{}年\qquad{}月\qquad{}日%
      \end{minipage}%
      & \parbox{4.3em}{\centering 学院审核}%
      & \begin{minipage}[c][8em]{1.0\linewidth}%
        \par\vspace{1ex}%
        审核意见：\par
        \vfill%
        签章：\par%
        \hfill\qquad{}年\qquad{}月\qquad{}日%
      \end{minipage}\\\hline%
    \end{tabularx}\\%
    \begin{tabularx}{\textwidth}{@{}c@{\,\,}c@{\,}X@{}}
      注：%
      &1.&此任务书由指导教师填写，各院审定，在毕业论文（设计）开始前一周内填好并发给学生。\\
      &2.&此任务书双面打印，一式两份。学生一份，另一份随毕业论文（设计）保存。
    \end{tabularx}}}

\newcommand\makeplan{%
  \thispagestyle{empty}
  \singlespacing
  {\centering\heiti\Large 西南林业大学\SWFU@Gyear{}届本科毕业论文（设计）实习计划表\par}
  \bigskip
  \hfill（本表由毕业生填写）\par
  {\centering
    \begin{tabularx}{1.0\linewidth}{|>{\bfseries}c|C|}
      \hline
      论文（设计）题目&\@title\\\hline
    \end{tabularx}
    \vskip -1pt
    \begin{tabularx}{1.0\linewidth}{|*{2}{>{\bfseries}c|C|}}
      \makecell{题目\\类别}%
      &\SWFU@PrjTypeA{}毕业论文\qquad\SWFU@PrjTypeB{}毕业设计%
      &\makecell{题目\\来源}%
      &\makecell[l]{%
        \SWFU@PrjFrmA{}科研项目\quad\SWFU@PrjFrmB{}社会实践\quad\SWFU@PrjFrmD{}其它来源\\
      \SWFU@PrjFrmC{}大学生创新创业项目}\\\hline
    \end{tabularx}
    \vskip -1pt
    \begin{tabularx}{1.0\linewidth}{|*{2}{>{\bfseries}r|C|}}
      指导教师&\SWFU@Advisora&职称&\SWFU@AdvisoraTitle\\\hline
      辅助指导教师&\SWFU@Advisorb&职称&\SWFU@AdvisorbTitle\\\hline
    \end{tabularx}
    \vskip -1pt
    \begin{tabularx}{1.0\linewidth}{|*{3}{>{\bfseries}c|C|}}
      学生姓名&\@author&专业&\SWFU@Subject&学号&\SWFU@Studid\\\hline
    \end{tabularx}
    \vskip -1pt
    \begin{tabularx}{1.0\linewidth}{|>{\bfseries}c|C|}
      所属学院&\SWFU@School\\\hline
    \end{tabularx}
    \vskip -1pt
    \begin{tabularx}{1.0\linewidth}{|X|}
      论文工作计划和预期目标摘要：\\
      \begin{minipage}[t][15cm]{1.0\linewidth}
        \qquad{}\SWFU@Plan
      \end{minipage}\\\hline
    \end{tabularx}
    {\heiti 注：}每位毕业生须填写一份；如表栏不够填写，请加附页。
  }}

\newcommand{\makeproposal}{%
  \PPSLtitlepage{}
  \PPSLinstructionpage{}
  \PPSLmain{}}