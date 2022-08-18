% 西南林业大学本科毕业论文（设计）开题报告、任务书、实习计划表（学生填写）、及中期检查表
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfu4in1}

% pass unknown options to ctexart
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ProcessOptions\relax

\LoadClass[scheme=chinese]{ctexart}

\ctexset{%
  section={%
    format={\kaishu\zihao{-4}\bfseries},%
    number={\chinese{section}、},%
    beforeskip=1.2ex,%
    afterskip=1.2ex,%
    aftername=\hspace{1ex}%
  },%
  subsection={%
    format={\zihao{-4}\bfseries },%
    number={\arabic{subsection}. },%
    beforeskip=1.2ex,%
    afterskip=1.2ex,%
    aftername=\hspace{1ex}%
  },%
  subsubsection={%
    format={\songti\zihao{-4}},%
    name={,)\,},%
    number={\arabic{subsubsection}\)},%
    beforeskip=2pt,afterskip=2pt,%
    aftername=\hspace{2pt}%
  }
}

\setcounter{secnumdepth}{3}

%\newfontfamily\nerd{FiraCode Nerd Font Mono}
\newfontfamily\nerd{Noto Sans Symbols2}
% \RequirePackage{newunicodechar}
% \newunicodechar{□}{{\large\nerd □}}%ballot box
% \newunicodechar{☑}{{\large\nerd ☑}}%checked box
\newcommand\unchecked{{\large\nerd □}} %ballot box
\newcommand\checked{{\large\nerd ☑}} %🗹

\RequirePackage{pgfkeys}

\pgfkeys{%
  Advisora/.store in       = \SWFU@Advisora,       Advisora={王晓林}, % 指导教师a
  Advisorb/.store in       = \SWFU@Advisorb,       Advisorb=,        % 指导教师b
  AdvisoraTitle/.store in  = \SWFU@AdvisoraTitle,  AdvisoraTitle={讲师}, % 指导教师a职称
  AdvisorbTitle/.store in  = \SWFU@AdvisorbTitle,  AdvisorbTitle=,  % 指导教师b职称
  AdvisoraSig/.store in    = \SWFU@AdvisoraSig,
  AdvisoraSig={\includegraphics[width=3cm]{Albus}},    % 指导教师a签名
  AdvisorbSig/.store in    = \SWFU@AdvisorbSig,    AdvisorbSig=,    % 指导教师b签名
  AdvisoraGender/.store in = \SWFU@AdvisoraGender, AdvisoraGender={男}, % 指导教师a性别
  AdvisorbGender/.store in = \SWFU@AdvisorbGender, AdvisorbGender=, % 指导教师b性别
  AdvisoraAge/.store in    = \SWFU@AdvisoraAge,    AdvisoraAge={53}, % 指导教师a年龄
  AdvisorbAge/.store in    = \SWFU@AdvisorbAge,    AdvisorbAge=,    % 指导教师b年龄
  AdvisoraDegree/.store in = \SWFU@AdvisoraDegree, AdvisoraDegree={硕士}, % 指导教师a学位
  AdvisorbDegree/.store in = \SWFU@AdvisorbDegree, AdvisorbDegree=, % 指导教师b学位
  AdvisoraFrom/.store in   = \SWFU@AdvisoraFrom, %（开题报告）指导教师a工作单位
  AdvisorbFrom/.store in   = \SWFU@AdvisorbFrom, %（开题报告）指导教师b工作单位
  AdvisoraFrom = {大数据与智能工程学院},%a
  AdvisorbFrom =,%b  
  DeptAdmin/.store in = \SWFU@DeptAdmin, DeptAdmin=, %(开题报告) 教研室负责人
  SchoolAdmin/.store in = \SWFU@SchoolAdmin, SchoolAdmin=, %(开题报告) 教学院系部负责人
  Studid/.store in        = \SWFU@Studid,  % 学号
  Subject/.store in       = \SWFU@Subject, Subject={计算机科学与技术},% 专业
  Grade/.store in         = \SWFU@Grade,   % 年级
  StudSignature/.store in = \SWFU@StudSignature,%（任务书）学生签名
  TaskDate/.store in = \SWFU@TaskDate, TaskDate={2021年11月12日},%（任务书）任务下达日期
  SubmitDate/.store in = \SWFU@SubmitDate, SubmitDate={2022年4月25日},%（任务书）学生应送交毕业论文日期
  StudSignature           ={\includegraphics[width=25mm]{Harry}},%
  School/.store in        = \SWFU@School,   %（实习计划表）学生所属学院
  School = {大数据与智能工程学院},%
  Gyear/.store in = \SWFU@Gyear, Gyear = \the\year,%（任务书、实习计划表）届
  % Year/.store in  = \SWFU@Year, %（开题报告、任务书）填表、签字时间（年）
  % Month/.store in = \SWFU@Month,%（开题报告、任务书）填表、签字时间（月）
  Date/.store in  = \SWFU@Date, Date={\today}, %（开题报告、任务书）填表、签字时间（年、月、日）
  PrjFrmA/.store in  = \SWFU@PrjFrmA, PrjFrmA={\unchecked{}},   %科研项目
  PrjFrmB/.store in  = \SWFU@PrjFrmB, PrjFrmB={\unchecked{}},   %社会实践
  PrjFrmC/.store in  = \SWFU@PrjFrmC, PrjFrmC={\unchecked{}},   %大学生创新创业项目
  PrjFrmD/.store in  = \SWFU@PrjFrmD, PrjFrmD={\unchecked{}},   %其它来源
  PrjTypeA/.store in = \SWFU@PrjTypeA, PrjTypeA={\unchecked{}}, %毕业论文
  PrjTypeB/.store in = \SWFU@PrjTypeB, PrjTypeB={\checked{}},   %毕业设计
  AdvisorComment/.store in = \SWFU@AdvisorComment, %（开题报告）指导教师意见
  AdvisorComment={同意开题。},%
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
  Prjdone/.store in         = \SWFU@Prjdone,        %(中期检查表)目前已完成任务
  Prjtodo/.store in         = \SWFU@Prjtodo,        %(中期检查表)尚需完成的任务
  Prjproblem/.store in      = \SWFU@Prjproblem,     %(中期检查表)存在的问题和解决办法
  AdvisorComments/.store in = \SWFU@AdvisorComments,%(中期检查表)指导教师评语
  AdvisorComments={进度符合要求，抓紧完成论文。},%
  Midchkdate/.store in = \SWFU@Midchkdate, Midchkdate={\today},%
}

\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

\RequirePackage[%showframe,%showcrop,
top=3cm,bottom=2.5cm,left=3cm,right=2.5cm,
nomarginpar,headheight=15pt, % to avoid "headheight too small"
]{geometry}

\RequirePackage{graphicx}
\graphicspath{{./figs/}{./}{../}} %mind the trailing “/”

\RequirePackage{caption,subcaption}% \captionof{table|figure}{t|f}

\RequirePackage{tabularray}%tabularx,,longtable,booktabs,makecell,multicol,multirow,array

\RequirePackage{indentfirst,enumitem} % \setlist
\setlist{nosep} % kills all vertical spacing
% \setlist{itemsep=-.5ex}

%%%%% biblatex
\RequirePackage[backend=biber,%
style=gb7714-2015,gbpub=false,gbtype=false,gbpunctin=false,%
url=false,doi=false,isbn=false]{biblatex}

\renewcommand{\bibfont}{\zihao{5}\songti}

%\RequirePackage{wx672tcb} % tcolorbox
\RequirePackage[most]{tcolorbox}
\usetikzlibrary{calc}

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

% for the proposal part
\newcounter{main}
\newtcolorbox[use counter=main]{mainbodybox}[1]{%
  boxrule=.4pt,titlerule=0pt,%
  fonttitle=\large\bfseries,%
  overlay unbroken and first={%
    \draw[line width=.2pt] (frame.south west)--(frame.south east);%
  },%
  title=\thetcbcounter. #1}

% for the taskspec part
% #1 - text width;
% #2 - title text.
\newtcolorbox{Titleleft}[2][2em]{% 
  frame hidden, left=40pt,%
  borderline={.4pt}{0pt}{black},% vlines
  borderline west={.4pt}{32pt}{black},% 2nd left vline
  overlay unbroken and first={%
    \node[anchor=center, text width=#1, font=\bfseries] at ($(frame.west)+(16pt,0)$) {#2};
    \draw[line width=.2pt] (frame.south west)--(frame.south east);% bottom hline
  },%
}

\newtcolorbox{titleleft}[1]{% 
  frame hidden, left=24pt,%
  borderline={.4pt}{0pt}{black},% vlines
  borderline west={.4pt}{18pt}{black},% 2nd left vline
  overlay unbroken and first={%
    \node[anchor=west, text width=1em] at (frame.west) {#1};
    \draw[line width=.2pt] (frame.south west)--(frame.south east);% bottom hline
  },%
}

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
        \begin{tblr}{width=\textwidth, colspec={@{}rX@{}}}
          \makebox[7em][s]{论文（设计）题目}%
          &\makebox[0pt][t]{%
            \begin{minipage}[t]{30em}
              \begin{center}
                \parbox[t]{29em}{\centering\bfseries\Large\@title}
              \end{center}
            \end{minipage}}%
            \rule[-1.5ex]{30em}{.1pt}\par%
            \rule[-1.5ex]{30em}{.1pt}\\%
        \end{tblr}
      \end{minipage}
      \vskip 2cm
      \begin{minipage}{.8\linewidth}
        \begin{center}
          \begin{tblr}{%
              colspec={@{}rX[c]@{}},%
              rows={12mm,belowsep=-1pt},hline{2-Z}={2}{solid}}
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
            & \SWFU@Date{}\\[-1ex]\cline{2-2}
          \end{tblr}
        \end{center}
      \end{minipage}
    \end{large}
    \vfill
    {\heiti 西南林业大学教务处制}\\[1cm]
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
    \begin{tblr}{width=\linewidth,%
        colspec={|c|c|c|c|c|c|X[c]|},%
        rowspec={Q[m]|Q|Q|Q[m]}
      }%
      \hline
      \SetCell[r=3]{m,2em}{指导\\教师\\基本\\情况} & 指导教师姓名 & {性\\别} &%
      {年\\龄} & {学历或\\学位} & {专业技术\\职务或职称} &工作单位\\
      & \SWFU@Advisora & \SWFU@AdvisoraGender & \SWFU@AdvisoraAge &%
      \SWFU@AdvisoraDegree & \SWFU@AdvisoraTitle & \SWFU@AdvisoraFrom\\
      \SWFU@Advisorb & \SWFU@AdvisorbGender & \SWFU@AdvisorbAge &%
      \SWFU@AdvisorbDegree & \SWFU@AdvisorbTitle & \SWFU@AdvisorbFrom\\
      {课题\\来源} & \SetCell[c=6]{m} %
      \qquad\SWFU@PrjFrmA{}科研项目%
      \qquad\SWFU@PrjFrmB{}社会实践%
      \qquad\SWFU@PrjFrmC{}大学生创新创业项目%
      \qquad\SWFU@PrjFrmD{}其它来源\\%
    \end{tblr}
  \end{singlespace}
  \vskip -2pt
  \begin{mainbodybox}{该研究的目的、意义}
    \SWFU@PPSLi{}
  \end{mainbodybox}
  \begin{mainbodybox}{国内外研究现状及发展趋势}
    \SWFU@PPSLii{}
  \end{mainbodybox}
  \begin{mainbodybox}{主要参考文献}
    \SWFU@BIB{}
  \end{mainbodybox}
  \begin{mainbodybox}{该研究的主要内容，重点解决的问题，预期结果或成果}
    \SWFU@PPSLiv{}
  \end{mainbodybox}
  \begin{mainbodybox}{拟采取的研究方法或实验方法，步骤，可能出现的技术问题及解决办法}
    \SWFU@PPSLv{}
  \end{mainbodybox}
  \begin{mainbodybox}{完成该研究已具备的条件}
    \SWFU@PPSLvi{}
  \end{mainbodybox}
  \begin{mainbodybox}{指导教师意见}
    \bigskip
    \SWFU@AdvisorComment\par
    \hfill 签名：\makebox[7em]{\SWFU@AdvisoraSig}\par
    \medskip
    \hfill\SWFU@Date
  \end{mainbodybox}
  \noindent
  \begin{tcolorbox}[sharp corners,nobeforeafter,%
    left=0pt,right=0pt,top=-13pt,bottom=0pt,boxsep=0pt,%
    colback=white, boxrule=.5pt]
    \singlespacing\noindent
    \begin{tblr}{width=\linewidth,
        colspec={c|X|c|X},rowspec={Q[m]}}
      {教\\研\\室\\意\\见} &%
      \begin{minipage}[c][3.5cm]{1.0\linewidth}
        教研室负责人：%
        \begin{center}
          \SWFU@DeptAdmin
        \end{center}
        \vfill
        \hfill\SWFU@Date%{}年\qquad{}月\qquad{}日%
      \end{minipage}
      & {教\\学\\院\\系\\部\\意\\见} &%
      \begin{minipage}[c][3.5cm]{1.0\linewidth}
        教学院系部负责人：
        \begin{center}
          \SWFU@SchoolAdmin
        \end{center}
        \vfill
        \hfill{}\SWFU@Date%年\qquad{}月\qquad{}日          
      \end{minipage}\\
    \end{tblr}    
  \end{tcolorbox}%
}

\newcommand{\maketaskspec}{%
  \pagestyle{empty}
  {\centering\singlespacing%
    {\heiti\Large 西南林业大学\SWFU@Gyear{}届本科毕业论文（设计）任务书}\\[3ex]%
    \begin{tblr}{width=\linewidth, vlines,hline{1,2,3},%
        colspec={cXcccX}, rowspec={Q[m]Q[m]Q[m]},%
        column{odd}={font=\bfseries},% column{even}={font=\kaishu},%
        cell{1}{2}={c=5}{c},%
        cell{3}{4}={c=3}{c},%
      }%
      {论文（设计）\\题目} & {\@title}\\
      学生姓名 & \@author & 学号 & \SWFU@Studid & 专业 & \SWFU@Subject\\
      题目来源 & {\SWFU@PrjFrmA{}科研项目\\\SWFU@PrjFrmB{}社会实践\\
        \SWFU@PrjFrmC{}大学生创新创业项目\\\SWFU@PrjFrmD{}其它} &%
      {题目\\类别} &%
      {\SWFU@PrjTypeA{}毕业论文\qquad{}\SWFU@PrjTypeB{}毕业设计}\\
    \end{tblr}\\\vspace*{-1pt}%
    \begin{titleleft}{选题的目的及意义}
      \SWFU@TSKwhy
    \end{titleleft}
    \begin{titleleft}{学生任务及要求}
      \SWFU@TSKwhat
    \end{titleleft}
    \begin{titleleft}{进度安排}
      \SWFU@TSKwhen
    \end{titleleft}
    \begin{titleleft}{参考文献}
      \SWFU@BIB
    \end{titleleft}
    \vspace*{1pt}
    \begin{tblr}{width=\linewidth, colspec={|c|X[c]|c|X[c]|}, hline{1}, rowspec={Q[m]|}}%
      任务下达日期 & \SWFU@TaskDate &%
      {学生应送交毕业论文\\（设计）日期} & \SWFU@SubmitDate\\
    \end{tblr}\\[-1pt]%
    \begin{tblr}{width=\linewidth,
        colspec={|c|X|c|X|}, rowspec={Q[m]|Q[m]|}}
      {指导教师\\签字}
      & \begin{minipage}[c][25mm]{1.0\linewidth}%
        \medskip%
        \makebox[3cm][r]{\SWFU@AdvisoraSig}\par%
        \vfill%
        \hfill\SWFU@Date{}%
        \medskip%
      \end{minipage} &%
      {接受任务\\学生签字} &%
      \begin{minipage}[c][25mm]{1.0\linewidth}%
        \medskip%
        \makebox[3cm][r]{\SWFU@StudSignature}\par%
        \vfill%
        \hfill\SWFU@Date{}%
        \medskip%
      \end{minipage}\\%
      {教研室\\审核} &%
      \begin{minipage}[c][35mm]{1.0\linewidth}%
        \par\vspace{1ex}%
        审核意见：\par
        \vfill%
        签字：\par%
        \hfill{}年\qquad{}月\qquad{}日%
        \medskip
      \end{minipage} &%
      {学院审核} &%
      \begin{minipage}[c][35mm]{1.0\linewidth}%
        \par\vspace{1ex}%
        审核意见：\par
        \vfill%
        签章：\par%
        \hfill\qquad{}年\qquad{}月\qquad{}日%
        \medskip
      \end{minipage}\\
    \end{tblr}\\
    \begin{tblr}{width=\linewidth, colspec={@{}c@{\;}X@{}}} 
      注：&%
      {1. 此任务书由指导教师填写，各院审定，在毕业论文（设计）开始前一周内填好并发给学生。\\
      2. 此任务书双面打印，一式两份。学生一份，另一份随毕业论文（设计）保存。}\\
    \end{tblr}}}

\newcommand\makeplan{%
  \thispagestyle{empty}
  \singlespacing
  {\centering\heiti\Large 西南林业大学\SWFU@Gyear{}届本科毕业论文（设计）实习计划表\par}
  \bigskip
  \hfill（本表由毕业生填写）\par
  {\centering
    \begin{tblr}{width=\linewidth,
        colspec={|X[-1,c,font=\bfseries]|X[c]|}, rowspec={|Q|Q|}%,font=\kaishu
      }%
      论文（设计）题目&\@title\\
    \end{tblr}
    \vskip -1pt
    \begin{tblr}{width=\linewidth, colspec={|c|X[c]|c|l|}, rowspec={Q[m]|},        
        column{odd}={font=\bfseries}}%, column{even}={font=\kaishu}
      {题目\\类别} & \SWFU@PrjTypeA{}毕业论文\qquad\SWFU@PrjTypeB{}毕业设计 &%
      {题目\\来源} & {\SWFU@PrjFrmA{}科研项目\quad\SWFU@PrjFrmB{}社会实践\quad%
        \SWFU@PrjFrmD{}其它来源\\\SWFU@PrjFrmC{}大学生创新创业项目}\\
    \end{tblr}
    \vskip -1pt
    \begin{tblr}{width=\linewidth,%
        colspec={|r|X[c]|r|X[c]|}, rowspec={Q[m]|Q[m]|},%
        column{odd}={font=\bfseries}}% , column{even}={font=\kaishu}
      指导教师&\SWFU@Advisora&职称&\SWFU@AdvisoraTitle\\
      辅助指导教师&\SWFU@Advisorb&职称&\SWFU@AdvisorbTitle\\
    \end{tblr}
    \vskip -1pt
    \begin{tblr}{width=\linewidth,%
        colspec={|c|X[-1,c]|c|X|c|X[-1,c]|}, column{odd}={font=\bfseries},
        rowspec={Q[m]|Q[m]|Q[m]|Q[m]|Q[m]|Q[m]|}
      }%
      学生姓名&\@author&专业&\SWFU@Subject&学号&\SWFU@Studid\\
      所属学院&\SetCell[c=5]{m}\SWFU@School\\
    \end{tblr}
    \vskip -1pt
    \begin{tblr}{width=\linewidth, colspec={|X|},rowspec={Q[m]Q[m]|}}
      论文工作计划和预期目标摘要：\\
      \begin{minipage}[t][15cm]{1.0\linewidth}
        \qquad{}\SWFU@Plan
      \end{minipage}\\
    \end{tblr}
    {\heiti 注：}每位毕业生须填写一份；如表栏不够填写，请加附页。
  }\clearpage}

\newcommand{\makeproposal}{%
  \PPSLtitlepage{}
  \PPSLinstructionpage{}
  \PPSLmain{}}

\newcommand\midchk{\pagestyle{empty}%
  {\centering\Large\heiti 西南林业大学本科毕业论文（设计）中期检查表\par}
  \medskip\noindent%
  \begin{tblr}{width=\linewidth,colspec={cX[c]cX[c]},hline{1-7},vlines,%
      cell{3-5}{2}={c=3}{c}, cell{7}{1}={c=4}{c},%
      cell{6}{2}={c=3}{l}}
    学生姓名&\@author&学生学号&\SWFU@Studid\\
    专\quad{}业&\SWFU@Subject&指导教师&\SWFU@Advisora\\
    论文题目 &{\@title}&&\\
    {目前已完\\成任务} & %
    \begin{tblr}{width=.85\textwidth,colspec={X},row{1}={2cm}{t},row{2}={f}}
        \SWFU@Prjdone\\
        \hfill{}是否符合计划进度？\qquad\checked{}是\quad\unchecked{}否\\
    \end{tblr} &&\\
    {尚需完成\\的任务} & %
    \begin{tblr}{width=.85\textwidth,colspec={X},row{1}={2cm}{t},row{2}={f}}
      \SWFU@Prjtodo\\
      \hfill{}能否按期完成任务？\qquad\checked{}是\quad\unchecked{}否\\
    \end{tblr} &&\\
    {存在的问\\题和解决\\办法} & %
    \begin{tblr}{width=.85\textwidth,colspec={X},row{1}={2cm}{t}}
      \SWFU@Prjproblem\\
    \end{tblr} &&\\% 
    \mbox{（以上部分由学生填写）}&&&\\
  \end{tblr}\vspace{-1pt}
  \begin{titleleft}{指导教师评语}
    \SWFU@AdvisorComments\par\bigskip%
    \hfill{}指导教师（签名）：\makebox[3cm][c]{\SWFU@AdvisoraSig}\par\medskip%
    \hfill{}\SWFU@Midchkdate
  \end{titleleft}
  \noindent%
  \begin{tblr}{width=\linewidth,colspec={lccX[c]},hline{2-Z},vlines,%
      cell{1}{1}={c=4}{c}, cell{8}{1,3}={c=2}{c}, cell{2}{1}={c},%
    }
    \mbox{（以下部分由教学院、系、部填写）}&&&\\
    {评\, 分\, 项\, 目} &最高分值&评分&备\, 注\\
    指导教师对毕业实习的指导力度&25&&\\
    毕业论文的实验条件&15&&\\
    毕业论文的适合度&20&&\\
    完成论文的进度&15&&\\
    学生表现&25&&\\
    总\qquad{}分&&&\\
  \end{tblr}
  \vskip -1.5pt\noindent%
  \begin{tblr}{width=\linewidth,colspec={cXcX},vlines,hline{2-Z},%
      column{1,3}={5mm,m},%
    }
    {教研室意见} & %
    \begin{minipage}[c][3cm]{\linewidth}
      \vfill{}%
      教研室负责人：\par%
      \hfill{}年\qquad{}月\qquad{}日%
    \end{minipage} & %
    {学院意见} & %
    \begin{minipage}[c][3cm]{\linewidth}
      \vfill{}
      学院负责人：\par%
      \hfill{}年\qquad{}月\qquad{}日
    \end{minipage}\\
  \end{tblr}}
