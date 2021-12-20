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
% style=gb7714-2015,gbpub=false,gbtype=false,gbpunctin=false
]{biblatex}
\renewcommand*{\bibfont}{\small}

\RequirePackage[ % showframe,
paperwidth=210mm,paperheight=297mm,
top=2cm,bottom=2cm,
left=1.5cm,right=1.5cm
]{geometry}

\RequirePackage{tabularray}

\newcommand{\makeform}{%
  \pagestyle{empty}%
  \begin{center}
    \LARGE\heiti 西南林业大学双语教学课程申请表
  \end{center}
  \begin{tblr}{width=\linewidth,colspec={Q[6em,c]rcrcrX[c]}, vlines, hline{1-4}={solid},%
      cell{1}{1}={r=4,c=1}{c,m},%
      cell{4}{3}={c=5}{c,font=\ttfamily},%
      column{3,5,7}={font=\ttfamily},%
    }
    {申请人\\基本信息}&%
    姓名 & \SWFU@Name & 性别 & \SWFU@Gender & 出生年月 & \SWFU@Dayofbirth\\
    &学历 & \SWFU@Diploma & 专业技术职务 & \SWFU@Title & 电话 & \SWFU@Phone\\
    &学位 & \SWFU@Degree & 行政职务 & \SWFU@Admin & 学科专业 & \SWFU@Subject\\
    &所在学院 & \SWFU@School\\
  \end{tblr}\par
  \vspace*{-1pt}
  \noindent%
  \begin{tblr}{width=\linewidth,colspec={Q[6em,c]rcrcrX[c]}, vlines, hline{1-4}={solid},%
      cell{1}{1}={r=4,c=1}{c,m},%
      cell{2}{5}={c=3}{c,font=\ttfamily},%
      cell{3,4}{3}={c=5}{c,font=\ttfamily},%
      column{3,5,7}={font=\ttfamily},%
    }
    课程信息&%
    学期&\SWFU@Term&开课学院&\SWFU@Schooltwo&课程名称&\SWFU@Course\\
    &外语语种&\SWFU@Language&课程班级&\SWFU@Class\\
    &使用教材&\parbox{35em}{\SWFU@Textbook}\\
    &自编讲义&\SWFU@Owntext\\
  \end{tblr}\par
  \vspace*{-1pt}
  \noindent
  \begin{tblr}{width=\linewidth, colspec={cX}, vlines, hlines,%
      column{2}={c,font=\ttfamily}, rows={28mm},
    }
    学术研究                   &\SWFU@Research\\
    {外语水平及\\双语教学经历} & \SWFU@Experience\\
    获奖情况                   &\SWFU@Award\\
    {教研室\\审核意见}         &\\
    {教学院（部）\\审核意见}   &\\
    {教务处\\审核意见}         &\\
  \end{tblr}}
