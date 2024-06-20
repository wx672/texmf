% 西南林业大学全日制本科教材选用审批表（2023）
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfutextbook}

\RequirePackage{pgfkeys}

\pgfkeys{
  School/.store     in = \SWFU@School,    %教学单位
  Course/.store     in = \SWFU@Course,    %课程名称
  CourseID/.store   in = \SWFU@CourseID,  %课程号
  Degree/.store     in = \SWFU@Degree,    %开课层次（本科）
  Teacher/.store    in = \SWFU@Teacher,   %课程负责人
  TeacherSig/.store in = \SWFU@TeacherSig,%课程负责人签字
  TeacherSigYear/.store  in = \SWFU@TeacherSigYear, %
  TeacherSigMonth/.store in = \SWFU@TeacherSigMonth,%
  TeacherSigDay/.store   in = \SWFU@TeacherSigDay,  %
  Dept/.store in = \SWFU@Dept,      %课程负责教研室（系）
  DeptSig/.store in = \SWFU@DeptSig,%教研室（系）主任签字
  DeptSigYear/.store  in = \SWFU@DeptSigYear, %
  DeptSigMonth/.store in = \SWFU@DeptSigMonth,%
  DeptSigDay/.store   in = \SWFU@DeptSigDay,  %
  Grade/.store   in = \SWFU@Grade,  %授课年级
  Subject/.store in = \SWFU@Subject,% 授课专业
  Book/.store in = \SWFU@Book,%教材名称
  ISBN/.store in = \SWFU@ISBN,%书号（ISBN）
  BookAuthor/.store  in = \SWFU@BookAuthor, %教材作者
  Publisher/.store   in = \SWFU@Publisher,  %出版单位
  PublishDate/.store in = \SWFU@PublishDate,%出版时间（x年x月）
  DBInfo/.store in = \SWFU@DBInfo,%入学校教材选用数据库情况（1. 首次申
  %                                请入库；2. 已入库，入库时间___年）
  DBYear/.store in = \SWFU@DBYear,%入库时间___年
  BookType/.store in = \SWFU@BookType,%媒质类型（1. 纸质教材；2. 数字
  %                                    教材；3. 新形态教材）
  BookFrom/.store in = \SWFU@BookFrom,%教材出处（1. 境内教材；2. 境外
  %                                    原版；3. 境内影印或翻译出版）
  BookCls/.store in = \SWFU@BookCls,%教材类型（1. “马工程”；2. 规划教
  %                                  材；3. 精品、优秀教材；4. 普通教材；
  %                                  5. 其它______；6. 无。）
  BookWhy/.store in = \SWFU@BookWhy,%首次选用依据/再次选用使用效果评价意见
  Default/.style = {%
    School = {大数据与智能工程学院},%教学单位
    Course   =,%课程名称
    CourseID =,%课程号
    Degree   = {本科},  %开课层次
    Teacher  = {王晓林},%课程负责人
    TeacherSig =,      %课程负责人签字
    TeacherSigYear  ={{\hwfamily\the\year}}, %
    TeacherSigMonth ={{\hwfamily\the\month}},%
    TeacherSigDay   ={{\hwfamily\the\day}},  %
    Dept ={计算机科学与工程系},% 课程负责教研室（系）
    DeptSig =,%教研室（系）主任签字
    DeptSigYear  ={{\hwfamily\the\year}}, %
    DeptSigMonth ={{\hwfamily\the\month}},%
    DeptSigDay   ={{\hwfamily\the\day}},  %
    Grade  =,               %授课年级
    Subject={计算机科学与技术},%授课专业
    Book=,%教材名称
    ISBN=,%书号（ISBN）
    BookAuthor=,%教材作者
    Publisher =,%出版单位
    PublishDate=,%出版时间（x年x月）
    DBInfo=,%入学校教材选用数据库情况（1. 首次申请入库；2. 已入库，入库时间___年）
    DBYear={\hspace{3em}},%入库时间___年
    BookType={1},%媒质类型（1. 纸质教材；2. 数字教材；3. 新形态教材）
    BookFrom={1},%教材出处（1. 境内教材；2. 境外原版；3. 境内影印或翻译出版）
    BookCls={3},%教材类型（1. “马工程”；2. 规划教材；
    %            3. 精品、优秀教材；4. 普通教材； 5. 其它______；6. 无。）
    BookWhy={规划教材，使用效果良好。}%首次选用依据/再次选用使用效果评价意见
  }}

\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

\LoadClass[12pt]{article}%

\RequirePackage{wx672babel}

\RequirePackage[%showframe,%
a4paper,nomarginpar,%
vmargin=2cm,%
hmargin=2cm,%
]{geometry}

\RequirePackage{tabularray,graphicx,newunicodechar}
\newfontfamily\symbola{Symbola Nerd Font}
\newunicodechar{☐}{{\symbola ☐}}%ballot box 🗆
\newunicodechar{☑}{{\symbola ☑}}%checked box tick 🗹

\newcommand{\makeform}{%
  \pagestyle{empty}%
  \begin{center}
    \Large\sffamily\bfseries 西南林业大学全日制本科教材选用审批表
  \end{center}
  教学单位：{\ttfamily\SWFU@School}\par\noindent
  \begin{tblr}{colspec={Q[3em,c]Q[7em,c]X[c]cQ[6em,c]}, vlines, hlines,%
      rowsep=.25\baselineskip, rows={m}, cells={m},%
      column{3,5}={font=\ttfamily},%
      cell{1}{1}={r=4}{c},%课程信息
      cell{4}{3}={c=3}{c},%授课专业
    }
    {课程\\信息}%
    &课程名称&\SWFU@Course&开课层次&\SWFU@Degree\\%
    &课程负责人&\SWFU@Teacher&课程号&\SWFU@CourseID\\%
    &{课程负责\\教研室（系）}&\SWFU@Dept&授课年级&\SWFU@Grade\\%
    &授课专业&\SWFU@Subject&&\\
  \end{tblr}\\[-1pt]
  %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
  \begin{tblr}{colspec={Q[3em,c]Q[7em,c]Q[1em,c]X[l]cQ[6em,c]}, vlines, hline{2-Z},%
      rowsep=.25\baselineskip, rows={m}, cells={m},%
      column{3,6}={font=\ttfamily},%
      cell{7}{3}={font=\rmfamily},%
      cell{1}{1}={r=7}{c},%选用教材信息
      cell{1}{3}={c=4}{c},%教材名称
      cell{2,3}{3}={c=2}{c},%书号、出版单位
      cell{4-7}{4}={c=3}{l},%入库情况、媒质类型、教材出处、教材类型
    }
    {选用\\教材\\信息}%
    &教材名称(版次)&\SWFU@Book&&&\\
    &书号(ISBN)&\SWFU@ISBN&&教材作者&\SWFU@BookAuthor\\
    &出版单位&\SWFU@Publisher&&出版时间&\SWFU@PublishDate\\
    &{入学校教材选\\用数据库情况}&\SWFU@DBInfo&{%
      \makebox[10em][l]{1.\,首次申请入学校教材选用数据库}\\%
      \makebox[10em][l]{2.\,已入学校教材选用数据库，入库时间\underline{\SWFU@DBYear}年}}&&\\
    &媒质类型&\SWFU@BookType&{%
      \makebox[10em][l]{1.\,纸质教材\quad 2.\,数字教材\quad 3.\,新形态教材}}&&\\
    &教材出处&\SWFU@BookFrom&{%
      \makebox[10em][l]{1.\,境内教材\quad 2.\,境外原版\quad 3.\,境内影印或翻译出版}}&&\\
    &教材类型&{后\\面\\打\\勾}&{%
      \makebox[10em][l]{1.\:☐\,“马工程”重点教材及国家统编教材}\\%
      \makebox[10em][l]{2.\:☑\,规划教材（国家级、省级）}\\%
      \makebox[10em][l]{3.\:☐\,精品、优秀教材(国家级、省级、学会、行业等)}\\%
      \makebox[10em][l]{4.\:☐\,普通教材\quad5.\:☐\,其他\underline{\hspace{4em}}\quad6.\:☐\,无}}&&\\
  \end{tblr}\par\vspace*{-2pt}%
  \noindent%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
  \begin{tblr}{colspec={cX[l]}, vlines, hline{2-Z},%
      rows={m}, rowsep=.28\baselineskip,%
      cell{4}{2}={f},%
    }
    {首次选\\用依据\\/\\再次选\\用使用\\效果评\\价意见}&%
    {\ttfamily\SWFU@BookWhy}\par
    \vspace*{15mm}
    \hfill{}%
    课程负责人签字：\;\makebox[3cm][l]{\SWFU@TeacherSig}%
    教研室（系）主任签字：\;\makebox[25mm][l]{\SWFU@DeptSig}\par\medskip%
    \hfill {\SWFU@TeacherSigYear}%
    \makebox[9em][s]{年{\SWFU@TeacherSigMonth}月{\SWFU@TeacherSigDay}日}%
    \hspace{8em} {\SWFU@DeptSigYear}%
    \makebox[9em][s]{年{\SWFU@DeptSigMonth}月{\SWFU@DeptSigDay}日}\\%
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% 
    {教学\\科研\\单位\\审核\\意见}&%
    {\;\par%
      教材选用审核专家名单（不少于3人）：\par\bigskip
      教材选用审核意见：\quad ☐同意选用\qquad ☐不同意选用\par\bigskip
      \makebox[.9\linewidth][l]{%
        专家组组长签字：\hspace{25mm}%
        学院党委书记签字（院党委章）：\hspace{2cm}%
      }\par\medskip\hfill%
      \makebox[9em][s]{年月日}\hspace{8em}\makebox[9em][s]{年月日}%
    }\\%
    {公示期}&\\%
    {学校教\\材工作\\委员会\\意见}&%    
    \hfill\makebox[9em][s]{年月日}\\%
  \end{tblr}\par
  \noindent%
  {\ttfamily%
    注：{\bfseries “马工程”重点教材及国家统编教材}可直接通过教学单位审核环节进行公示。}
}
