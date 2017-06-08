% The swfcproposal class is for producing MSc theses proposal (开题报告) that meet
% the SWFU requirements.
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfcproposalmsc}

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{aritcle}}
\ProcessOptions\relax

\LoadClass[a4paper,12pt]{article}

\RequirePackage{ifxetex} % This class can only be processed with XeTeX

%\RequirePackage[margin=2.5cm]{geometry}
\RequirePackage[top=2.5cm,bottom=2.5cm,left=2.5cm,right=2.5cm,
nomarginpar,headheight=15pt, % to avoid "headheight too small"
%showframe,%showcrop,
]{geometry}

% \RequirePackage[xetex]{graphicx} % before xltxtra
% \graphicspath{{./figs/}{../figs/}{./}{../}} %mind the trailing “/”

\RequirePackage{indentfirst}
\RequirePackage{tabu,longtable,multicol,multirow,array}

\RequirePackage{lipsum}

\RequirePackage{enumitem} % \setlist
\setlist{nosep} % kills all vertical spacing

\RequirePackage{wx672fonts}
\RequirePackage{wx672cjk}
\RequirePackage{wx672bib}

\RequirePackage{xcolor}
\RequirePackage{hyperref}

\hypersetup{%
  pdfborderstyle={/S/U/W .5},% border style will be underline of width .5pt 
  colorlinks=false,
  linkbordercolor=red,       % color of internal links
  citebordercolor=blue,     % color of links to bibliography
  filebordercolor=magenta,   % color of file links
  urlbordercolor=blue,
  % linkcolor=black,citecolor=black,urlcolor=blue
}

\RequirePackage[breakable]{tcolorbox}
\newtcolorbox{mainbodybox}[1]{breakable,arc=0mm,
  titlerule=0mm, boxrule=.5pt,
  colback=white,colframe=black,
  coltitle=black,colbacktitle=white,
  fonttitle=\bfseries,title=#1}

% \singlespacing, \onehalfspacing, \doublespacing
\RequirePackage[doublespacing]{setspace}
\renewcommand{\doublespacing}{\setstretch{1.6}}

\newcommand{\TitleFont}[1]{{\fontsize{1.5cm}{1.8cm}\selectfont #1}}
\newcommand{\TitlextFont}[1]{{\fontsize{1.1cm}{1.3cm}\selectfont #1}}
    
\pagestyle{plain}

% Variables to hold the text fields for the preliminary pages
\newcommand{\Title}[1]{\gdef\SWFCField@Title{#1}} % 论文题目
\newcommand{\Titlext}[1]{\gdef\SWFCField@Titlext{#1}} % 论文题目2
\newcommand{\Studid}[1]{\gdef\SWFCField@Studid{#1}} % 学号
\newcommand{\Author}[1]{\gdef\SWFCField@Author{#1}} % 姓名
\newcommand{\Subject}[1]{\gdef\SWFCField@Subject{#1}} % 学科专业
\newcommand{\Research}[1]{\gdef\SWFCField@Research{#1}} % 研究方向
\newcommand{\Advisor}[1]{\gdef\SWFCField@Advisor{#1}} % 导师姓名
\newcommand{\AdvisorTitle}[1]{\gdef\SWFCField@AdvisorTitle{#1}} % 职称
\newcommand{\Advisortwo}[1]{\gdef\SWFCField@Advisortwo{#1}} % 导师姓名2
\newcommand{\AdvisorTitletwo}[1]{\gdef\SWFCField@AdvisorTitletwo{#1}} % 职称2
\newcommand{\Host}[1]{\gdef\SWFCField@Host{#1}} % 报告主持人
\newcommand{\Reportdate}[1]{\gdef\SWFCField@Reportdate{#1}} % 报告日期
\newcommand{\Year}[1]{\gdef\SWFCField@Year{#1}}  % 填表年
\newcommand{\Month}[1]{\gdef\SWFCField@Month{#1}}% 填表月
\newcommand{\Date}[1]{\gdef\SWFCField@Date{#1}}  % 填表日

\newcommand{\Poneone}[1]{\gdef\SWFCField@Poneone{#1}}
\newcommand{\Ponetwo}[1]{\gdef\SWFCField@Ponetwo{#1}}
\newcommand{\Ptwoone}[1]{\gdef\SWFCField@Ptwoone{#1}}
\newcommand{\Ptwotwo}[1]{\gdef\SWFCField@Ptwotwo{#1}}
\newcommand{\Ptwothree}[1]{\gdef\SWFCField@Ptwothree{#1}}
\newcommand{\Ptwofour}[1]{\gdef\SWFCField@Ptwofour{#1}}
\newcommand{\Pthreeone}[1]{\gdef\SWFCField@Pthreeone{#1}}
\newcommand{\Pthreetwo}[1]{\gdef\SWFCField@Pthreetwo{#1}}
\newcommand{\Pthreethree}[1]{\gdef\SWFCField@Pthreethree{#1}}

% \newcommand{\Projfrom}[1]{\gdef\SWFCField@Projfrom{#1}}
% \newcommand{\Docname}[1]{\gdef\SWFCField@Docname{#1}}
% \newcommand{\AdvisorSig}[1]{\gdef\SWFCField@AdvisorSig{#1}}
% \newcommand{\AdvisorGender}[1]{\gdef\SWFCField@AdvisorGender{#1}}
% \newcommand{\AdvisorAge}[1]{\gdef\SWFCField@AdvisorAge{#1}}
% \newcommand{\AdvisorDegree}[1]{\gdef\SWFCField@AdvisorDegree{#1}}
% \newcommand{\AdvisorWhere}[1]{\gdef\SWFCField@AdvisorWhere{#1}}
% \newcommand{\AdvisorComment}[1]{\gdef\SWFCField@AdvisorComment{#1}}
% \newcommand{\Univ}[1]{\gdef\SWFCField@Univ{#1}}

% \newcommand{\Grade}[1]{\gdef\SWFCField@Grade{#1}}

\newcommand{\SWFCtitlepage}{% Title page layout
  \thispagestyle{empty}
  \begin{center}
    \makebox[20em][s]{{\TitleFont{\textbf{西南林业大学}}}}\\[8mm]
    \makebox[37em][s]{{\TitlextFont{\textbf{学术型硕士生学位论文开题报告}}}}\\[18mm]
    \begin{large}
    \begin{minipage}{.9\linewidth}
        \extrarowsep=^5mm_-7pt
        \begin{tabu}spread \textwidth{@{}rX[c]@{}}
          \textbf{题\hspace{1em}目：}&\SWFCField@Title\\\tabucline{2-2}
          &\SWFCField@Titlext\\\tabucline{2-2}
        \end{tabu}
    \end{minipage}
    \vskip 2.5cm
    \begin{minipage}{.9\linewidth}
        \begin{center}
        \extrarowsep=^2mm_-7pt
        \begin{tabu}to \textwidth{@{}rX[c,1.2]rX[c]@{}}
          \textbf{学\hspace{2em}号：}&\SWFCField@Studid&
          \textbf{姓\hspace{2em}名：}&\SWFCField@Author\\\tabucline{2-2}\tabucline{4-4}
          \textbf{学科专业：}&\SWFCField@Subject&
          \textbf{研究方向：}&\SWFCField@Research\\\tabucline{2-2}\tabucline{4-4}
          \textbf{导师姓名：}&\SWFCField@Advisor{}&
          \textbf{职\hspace{2em}称：}&\SWFCField@AdvisorTitle\\\tabucline{2-2}\tabucline{4-4}
          &\SWFCField@Advisortwo{}&
          &\SWFCField@AdvisorTitletwo\\\tabucline{2-2}\tabucline{4-4}
          \textbf{报告主持人：}&\SWFCField@Host&
          \textbf{报告日期：}&\SWFCField@Reportdate\\\tabucline{2-2}\tabucline{4-4}
        \end{tabu}
        \end{center}
    \end{minipage}
  \vfill
  \textbf{填表日期：}\SWFCField@Year\,\textbf{年}\,%
  \SWFCField@Month\,\textbf{月}\,\SWFCField@Date\,\textbf{日}
  \end{large}
  % {\Large\textbf{教\,务\,处\,制}}\\[1cm]
\end{center}
\clearpage
}

\newcommand{\instructionpage}{% Instruction page
  \begin{center}
    {\LARGE\textbf{填\hspace{1em}表\hspace{1em}说\hspace{1em}明}}\\[5mm]
  \end{center}
  \vskip 3ex
  \begin{enumerate}
  \item 开题报告是硕士生培养的重要环节，研究生需在导师的指导下认真完成，具体要求参见《西南
    林业大学关于学术型研究生开题报告的规定（2012 年修订）》。
  \item 开题报告文献综述部分的基本要求：
    \begin{enumerate}
    \item 国内外本研究课题的发展现状、趋势及问题等，字数3000字左右。
    \item 参考文献量不少于20篇（其中人文社科类不少于30篇），对于个别新兴研究领域其文献量
      可酌情减少。
    \item 文献引用格式需符合《西南林业大学研究生学位论文格式的统一要求》的相关规定。
    \end{enumerate}
  \item 完成时间：研究生开题工作应于入学后第三学期内完成，具体时间各学院可根据本学院的学科
    特点和实际情况进行安排。
  \item 硕士生开题报告书应首先获导师认可和考核小组成员审阅后方可参加开题。
  \item 打印要求：此表用A4纸双面打印，各栏空格不够时，请自行加页。
  \item 开题报告通过、修改、签字完毕后，交各学院存档一份。
  \end{enumerate}
  \clearpage
}

\newcommand{\tablebody}{% main part
  \singlespacing\noindent
  \extrarowsep=^8pt_8pt
%  \tabulinesep=^5pt_1ex
  \begin{tabu}to \textwidth{|X[c,m]|}
    \tabucline-
    \\[-1ex]
    {\Huge\textbf{选题基本情况（{\emoji √}）}}\\[2ex]
  \end{tabu}
  \begin{tabu}to \textwidth{@{}|X[l]|@{}}
    本研究题目为：\\[1ex]
    \hspace{4em}1. 导师课题的一部分 （\hspace{1em}）；\\[.5ex]
    \hspace{4em}2. 委培单位的课题 （\hspace{1em}）；\\[.5ex]
    \hspace{4em}3. 其它（须具体说明）\uline{\hspace{18em}}。\\[.5ex]
    \tabucline-
  \end{tabu}
  \begin{tabu}to \textwidth{|X[c,m]|}
    \\[-1ex]
    {\LARGE\textbf{选题分类（{\emoji √}）}}\\[2ex]
   \end{tabu}
  \begin{tabu}to \textwidth{@{}|X[l]X[l]|@{}}
    1. 基础研究 （\hspace{1em}）&2. 应用研究 （\hspace{1em}）\\[1ex]
    3. 综合研究 （\hspace{1em}）&4. 其\hspace{2em}他 （\hspace{1em}）\\[1ex]
    \tabucline-    
  \end{tabu}
  \begin{tabu}to \textwidth{|X[c,m]|}
    \\[-1ex]
    {\LARGE\textbf{选题来源（{\emoji √}）}}\\[2ex]
   \end{tabu}
  \begin{tabu}to \textwidth{@{}|X[l]X[l]|@{}}
    1. 973、863 项目 （\hspace{1em}）&2. 国家社科规划、基金项目 （\hspace{1em}）\\
    3. 教育部人文、社会科学研究项目 （\hspace{1em}）&4. 国家自然科学基金项目 （\hspace{1em}）\\
    5. 中央、国家各部门项目 （\hspace{1em}）&6. 省（自治区、直辖市）项目 （\hspace{1em}）\\
    7. 国际合作研究项目 （\hspace{1em}）&8. 与港、澳、台合作研究项目 （\hspace{1em}）\\
    9. 企、事业单位委托项目 （\hspace{1em}）&10. 外资项目 （\hspace{1em}）\\
    11. 学校自选项目 （\hspace{1em}）&12. 国防项目 （\hspace{1em}）\\
    13. 非立项 （\hspace{1em}）&14. 其他 （\hspace{1em}）\\
    \tabucline-
  \end{tabu}

  \clearpage

  \noindent{\Large \textbf{一、立题依据}}

  \begin{mainbodybox}{1. 选题的理论和实践意义}
    \SWFCField@Poneone
  \end{mainbodybox}

  \begin{mainbodybox}{2. 文献综述（国内外本研究领域的发展现状、趋势及问题等，并附参考文献）}
    \SWFCField@Ponetwo
  \end{mainbodybox}

  \noindent{\Large \textbf{二、研究方案}}
  
  \begin{mainbodybox}{1. 研究内容、研究目标及拟解决的关键问题}
    \SWFCField@Ptwoone
  \end{mainbodybox}

  \begin{mainbodybox}{2. 拟采用的研究方法、技术路线、实验方案及可行性分析}
    \SWFCField@Ptwotwo
  \end{mainbodybox}

  \begin{mainbodybox}{3. 本研究的特色与创新之处}
    \SWFCField@Ptwothree
  \end{mainbodybox}
  
  \begin{mainbodybox}{4. 研究计划及预期研究结果}
    \SWFCField@Ptwofour
  \end{mainbodybox}

  \noindent{\Large \textbf{三、研究基础}}

  \begin{mainbodybox}{1. 已参加过的相关研究工作和已取得的研究工作进展}
    \SWFCField@Pthreeone
  \end{mainbodybox}
  
  \begin{mainbodybox}{2. 已具备的实验条件，尚缺少的实验条件和拟解决的途径}
    \SWFCField@Pthreetwo
  \end{mainbodybox}
  
  \begin{mainbodybox}{3. 研究经费预算和经费落实情况}
    \SWFCField@Pthreethree
  \end{mainbodybox}

  \clearpage

  \noindent{\Large \textbf{四、导师对开题报告的评价}}

  \noindent\begin{tabu}{|@{}X[r]@{}|}
    \tabucline-
    （就硕士生对国外研究现状的了解情况、研究内容、研究方法、预期成果等方面予以评价）\\[25ex]
    \makebox[20em]{导师签字：}\\
    年 \makebox[6em]{月}\makebox[2em][l]{日}\\\tabucline-
  \end{tabu}
  \vskip 1ex
  \noindent{\Large \textbf{五、开题报告小组评议意见}}

  \noindent\begin{tabu}to \textwidth {|c|X[2,c,m]|X[1.5,c,m]|X[5,c,m]|X[2,c,m]|}
    \tabucline-
    组成&姓名&职称&工作单位&本人签字\\\tabucline-
    组长&&&&\\\tabucline-
       &&&&\\\tabucline{2-5}
       &&&&\\\tabucline{2-5}
    成员&&&&\\\tabucline{2-5}
       &&&&\\\tabucline{2-5}
       &&&&\\\tabucline{2-5}
       &&&&\\\tabucline-
  \end{tabu}
  \clearpage
  
  \noindent{\Large \textbf{六、学科审查意见}}

  \noindent\begin{tabu}{|lX[r]|}
    \tabucline-
    学科对开题报告的意见：&\\[18ex]
    &\makebox[20em][l]{学科负责人签字：}\\
    &\makebox[4em][l]{年} \makebox[4em][l]{月} \makebox[2em][l]{日}\\\tabucline-
  \end{tabu}

  \vskip 1ex
  
  \noindent{\Large \textbf{七、学院审查意见}}

  \noindent\begin{tabu}{|lX[r]|}
    \tabucline-
    学院对开题报告的意见：&\\[18ex]
    &\makebox[20em][l]{主管（副）院长签字：}\\
    &\makebox[4em][l]{年} \makebox[4em][l]{月} \makebox[2em][l]{日}\\\tabucline-
  \end{tabu}
  \begin{flushright}
    \textbf{西南林业大学研究生处制}
  \end{flushright}
  \clearpage
}

\newcommand{\appendixtwo}{
  \noindent{}附件2：{\large \textbf{专家评议书}}
  \begin{center}
    {\Large\textbf{西南林业大学研究生开题报告专家评议书}}
  \end{center}
  \extrarowsep=^6pt_5pt
  \begin{tabu}{|c|X|c|X|c|X|c|X|}
    \tabucline-
    学号&&姓名&&性别&&导师&\\\tabucline-
  \end{tabu}
  \begin{tabu}{|c|X|c|X|}
    专业&&攻读学位&\checked{}\,硕士\qquad\unchecked{}博士\\\tabucline-
  \end{tabu}
  \begin{tabu}{|c|X|}
    拟选学位论文题目&\\\tabucline-
  \end{tabu}
  \begin{tabu}{|X|c|c|c|c|}
    评价等级（请在相应空格内划\emoji{√}）&优&良&中&差\\\tabucline-
    1、选题来源、选题依据（包括论文选题意义和国内外现状分析）&&&&\\\tabucline-
    2、论文创新之处&&&&\\\tabucline-
    3、论文研究目标、研究内容以及拟解决的关键问题&&&&\\\tabucline-
    4、论文拟采取的研究方法、技术路线、实验方案及其可行性&&&&\\\tabucline-
    5、论文研究计划、预期进展及预期成果&&&&\\\tabucline-
    6、已参加过的有关研究工作和已取得的研究工作成绩&&&&\\\tabucline-
    7、已具备的实验条件，尚缺少的实验条件和拟解决的途径&&&&\\\tabucline-
    8、研究经费预算和经费落实情况&&&&\\\tabucline-
  \end{tabu}
  \begin{tabu}{|@{}X[l]@{}|}
    \hspace{1ex}\textbf{专家综合评价意见与建议：}\\[6ex]\tabucline-
    \hspace{1ex}\textbf{专家对开题报告的总体评价结果（请划\emoji{√}）}\\\tabucline-
    \begin{tabu}{|X|X|X|}
      \unchecked{}\, 通过开题&\unchecked{}\, 通过开题，但需修改&\unchecked{}\, 不通过，重新
      开题
    \end{tabu}\\\tabucline-
    \hspace{1ex}评议专家签名：\\
    \makebox[25em][r]{日期：}\\\tabucline-
    \textbf{专家基本信息}\\\tabucline-
    \begin{tabu}{|r|X|r|X|}
      姓名&&职称&\\\tabucline-
      研究方向&&联系电话&\\\tabucline-
    \end{tabu}
    \begin{tabu}{|r|X|}
      工作单位&\\\tabucline-
    \end{tabu}
  \end{tabu}
  \begin{tabu}{|X[r]@{}|}
    \textbf{西南林业大学研究生处制}
  \end{tabu}
  \clearpage
}

\newcommand{\appendixthree}{
  \noindent{}附件3：{\large \textbf{考核小组评议书}}
  \begin{center}
    {\Large \textbf{西南林业大学研究生开题报告考核小组评议书}}
  \end{center}
%  \extrarowsep=^8pt_8pt
  \begin{tabu}{|p{4em}|p{6em}|p{4em}|X|}
    \tabucline-
    姓名&&学科专业& \begin{tabu}{X|c|X} &学院& \end{tabu}\\\tabucline-  
    研究方向&&拟选题目&\\\tabucline-
  \end{tabu}
  \vskip -1.7ex
  \begin{longtabu}{|p{4em}|@{}X@{}|}
    评价内容& \begin{tabu}{p{6em}|X[c]|@{}X[c,.15]@{}|X[.15]}
      评价参考&评分标准&参考\par{}分数&
    \end{tabu}\\\tabucline-
    立\par{}论\par{}依\par{}据& \begin{tabu}{p{6em}|X|@{}X[c,.15]@{}|X[.15]}
               研究意义&有重要科学意义或国民经济建设中的重要科技问题&10&\\\tabucline[on 2pt]{2-3}
                      &对学科发展有促进或有应用前景&8&\\\tabucline[on 2pt]{2-3}
                      &属一般问题&4&\\\tabucline[on 2pt]{2-3}
                      &科学意义或应用前景不大&2&\\\tabucline-
               学术思想&有明显的创新&15&\\\tabucline[on 2pt]{2-3}
                      &有一定的创新和特色&12&\\\tabucline[on 2pt]{2-3}
                      &创新性不强&6&\\\tabucline[on 2pt]{2-3}
                      &无创新&2&\\\tabucline-
               立项依据&充分，科学性强&15&\\\tabucline[on 2pt]{2-3}
                      &较充分，科学性强&12&\\\tabucline[on 2pt]{2-3}
                      &不够充分，科学性不强&6&\\\tabucline[on 2pt]{2-3}
                      &不充分或缺乏科学性&2&\\\tabucline-
               对国内外研究&清楚，且评价分析准确.全面&15&\\\tabucline[on 2pt]{2-3}
               现状分析&较清楚，评价分析较准确&12&\\\tabucline[on 2pt]{2-3}
                      &只了解部分现状，评价分析不够准确&6&\\\tabucline[on 2pt]{2-3}
                      &不了解现状，评价分析不够准确&2&
             \end{tabu}\\\tabucline-
    研\par{}究\par{}方\par{}案&\begin{tabu}{p{6em}|X|@{}X[c,.15]@{}|X[.15]}
               研究内容和拟&范围合适，重点突出；关键问题选择准确&10&\\\tabucline[on 2pt]{2-3}
               解决的关键问&基本合适，关键问题选择较准确&8&\\\tabucline[on 2pt]{2-3}
               题        &不够合适，只抓住了部分关键问题&4&\\\tabucline[on 2pt]{2-3}
                         &不合适，没有抓住关键问题&2&
                       \end{tabu}\\\tabucline{2-2}
    研\par{}究\par{}方\par{}案&\begin{tabu}{p{6em}|X|@{}X[c,.15]@{}|X[.15]}\tabucline-
               拟采用的研究&研究方法先进，且有创新，技术路线合理可行&10&\\\tabucline[on 2pt]{2-3}
               方法与技术路&方法可行，对现行方法有所改进，技术路线合理可行&8&\\\tabucline[on 2pt]{2-3}
               线（实验方案）&方法可行性不足或不够恰当，技术路线不够合理&4&\\\tabucline[on 2pt]{2-3}
                           &不可行，技术路线不合理&2\\\tabucline-
               研究的预期目&明确，能达到&5&\\\tabucline[on 2pt]{2-3}
                       标&基本明确，可能达到&4&\\\tabucline[on 2pt]{2-3}
                         &不够明确或不够恰当&2&\\\tabucline[on 2pt]{2-3}
                         &不明确&1&
             \end{tabu}\\\tabucline-
    研\par{}究\par{}基\par{}础&\begin{tabu}{p{6em}|X|@{}X[c,.15]@{}|X[.15]}
               与本研究有关&是原有研究工作的进一步深入，实验条件好&10&\\\tabucline[on 2pt]{2-3}
               的研究工作积&有一定相关工作的积累，基础较好，实验条件较好&8&\\\tabucline[on 2pt]{2-3}
               累和实验条件&做过类似工作，基础一般，实验条件不足&4&\\\tabucline[on 2pt]{2-3}
                         &没有这方面的工作基础，实验条件较差&2&
             \end{tabu}\\\tabucline-
    答\par{}辩\par{}情\par{}况&\begin{tabu}{p{6em}|X|@{}X[c,.15]@{}|X[.15]}
               对问题的理解&回答准确.精炼，思维敏捷&10&\\\tabucline[on 2pt]{2-3}
               能力和问题回&回答正确，思路比较清晰&8&\\\tabucline[on 2pt]{2-3}
                 答的准确性&回答基本正确，但不精练&4&\\\tabucline[on 2pt]{2-3}
                         &反应较慢，回答欠准确，思路不够清晰&2&
                       \end{tabu}\\\tabucline-
  \end{longtabu}
  \vskip -2ex
  \begin{tabu}{|@{}X@{}|c|p{2.7em}|}
    \begin{tabu}{X|X|X|X|X|X|X|X|X}
      A&A-&B+&B&B-&C+&C&C-&D\\\tabucline-
      96-100&90-95&85-89&80-84&75-79&70-74&65-69&60-64&0-59
    \end{tabu}&综\par{}合\par{}分&\\\tabucline-
  \end{tabu}
  \begin{tabu}{|X[l]|}
    综合分在 A- 以下的请提出具体修改意见：\\[6ex]\tabucline-
    评价结果：\hfill （注明“同意通过”或“不同意通过”）\\\tabucline-
  \end{tabu}
  \noindent{}注：1.本表每位评委一份，采用无记名方式；2.评分在 A-以下的必须对开题报告进行修改，经导师、
  学科签字同意才视为通过；3.评价综合分低于（C+）者为不通过。
  
  \begin{flushright}
    \textbf{西南林业大学研究生处制}
  \end{flushright}
}

\newcommand{\makeproposal}{% preliminary pages
  \SWFCtitlepage
  \doublespacing % global line spacing
  \instructionpage
  \tablebody
  \appendixtwo
  \appendixthree
}

% Initialize the variables to their default values
\Title{论文标题}
\Titlext{很长的标题}
\Author{罗志兵}
\Studid{20151111002}
\Advisor{赵家刚}
\AdvisorTitle{副教授}
\Advisortwo{钱家刚}
\AdvisorTitletwo{教授}
\Host{孙家刚}
\Reportdate{2018-06-06}
\Date{6}
\Month{6}
\Year{2017}
\Subject{林业信息工程}
\Research{操作系统}

\Poneone{% 1.1 选题的理论和实践意义
  \lipsum[1-3]
}

\Ponetwo{% 1.2 文献综述（国内外本研究领域的发展现状、趋势及问题等，并附参考文献）
  \lipsum[4-6]
  
  For example:
  
  \texttt{\textbackslash{}addbibresource\{os.bib\}}
  
  \texttt{\textbackslash{}nocite\{wangshuang03,yuyuan2009orange,}

  \hspace{4em}\texttt{intel86,zouhengming09,mos,tanenbaum2008modern\}}
  
  \texttt{\textbackslash{}printbibliography[heading=none]\{\}}
}

%
\Ptwoone{% 2.1 研究内容、研究目标及拟解决的关键问题
\lipsum[7-10]  
}
\Ptwotwo{% 2.2 拟采用的研究方法、技术路线、实验方案及可行性分析
  \lipsum[11-15]
}

\Ptwothree{% 2.3 本研究的特色与创新之处
  \lipsum[16-18]
}

\Ptwofour{% 2.4 研究计划及预期研究结果
  \lipsum[19-25]{}
}

\Pthreeone{% 3.1 已参加过的相关研究工作和已取得的研究工作进展
  \lipsum[26-27]
}
\Pthreetwo{% 3.2 已具备的实验条件，尚缺少的实验条件和拟解决的途径
  \lipsum[28-30]
}
\Pthreethree{% 3.3 研究经费预算和经费落实情况
  \lipsum[31-32]
}
