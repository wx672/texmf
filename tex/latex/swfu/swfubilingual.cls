% 西南林业大学双语教学课程申请表
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfubilingual}

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
    Name       = {王晓林},%
    Gender     = {男},%
    Dayofbirth = 1969-03,%
    Diploma    = {研究生},                 %学历
    Degree     = {硕士},                    %学位
    Title      = {讲师},                     %专业技术职务
    Phone      = 13577067397,
    Admin      = {无},                       %行政职务
    Subject    = {计算机科学与技术},       %学科专业
    School     = {大数据与智能工程学院},    %所在学院
    Schooltwo  = {大数据与智能工程学院}, %开课学院
    Language   = {英语},                  %外语语种
    Owntext    = {否},                     %自编讲义资料?
    Research   = {无},                    %学术研究
    Experience = {十余年双语教学经验},  %外语水平及双语教学经历
    Award      = {无},                       %获奖情况
  }}

\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

\LoadClass[scheme=chinese]{ctexart}

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

\RequirePackage[backend=biber,url=false,doi=false,isbn=false,
style=gb7714-2015,gbpub=false,gbtype=false,gbpunctin=false]{biblatex}
\renewcommand*{\bibfont}{\scriptsize}

\RequirePackage[ % showframe,
paperwidth=210mm,paperheight=297mm,
top=2cm,bottom=2cm,
left=1.5cm,right=1.5cm
]{geometry}

\RequirePackage{tabularx,makecell}
\newcolumntype{M}[1]{>{\centering\arraybackslash}m{#1}} % for centering p column
\newcolumntype{P}[1]{>{\centering\arraybackslash}p{#1}} % for centering p column
\newcolumntype{C}{>{\centering\arraybackslash}X}
\renewcommand{\arraystretch}{1.2}

\newcommand\vfixed[1]{\rule{0pt}{30pt}\par{}#1\par{}\rule{0pt}{30pt}}%\vfixed{text}

\newcommand{\makeform}{%
  \pagestyle{empty}%
  \begin{center}
    \LARGE\heiti 西南林业大学双语教学课程申请表
  \end{center}
  \begin{tabularx}{\textwidth}{|M{63.5pt}|@{}C@{}|}\hline%
    \makecell{申请人\\基本信息}%.857
    & {\begin{tabularx}{435pt}{r|>{\kaishu}c|r|>{\kaishu}c|r|>{\kaishu}C@{}}%
         姓名 & \SWFU@Name & 性别 & \SWFU@Gender & 出生年月 & \texttt{\SWFU@Dayofbirth}\\\hline%
         学历 & \SWFU@Diploma & 专业技术职务 & \SWFU@Title & 电话 & \texttt{\SWFU@Phone}\\\hline%
         学位 & \SWFU@Degree & 行政职务 & \SWFU@Admin & 学科专业 & \SWFU@Subject\\\hline%
         所在学院 & \multicolumn{5}{c}{\kaishu\SWFU@School}\\
       \end{tabularx}} \\\hline%
    课程信息
    & {\begin{tabularx}{435pt}{r|>{\kaishu}c|r|>{\kaishu}c|r|>{\kaishu}C@{}}%
         学期&\texttt{\SWFU@Term}&开课学院&\SWFU@Schooltwo&课程名称&\SWFU@Course\\\hline%
         外语语种&{\SWFU@Language}&课程班级&\multicolumn{3}{c}{\kaishu\texttt{\SWFU@Class}}\\\hline%
         使用教材&\multicolumn{5}{l}{\,\SWFU@Textbook}\\\hline
         自编讲义&\multicolumn{5}{c}{\kaishu\SWFU@Owntext}\\
       \end{tabularx}} \\\hline
  \end{tabularx}\\[-1pt]
  \begin{tabularx}{\textwidth}{|M{6em}|@{}>{\kaishu}C@{}|}
    \makecell{学术研究}
    & \begin{minipage}[c][3cm]{1.0\linewidth}
      \centering\SWFU@Research
    \end{minipage}\\\hline
    \makecell{外语水平及\\双语教学经历}
    & \begin{minipage}[c][3cm]{1.0\linewidth}
      \centering\SWFU@Experience
    \end{minipage}\\\hline
    \makecell{获奖情况}
    & \begin{minipage}[c][3cm]{1.0\linewidth}
      \centering\SWFU@Award
    \end{minipage}\\\hline
    \makecell{教研室\\审核意见}
    & \begin{minipage}[c][3cm]{1.0\linewidth}\end{minipage}\\\hline
    \makecell{教学院（部）\\审核意见}
    & \begin{minipage}[c][3cm]{1.0\linewidth}\end{minipage}\\\hline
    \makecell{教务处\\审核意见}
    & \begin{minipage}[c][3cm]{1.0\linewidth}\end{minipage}\\\hline
  \end{tabularx}}
