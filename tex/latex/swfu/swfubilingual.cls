% 西南林业大学双语教学课程申请表
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfubilingual}

\RequirePackage{ifxetex} % XeTeX only

\RequirePackage{pgfkeys}

\pgfkeys{
  Name/.store in       = \SWFU@Name,%
  Gender/.store in     = \SWFU@Gender,%
  Dayofbirth/.store in = \SWFU@Dayofbirth,%
  Diploma/.store in    = \SWFU@Diploma,%
  Degree/.store in     = \SWFU@Degree,%
  Title/.store in      = \SWFU@Title,%
  Phone/.store in      = \SWFU@Phone,%
  Admin/.store in      = \SWFU@Admin,%
  Subject/.store in    = \SWFU@Subject,%
  School/.store in     = \SWFU@School,%
  Schooltwo/.store in  = \SWFU@Schooltwo,%
  Language/.store in   = \SWFU@Language,%
  Owntext/.store in    = \SWFU@Owntext,%
  Research/.store in   = \SWFU@Research,%
  Experience/.store in = \SWFU@Experience,%
  Award/.store in      = \SWFU@Award,%
  Term/.store in       = \SWFU@Term,     %学期
  Course/.store in     = \SWFU@Course,   %课程名称
  Class/.store in      = \SWFU@Class,    %班级
  Textbook/.store in   = \SWFU@Textbook, %教材
  Default/.style       = {%
    Name       = {\kaishu 王晓林},%
    Gender     = {\kaishu 男},%
    Dayofbirth = 1969-03,%
    Diploma    = {\kaishu 研究生},                 %学历
    Degree     = {\kaishu 硕士},                    %学位
    Title      = {\kaishu 讲师},                     %专业技术职务
    Phone      = 13577067397,
    Admin      = {\kaishu 无},                       %行政职务
    Subject    = {\kaishu 计算机科学与技术},       %学科专业
    School     = {\kaishu 大数据与智能工程学院},    %所在学院
    Schooltwo  = {\kaishu 大数据与智能工程学院}, %开课学院
    Language   = {\kaishu 英语},                  %外语语种
    Owntext    = {\kaishu 否},                     %自编讲义资料?
    Research   = {\kaishu 无},                    %学术研究
    Experience = {\kaishu 十余年双语教学经验},  %外语水平及双语教学经历
    Award      = {\kaishu 无},                       %获奖情况
  }}

\LoadClass[scheme=plain]{ctexart}

\RequirePackage{tabu,array,tabularx}
\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}} % for centering p column

\RequirePackage{wx672hyperref, wx672bib}
\renewcommand*{\bibfont}{\scriptsize}

\RequirePackage[ % showframe,
paperwidth=210mm,paperheight=297mm,
top=2cm,bottom=2cm,
left=1.5cm,right=1.5cm
]{geometry}

\newcommand{\makeform}{\pagestyle{empty}  
  {\centering
    {\textbf {\LARGE\heiti 西南林业大学双语教学课程申请表}}\\[4ex]
    \begin{tabu}{|X[.137,c]|@{}X[c]@{}|}\tabucline-%
      \vspace*{2ex}申请人基本\par 信息 &
      \tabulinesep=1mm
      \begin{tabu}{r|X[-1,c]|r|X[-1,c]|r|X[c]@{}}
        姓名&{\SWFU@Name}&性别&{\SWFU@Gender}&
        出生年月&\SWFU@Dayofbirth\\\tabucline-
        学历&{\SWFU@Diploma}&专业技术职务&{\SWFU@Title}&
        电话&\SWFU@Phone\\\tabucline-
        学位&{\SWFU@Degree}&行政职务&{\SWFU@Admin}&
        学科专业&{\SWFU@Subject}\\\tabucline-
        所在学院&\multicolumn{5}{c}{\SWFU@School}\\
      \end{tabu} \\\tabucline-
      \vspace*{4ex}课程信息 &
      \tabulinesep=1mm
      \begin{tabu}{r|X[-1,c]|r|X[-1,c]|r|X[,c]@{}}
        学期&\SWFU@Term&开课学院&{\SWFU@Schooltwo}&
        课程名称&{\SWFU@Course}\\\tabucline-
        外语语种&{\SWFU@Language}&
        课程班级&\multicolumn{3}{c}{\SWFU@Class}\\\tabucline-
        使用教材&\multicolumn{5}{c}{\SWFU@Textbook}\\\tabucline-
        自编讲义&\multicolumn{5}{c}{\SWFU@Owntext}\\
      \end{tabu} \\\tabucline-
    \end{tabu}\vskip -1pt
    \tabulinesep=7ex
    \begin{tabu}{|X[-1,c,m]|X[c,m]|}
      学术研究&{\SWFU@Research}\\\tabucline-
      外语水平及\par 双语教学经历 & {\SWFU@Experience}\\\tabucline-
      获奖情况 & {\SWFU@Award}\\\tabucline-
      教研室审核\par 意见 & \\\tabucline-
      教学院（部）\par 审核意见 & \\\tabucline-
      教务处审核\par 意见 & \\\tabucline-
    \end{tabu}}}
