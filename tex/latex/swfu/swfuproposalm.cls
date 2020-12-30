% 西南林业大学学术型硕士生学位论文开题报告
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfuproposalm}

\RequirePackage{pgfkeys}

\pgfkeys{%
         Studid/.store in =\SWFU@Studid,          % 学号
         Gender/.store in =\SWFU@Gender,          % 性别
        Subject/.store in =\SWFU@Subject,         % 学科专业
       Research/.store in =\SWFU@Research,        % 研究方向
        Advisor/.store in =\SWFU@Advisor,         % 导师姓名1
   AdvisorTitle/.store in =\SWFU@AdvisorTitle,    % 职称1
     Advisortwo/.store in =\SWFU@Advisortwo,      % 导师姓名2
AdvisorTitletwo/.store in =\SWFU@AdvisorTitletwo, % 职称2
           Host/.store in =\SWFU@Host,            % 报告主持人
     Reportdate/.store in =\SWFU@Reportdate,      % 报告日期
           Year/.store in =\SWFU@Year,            % 填表日期（年）
          Month/.store in =\SWFU@Month,           % 填表日期（月）
           Date/.store in =\SWFU@Date,            % 填表日期（日）
%%% 选题基本情况
GeneralA/.store in =\SWFU@GeneralA, GeneralA={\quad{}},  % 导师课题的一部分
GeneralB/.store in =\SWFU@GeneralB, GeneralB={\quad{}},  % 委培单位的课题
GeneralC/.store in =\SWFU@GeneralC, GeneralC={\qquad{}}, % 其它（须具体说明）
%%% 选题分类
ClsA/.store in =\SWFU@ClsA, ClsA={\quad{}}, % 基础研究
ClsB/.store in =\SWFU@ClsB, ClsB={\quad{}}, % 应用研究
ClsC/.store in =\SWFU@ClsC, ClsC={\quad{}}, % 综合研究
ClsD/.store in =\SWFU@ClsD, ClsD={\quad{}}, % 其它
%%% 选题来源
FromA/.store in =\SWFU@FromA, FromA={\quad{}}, % 973、863项目
FromB/.store in =\SWFU@FromB, FromB={\quad{}}, % 国家社科规划、基金项目
FromC/.store in =\SWFU@FromC, FromC={\quad{}}, % 教育部人文、社科研究项目
FromD/.store in =\SWFU@FromD, FromD={\quad{}}, % 国家自然科学基金项目
FromE/.store in =\SWFU@FromE, FromE={\quad{}}, % 中央、国家各部门项目
FromF/.store in =\SWFU@FromF, FromF={\quad{}}, % 省（自治区、直辖市）项目
FromG/.store in =\SWFU@FromG, FromG={\quad{}}, % 国际合作研究项目
FromH/.store in =\SWFU@FromH, FromH={\quad{}}, % 与港、澳、台合作研究项目
FromI/.store in =\SWFU@FromI, FromI={\quad{}}, % 企、事业单位委托项目
FromJ/.store in =\SWFU@FromJ, FromJ={\quad{}}, % 外资项目
FromK/.store in =\SWFU@FromK, FromK={\quad{}}, % 学校自选项目
FromL/.store in =\SWFU@FromL, FromL={\quad{}}, % 国防项目
FromM/.store in =\SWFU@FromM, FromM={\quad{}}, % 非立项
FromN/.store in =\SWFU@FromN, FromN={\quad{}}, % 其它
%%%
Tutorcomments/.store in =\SWFU@Tutorcomments, % 导师对开题报告的评价
Tutorsig/.store in =\SWFU@Tutorsig,           % 导师签名
TutorYear/.store in =\SWFU@TutorYear,   TutorYear={\qquad},  % 导师评价日期(年)
TutorMonth/.store in =\SWFU@TutorMonth, TutorMonth={\qquad}, % 导师评价日期(月)
TutorDate/.store in =\SWFU@TutorDate,   TutorDate={\qquad},  % 导师评价日期(日)
%%%
    Poneone/.store in =\SWFU@Poneone,
    Ponetwo/.store in =\SWFU@Ponetwo,
    Ptwoone/.store in =\SWFU@Ptwoone,
    Ptwotwo/.store in =\SWFU@Ptwotwo,
  Ptwothree/.store in =\SWFU@Ptwothree,
   Ptwofour/.store in =\SWFU@Ptwofour,
  Pthreeone/.store in =\SWFU@Pthreeone,
  Pthreetwo/.store in =\SWFU@Pthreetwo,
Pthreethree/.store in =\SWFU@Pthreethree,
}

\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexart}}
\ProcessOptions\relax

\LoadClass[scheme=chinese,zihao=-4]{ctexart}

\ctexset{% from swfuthesis.cls
  section = {%
    number=\chinese{section},%
    format={\Large\bfseries},%
  },%
}

\RequirePackage[%showframe,%showcrop,
a4paper,%
vmargin=2.5cm,hmargin=2.5cm,%
nomarginpar,%
%headheight=15pt, % to avoid "headheight too small"
]{geometry}

\RequirePackage{graphicx}
\graphicspath{{./figs/}{../figs/}{./}{../}} %mind the trailing “/”

\RequirePackage{indentfirst}  % enabled if scheme=chinese
%%%%% fonts
\RequirePackage{amsmath,amsfonts,amssymb,marvosym,pifont} %
\newfontfamily\dejavu{DejaVu Sans Mono}
% {\dejavu ☑} %0x2611
% {\dejavu ☐} %0x2610
% \Checkedbox - marvosym
% \checkmark - amssymb

\RequirePackage{caption,subcaption}

\RequirePackage{tabularx,longtable,multicol,multirow,booktabs,makecell}
\renewcommand\theadfont{\bfseries}%\normalfont
\renewcommand{\arraystretch}{1.5}

\newcolumntype{C}{>{\centering\arraybackslash}X}
\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}} % centering p column

\RequirePackage{enumitem} % \setlist
\setlist{itemsep=-.5ex}
%\setlist{nosep} % kills all vertical spacing

\RequirePackage{tasks}
\settasks{style={enumerate},label-align=right,label-width={2em}}

%%%%% hyperref
\RequirePackage{xcolor}
\RequirePackage{hyperref}
\hypersetup{%
  bookmarksnumbered, breaklinks=true,%
  colorlinks=false,%
  pdfborderstyle={/S/U/W .3},% underline of width .3pt 
  linkbordercolor=red,       % internal links
  citebordercolor=cyan,      % links to bibliography
  filebordercolor=magenta,   % file links
  urlbordercolor=blue,       % external links
}
\def\UrlBreaks{\do\/\do-} % break long url

%%%%% biblatex
\RequirePackage[backend=biber,%
style=gb7714-2015,gbpub=false,gbtype=false,gbpunctin=false,%
url=false,doi=false,isbn=false]{biblatex}

% https://tex.stackexchange.com/questions/247185/tcolorbox-theorem-which-isnt-framed-on-the-sides
\RequirePackage[breakable]{tcolorbox}
\newtcolorbox{mainbodybox}[1]{breakable,sharp corners,nobeforeafter,%
  colback=white,coltitle=black,colbacktitle=white,%
  boxrule=.5pt,titlerule=0pt,%
  bottomrule at break=.5pt,after skip=-1.5pt,% bottomrule=0pt,bottom=2em,
  before upper={\parindent 2em},% indentfirst
  fonttitle=\large\bfseries,title=#1}

\newtcolorbox{mainlistbox}[1]{sharp corners,nobeforeafter,%
  colback=white,coltitle=black,colbacktitle=white,%
  boxrule=.5pt,titlerule=0pt,%
  bottom=1em,bottomrule at break=.5pt,after skip=-.5pt,% bottomrule=0pt,
  toptitle=1ex,bottomtitle=3ex,center title,%
  fonttitle=\bfseries,title={\Huge #1}}  

% \singlespacing, \onehalfspacing, \doublespacing
\RequirePackage[doublespacing]{setspace}
\renewcommand\doublespacing{\setstretch{1.6}}

% {\fontsize{font size}{base line strech}\selectfont TEXT}
\newcommand{\TitleFont}[1]{{\heiti {\fontsize{40}{48}\selectfont #1}}}%{1.5cm}{1.8cm}
\newcommand{\TitlextFont}[1]{{\heiti {\fontsize{26}{30}\selectfont #1}}}%{1.1cm}{1.3cm}
    
\pagestyle{plain}

\newcommand{\SWFCtitlepage}{% Title page layout
  \thispagestyle{empty}
  \vspace*{4em}
  \begin{center}
    \makebox[20em][s]{{\TitleFont{西南林业大学}}}\\[8mm]
    \makebox[32em][s]{{\TitlextFont{学术型硕士生学位论文开题报告}}}\\[18mm]
    \begin{minipage}{.9\linewidth}
      \begin{tabularx}{\textwidth}{@{}rC@{}}
        {\heiti 题\quad{}目：}&%
          \makebox[0pt][t]{%
            \begin{minipage}[t]{25em}
              \centering\parbox[t]{24em}{\centering\bfseries\large\@title}
            \end{minipage}}%
          \rule[-.5ex]{25em}{.1pt}\par%
          \rule[-.1ex]{25em}{.1pt}\\%
        \end{tabularx}
    \end{minipage}
    \vskip 2.5cm
    \begin{minipage}{.9\linewidth}
        \begin{center}
        \begin{tabularx}{\textwidth}{@{}>{\heiti}rC>{\heiti}rC@{}}
          学\qquad{}号：&\SWFU@Studid&
          姓\qquad{}名：&\@author\\[-1ex]\cline{2-2}\cline{4-4}
          学科专业：&\SWFU@Subject&
          研究方向：&\SWFU@Research\\[-1ex]\cline{2-2}\cline{4-4}
          导师姓名：&\SWFU@Advisor{}&
          职\hspace{2em}称：&\SWFU@AdvisorTitle\\[-1ex]\cline{2-2}\cline{4-4}
          &\SWFU@Advisortwo{}&
          &\SWFU@AdvisorTitletwo\\[-1ex]\cline{2-2}\cline{4-4}
          报告主持人：&\SWFU@Host&
          报告日期：&\SWFU@Reportdate\\[-1ex]\cline{2-2}\cline{4-4}
        \end{tabularx}
      \end{center}
    \end{minipage}
  \vfill
  {\heiti 填表日期：}%
  \makebox[3em][c]{\SWFU@Year}{\heiti 年}%
  \makebox[2em][c]{\SWFU@Month}{\heiti 月}%
  \makebox[2em][c]{\SWFU@Date}{\heiti 日}
\end{center}
\clearpage}

\newcommand{\instructionpage}{% Instruction page
  \begin{center}
    \LARGE\heiti 填\quad{}表\quad{}说\quad{}明
  \end{center}
  \vskip 5ex
  {\large
    \begin{enumerate}
    \item 开题报告是硕士生培养的重要环节，研究生需在导师的指导下认真完成，具体要求参见《西
      南林业大学关于学术型研究生开题报告的规定（2012 年修订）》。
    \item 开题报告文献综述部分的基本要求：
      \begin{enumerate}
      \item 国内外本研究课题的发展现状、趋势及问题等，字数3000字左右。
      \item 参考文献量不少于20篇（其中人文社科类不少于30篇），对于个别新兴研究领域其文献量
        可酌情减少。
      \item 文献引用格式需符合《西南林业大学研究生学位论文格式的统一要求》的相关规定。
      \end{enumerate}
    \item 完成时间：研究生开题工作应于入学后第三学期内完成，具体时间各学院可根据本学院的学
      科特点和实际情况进行安排。
    \item 硕士生开题报告书应首先获导师认可和考核小组成员审阅后方可参加开题。
    \item 打印要求：此表用A4纸双面打印，各栏空格不够时，请自行加页。
    \item 开题报告通过、修改、签字完毕后，交各学院存档一份。
    \end{enumerate}}
  \clearpage}

\newcommand{\tablebody}{% main part
  \noindent%
  \begin{mainlistbox}{选题基本情况（{\checkmark}）}
    本研究题目为：
    \begin{enumerate}[itemsep=2ex]
    \item 导师课题的一部分\, （\SWFU@GeneralA）；
    \item 委培单位的课题\, （\SWFU@GeneralB）；
    \item 其它（须具体说明）\,\underline{\,{\kaishu\SWFU@GeneralC}\,}。
    \end{enumerate}
  \end{mainlistbox}
  \noindent%
  \begin{mainlistbox}{选题分类（{\checkmark}）}
    \begin{tasks}(2)
      \task 基础研究\, （\SWFU@ClsA{}）
      \task 应用研究\, （\SWFU@ClsB{}）
      \task 综合研究\, （\SWFU@ClsC{}）
      \task 其\hspace{2em}他\, （\SWFU@ClsD{}）
    \end{tasks}
  \end{mainlistbox}
  \noindent%
  \begin{mainlistbox}{选题来源（{\checkmark}）}
    \begin{tasks}(2)
      \task 973、863 项目\, （\SWFU@FromA{}）
      \task 国家社科规划、基金项目\, （\SWFU@FromB{}）
      \task 教育部人文、社科研究项目\, （\SWFU@FromC{}）
      \task 国家自然科学基金项目\, （\SWFU@FromD{}）
      \task 中央、国家各部门项目\, （\SWFU@FromE{}）
      \task 省（自治区、直辖市）项目\, （\SWFU@FromF{}）
      \task 国际合作研究项目\, （\SWFU@FromG{}）
      \task 与港、澳、台合作研究项目\, （\SWFU@FromH{}）
      \task 企、事业单位委托项目\, （\SWFU@FromI{}）
      \task 外资项目\, （\SWFU@FromJ{}）
      \task 学校自选项目\, （\SWFU@FromK{}）
      \task 国防项目\, （\SWFU@FromL{}）
      \task 非立项\, （\SWFU@FromM{}）
      \task 其他\, （\SWFU@FromN{}）
    \end{tasks}
  \end{mainlistbox}

  \clearpage

  \section{立题依据}
  \begin{mainbodybox}{1.\, 选题的理论和实践意义}
    \SWFU@Poneone
  \end{mainbodybox}%
  \begin{mainbodybox}{2.\, 文献综述}
    \noindent{}（国内外本研究领域的发展现状、趋势及问题等，并附参考文献）\par
    \SWFU@Ponetwo
  \end{mainbodybox}
  
  \section{研究方案}
  \begin{mainbodybox}{1.\, 研究内容、研究目标及拟解决的关键问题}
    \SWFU@Ptwoone
  \end{mainbodybox}
  \begin{mainbodybox}{2.\, 拟采用的研究方法、技术路线、实验方案及可行性分析}
    \SWFU@Ptwotwo
  \end{mainbodybox}
  \begin{mainbodybox}{3.\, 本研究的特色与创新之处}
    \SWFU@Ptwothree
  \end{mainbodybox}
  \begin{mainbodybox}{4.\, 研究计划及预期研究结果}
    \SWFU@Ptwofour
  \end{mainbodybox}

  \section{研究基础}
  \begin{mainbodybox}{1.\, 已参加过的相关研究工作和已取得的研究工作进展}
    \SWFU@Pthreeone
  \end{mainbodybox}
  \begin{mainbodybox}{2.\, 已具备的实验条件，尚缺少的实验条件和拟解决的途径}
    \SWFU@Pthreetwo
  \end{mainbodybox}
  \begin{mainbodybox}{3.\, 研究经费预算和经费落实情况}
    \SWFU@Pthreethree
  \end{mainbodybox}

  \singlespacing
  
  \section{导师对开题报告的评价}
  \begin{mainbodybox}{%
      \normalfont\normalsize
        （就硕士生对国外研究现状的了解情况、研究内容、研究方法、预期成果等方面予以评价）}%
    \bigskip
    \SWFU@Tutorcomments\par
    \vspace*{2em}    
    \makebox[25em][r]{导师签字：}{\LARGE\SWFU@Tutorsig{}}\par
    \vspace*{2em}
    \hfill\SWFU@TutorYear\,{}年\,\SWFU@TutorMonth\,{}月\,\SWFU@TutorDate\,{}日
  \end{mainbodybox}

  \section{开题报告小组评议意见}
  \renewcommand\arraystretch{2}
  \noindent\begin{tabularx}{\textwidth}{|c|P{4em}|P{3em}|X|P{5em}|}
    \hline
    组成&姓名&职称&工作单位&本人签字\\\hline
    组长&&&&\\\hline
       &&&&\\\cline{2-5}
       &&&&\\\cline{2-5}
    成员&&&&\\\cline{2-5}
       &&&&\\\cline{2-5}
       &&&&\\\cline{2-5}
       &&&&\\\hline
  \end{tabularx}\par

  \section{学科审查意见}
  \noindent\begin{tabularx}{\textwidth}{|lX|}
    \hline
    学科对开题报告的意见：&\\[12em]
    &\makebox[20em][l]{学科负责人签字：}\\
    &\hfill\makebox[4em][l]{年} \makebox[3em][l]{月} \makebox[3em]{日}\\\hline
  \end{tabularx}\par

  \section{学院审查意见}
  \noindent\begin{tabularx}{\textwidth}{|lX|}
    \hline
    学院对开题报告的意见：&\\[12em]
    &\makebox[20em][l]{主管（副）院长签字：}\\
    &\hfill\makebox[4em][l]{年} \makebox[3em][l]{月} \makebox[3em]{日}\\\hline
  \end{tabularx}
  \begin{flushright}
    \textbf{西南林业大学研究生处制}
  \end{flushright}
  \clearpage
}

\newcommand{\appendixtwo}{
  \noindent{}附件2：{\large\bfseries 专家评议书}
  \begin{center}
    {\Large\bfseries 西南林业大学研究生开题报告专家评议书}
  \end{center}
  \begin{tabularx}{\linewidth}{|c|C|c|P{4em}|c|c|c|P{4em}|}
    \hline
    学号&\SWFU@Studid&姓名&\@author&性别&\SWFU@Gender&导师&\SWFU@Advisor\\\hline
  \end{tabularx}
  \begin{tabularx}{\linewidth}{|c|C|c|C|}
    专业&\SWFU@Subject&攻读学位&{\dejavu ☑}\,硕士\quad{}{\dejavu ☐}博士\\\hline
  \end{tabularx}
  \begin{tabularx}{\linewidth}{|c|C|}
    拟选学位论文题目&\@title\\\hline
  \end{tabularx}
  \begin{tabularx}{\linewidth}{|X|c|c|c|c|}
    评价等级（请在相应空格内划\checkmark{}）&优&良&中&差\\\hline
    1、选题来源、选题依据（包括论文选题意义和国内外现状分析）&&&&\\\hline
    2、论文创新之处&&&&\\\hline
    3、论文研究目标、研究内容以及拟解决的关键问题&&&&\\\hline
    4、论文拟采取的研究方法、技术路线、实验方案及其可行性&&&&\\\hline
    5、论文研究计划、预期进展及预期成果&&&&\\\hline
    6、已参加过的有关研究工作和已取得的研究工作成绩&&&&\\\hline
    7、已具备的实验条件，尚缺少的实验条件和拟解决的途径&&&&\\\hline
    8、研究经费预算和经费落实情况&&&&\\\hline
  \end{tabularx}
  \begin{tabularx}{\linewidth}{|@{}>{\bfseries}X@{}|}
    \hspace{1ex}专家综合评价意见与建议：\\[6ex]\hline
    \hspace{1ex}专家对开题报告的总体评价结果（请划\checkmark）\\\hline
    {\begin{tabularx}{\linewidth}{X|X|X}
      {\dejavu ☐}\, 通过开题&{\dejavu ☐}\, 通过开题，但需修改&{\dejavu ☐}\, 不通过，重新
      开题
    \end{tabularx}}\\\hline
    \hspace{1ex}评议专家签名：\\
    \makebox[25em][r]{日期：}\\\hline
    \textbf{专家基本信息}\\\hline
    {\begin{tabularx}{\linewidth}{r|X|r|X}
      姓名&&职称&\\\hline
      研究方向&&联系电话&\\\hline
    \end{tabularx}}
    {\begin{tabularx}{\linewidth}{r|X}
      工作单位&\\\hline
    \end{tabularx}}
  \end{tabularx}
  \begin{tabularx}{\linewidth}{X@{}}
    \textbf{西南林业大学研究生处制}
  \end{tabularx}
  \clearpage
}

\newcommand{\appendixthree}{
  \noindent{}附件3：{\large\bfseries 考核小组评议书}
  \begin{center}
    {\Large\bfseries 西南林业大学研究生开题报告考核小组评议书}
  \end{center}
  \begin{tabularx}{\linewidth}{|c|P{6em}|c|X|c|X|}
    \hline
    姓\qquad{}名&\@author&学科专业&\SWFU@Subject&学院&大数据\\\hline
  \end{tabularx}
  \begin{tabularx}{\linewidth}{|c|P{6em}|c|X|}  
    研究方向&\SWFU@Research&拟选题目&\@title\\\hline
  \end{tabularx}
  % \vskip -1.7ex
  % \begin{longtabu}{|p{4em}|@{}X@{}|}
  %   评价内容& \begin{tabu}{p{6em}|X[c]|@{}X[c,.15]@{}|X[.1]}
  %     评价参考&评分标准&参考\par{}分数&
  %   \end{tabu}\\\hline
  %   立\par{}论\par{}依\par{}据& \begin{tabu}{p{6em}|X|@{}X[c,.15]@{}|X[.1]}
  %              研究意义&有重要科学意义或国民经济建设中的重要科技问题&10&\\\tabucline[on 2pt]{2-3}
  %                     &对学科发展有促进或有应用前景&8&\\\tabucline[on 2pt]{2-3}
  %                     &属一般问题&4&\\\tabucline[on 2pt]{2-3}
  %                     &科学意义或应用前景不大&2&\\\hline
  %              学术思想&有明显的创新&15&\\\tabucline[on 2pt]{2-3}
  %                     &有一定的创新和特色&12&\\\tabucline[on 2pt]{2-3}
  %                     &创新性不强&6&\\\tabucline[on 2pt]{2-3}
  %                     &无创新&2&\\\hline
  %              立项依据&充分，科学性强&15&\\\tabucline[on 2pt]{2-3}
  %                     &较充分，科学性强&12&\\\tabucline[on 2pt]{2-3}
  %                     &不够充分，科学性不强&6&\\\tabucline[on 2pt]{2-3}
  %                     &不充分或缺乏科学性&2&\\\hline
  %              对国内外研究&清楚，且评价分析准确.全面&15&\\\tabucline[on 2pt]{2-3}
  %              现状分析&较清楚，评价分析较准确&12&\\\tabucline[on 2pt]{2-3}
  %                     &只了解部分现状，评价分析不够准确&6&\\\tabucline[on 2pt]{2-3}
  %                     &不了解现状，评价分析不够准确&2&
  %            \end{tabu}\\\hline
  %   研\par{}究\par{}方\par{}案&\begin{tabu}{p{6em}|X|@{}X[c,.15]@{}|X[.1]}
  %              研究内容和拟&范围合适，重点突出；关键问题选择准确&10&\\\tabucline[on 2pt]{2-3}
  %              解决的关键问&基本合适，关键问题选择较准确&8&\\\tabucline[on 2pt]{2-3}
  %              题        &不够合适，只抓住了部分关键问题&4&\\\tabucline[on 2pt]{2-3}
  %                        &不合适，没有抓住关键问题&2&
  %                      \end{tabu}\\\tabucline{2-2}
  %   研\par{}究\par{}方\par{}案&\begin{tabu}{p{6em}|X|@{}X[c,.15]@{}|X[.1]}\hline
  %              拟采用的研究&研究方法先进，且有创新，技术路线合理可行&10&\\\tabucline[on 2pt]{2-3}
  %              方法与技术路&方法可行，对现行方法有所改进，技术路线合理可行&8&\\\tabucline[on 2pt]{2-3}
  %              线（实验方案）&方法可行性不足或不够恰当，技术路线不够合理&4&\\\tabucline[on 2pt]{2-3}
  %                          &不可行，技术路线不合理&2\\\hline
  %              研究的预期目&明确，能达到&5&\\\tabucline[on 2pt]{2-3}
  %                      标&基本明确，可能达到&4&\\\tabucline[on 2pt]{2-3}
  %                        &不够明确或不够恰当&2&\\\tabucline[on 2pt]{2-3}
  %                        &不明确&1&
  %            \end{tabu}\\\hline
  %   研\par{}究\par{}基\par{}础&\begin{tabu}{p{6em}|X|@{}X[c,.15]@{}|X[.1]}
  %              与本研究有关&是原有研究工作的进一步深入，实验条件好&10&\\\tabucline[on 2pt]{2-3}
  %              的研究工作积&有一定相关工作的积累，基础较好，实验条件较好&8&\\\tabucline[on 2pt]{2-3}
  %              累和实验条件&做过类似工作，基础一般，实验条件不足&4&\\\tabucline[on 2pt]{2-3}
  %                        &没有这方面的工作基础，实验条件较差&2&
  %            \end{tabu}\\\hline
  %   答\par{}辩\par{}情\par{}况&\begin{tabu}{p{6em}|X|@{}X[c,.15]@{}|X[.1]}
  %              对问题的理解&回答准确.精炼，思维敏捷&10&\\\tabucline[on 2pt]{2-3}
  %              能力和问题回&回答正确，思路比较清晰&8&\\\tabucline[on 2pt]{2-3}
  %                答的准确性&回答基本正确，但不精练&4&\\\tabucline[on 2pt]{2-3}
  %                        &反应较慢，回答欠准确，思路不够清晰&2&
  %                      \end{tabu}\\\hline
  % \end{longtabu}
  % \vskip -2ex
  % \begin{tabu}{|@{}X@{}|p{1.8em}|p{1.9em}|}
  %   \begin{tabu}{X[c]|X[c]|X[c]|X[c]|X[c]|X[c]|X[c]|X[c]|X[c]}
  %     A&A-&B+&B&B-&C+&C&C-&D\\\hline
  %     96-100&90-95&85-89&80-84&75-79&70-74&65-69&60-64&0-59
  %   \end{tabu}&综\par{}合\par{}分&\\\hline
  % \end{tabu}
  % \begin{tabu}{|X[l]|}
  %   综合分在 A- 以下的请提出具体修改意见：\\[6ex]\hline
  %   评价结果：\hfill （注明“同意通过”或“不同意通过”）\\\hline
  % \end{tabu}
  % \noindent{}注：1.本表每位评委一份，采用无记名方式；2.评分在 A-以下的必须对开题报告进行修改，经导师、
  % 学科签字同意才视为通过；3.评价综合分低于（C+）者为不通过。
  
  % \begin{flushright}
  %   \textbf{西南林业大学研究生处制}
  % \end{flushright}
}

\newcommand{\makeproposal}{% preliminary pages
  \SWFCtitlepage
  \doublespacing % global line spacing
  \instructionpage
  \tablebody
%  \appendixtwo
%  \appendixthree
}
