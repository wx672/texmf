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

\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

\LoadClass[scheme=plain]{ctexart}

\RequirePackage[backend=biber,url=false,doi=false,isbn=false,
style=gb7714-2015,gbpub=false,gbtype=false,gbpunctin=false]{biblatex}
\renewcommand*{\bibfont}{\scriptsize}

\RequirePackage{wx672hyperref}

\RequirePackage[ % showframe,
paperwidth=210mm,paperheight=297mm,
top=2cm,bottom=2cm,
left=1.5cm,right=1.5cm
]{geometry}

\RequirePackage{tabularx}
\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}} % for centering p column
\newcolumntype{C}{>{\centering\arraybackslash}X}

\newcommand{\makeform}{%
  \pagestyle{empty}%
  {\centering {\textbf {\LARGE\heiti 西南林业大学双语教学课程申请表}}\\[4ex]
    \begin{tabularx}{\textwidth}{|P{6em}|@{}C@{}|}\hline%
      申请人基本\par{}信息 &
                             
                             {\setlength{\extrarowheight}{3pt}
                             \begin{tabularx}{.857\textwidth}{r|c|r|c|r|C@{}}
                                           姓名&\SWFU@Name&性别&\SWFU@Gender&出生年月&\SWFU@Dayofbirth\\\hline%
                                           学历&\SWFU@Diploma&专业技术职务&\SWFU@Title&电话&\SWFU@Phone\\\hline%
                                           学位&\SWFU@Degree&行政职务&\SWFU@Admin&学科专业&\SWFU@Subject\\\hline%
所在学院&\multicolumn{5}{c}{\SWFU@School}\\
                                         \end{tabularx}} \\\hline
      课程信息 &
                 {\setlength{\extrarowheight}{3pt}
                 \begin{tabularx}{.857\textwidth}{r|c|r|C|r|C@{}}
                   学期&\SWFU@Term&开课学院&{\SWFU@Schooltwo}&课程名称&{\kaishu\SWFU@Course}\\\hline
                   外语语种&{\SWFU@Language}&课程班级&\multicolumn{3}{c}{\kaishu\SWFU@Class}\\\hline
                   使用教材&\multicolumn{5}{l}{\,\SWFU@Textbook}\\\hline
                   自编讲义&\multicolumn{5}{c}{\SWFU@Owntext}\\
                 \end{tabularx}} \\\hline
    \end{tabularx}\\[-2pt]
    {\setlength{\extrarowheight}{35pt}
    \begin{tabularx}{\textwidth}{|P{6em}|@{}C@{}|}
      学术研究&\SWFU@Research\\[40pt]\hline
      外语水平及\par{}双语教学经历 & \SWFU@Experience\\[40pt]\hline
      获奖情况 & \SWFU@Award\\[40pt]\hline
      教研室审核\par{}意见 & \\[40pt]\hline
      教学院（部）\par{}审核意见 & \\[40pt]\hline
      教务处审核\par{}意见 & \\[40pt]\hline
    \end{tabularx}}}}
