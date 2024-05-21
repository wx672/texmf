% 西南林业大学全日制本科教材选用审批表（2023）
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{swfutextbook}

\RequirePackage{pgfkeys}

\pgfkeys{
  School/.store in     = \SWFU@School,% 教学单位
  Course/.store in     = \SWFU@Course,   %课程名称
  CourseID/.store in   = \SWFU@CourseID, %课程号
  Degree/.store in     = \SWFU@Degree,% 开课层次（本科）
  Teacher/.store in    = \SWFU@Teacher,% 课程负责人
  TeacherSig/.store in = \SWFU@TeacherSig,%课程负责人签字
  TeacherSigDate/.store in = \SWFU@TeacherSigDate,%课程负责人签字时间戳
  Dept/.store in = \SWFU@Dept,% 课程负责教研室（系）
  DeptSig/.store in = \SWFU@DeptSig,%教研室（系）主任签字
  DeptSigDate/.store in = \SWFU@DeptSigDate,%教研室（系）主任签字时间戳
  Grade/.store in = \SWFU@Grade, %授课年级
  Subject/.store in    = \SWFU@Subject,% 授课专业
  Book/.store in = \SWFU@Book,%教材名称
  ISBN/.store in = \SWFU@ISBN,%书号（ISBN）
  BookAuthor/.store in = \SWFU@BookAuthor, %教材作者
  Publisher/.store in = \SWFU@Publisher,%出版单位
  PublishDate/.store in = \SWFU@PublishDate,%出版时间（x年x月）
  DBInfo/.store in = \SWFU@DBInfo,%入学校教材选用数据库情况（1. 首次申
  % 请入库；2. 已入库，入库时间___年）
  DBYear/.store in = \SWFU@DBYear,%入库时间___年
  BookType/.store in = \SWFU@BookType,%媒质类型（1. 纸质教材；2. 数字
  % 教材；3. 新形态教材）
  BookFrom/.store in = \SWFU@BookFrom,%教材出处（1. 境内教材；2. 境外
  % 原版；3. 境内影印或翻译出版）
  BookCls/.store in = \SWFU@BookCls,%教材类型（1. “马工程”；2. 规划教
                                %材；3. 精品、优秀教材；4. 普通教材；
                                %5. 其它______；6. 无。）
  BookWhy/.store in = \SWFU@BookWhy,%首次选用依据/再次选用使用效果评价意见
  Default/.style = {%
    School = {大数据与智能工程学院},    %教学单位
    Course =,%课程名称
    CourseID =,%课程号
    Degree     = {本科}, %开课层次
    Teacher       = {王晓林},%课程负责人
    TeacherSig =,%课程负责人签字
    TeacherSigDate={年\hspace{2em}月\hspace{2em}日},%课程负责人签字时间戳
    Dept ={计算机科学与工程系},% 课程负责教研室（系）
    DeptSig =,%教研室（系）主任签字
    DeptSigDate ={年\hspace{2em}月\hspace{2em}日},%教研室（系）主任签字时间戳
    Grade =, %授课年级
    Subject    = {计算机科学与技术},       %授课专业
    Book =,%教材名称
    ISBN =,%书号（ISBN）
    BookAuthor =, %教材作者
    Publisher =,%出版单位
    PublishDate =,%出版时间（x年x月）
    DBInfo =,%入学校教材选用数据库情况（1. 首次申
    % 请入库；2. 已入库，入库时间___年）
    DBYear ={\hspace{4em}},%入库时间___年
    BookType ={1},%媒质类型（1. 纸质教材；2. 数字
    % 教材；3. 新形态教材）
    BookFrom ={1},%教材出处（1. 境内教材；2. 境外
    % 原版；3. 境内影印或翻译出版）
    BookCls={3},%教材类型（1. “马工程”；2. 规划教材；
    % 3. 精品、优秀教材；4. 普通教材； 5. 其它______；6. 无。）
    BookWhy={规划教材，使用效果良好。}%首次选用依据/再次选用使用效果评价意见
  }}

\newcommand{\swfusetup}[1]{\pgfkeys{#1}}

\LoadClass{article}%[scheme=chinese]{ctexart}%zihao=-4

\RequirePackage{wx672babel}

\RequirePackage[ % showframe,
paperwidth=210mm,paperheight=297mm,
top=2cm,bottom=2cm,
left=2cm,right=2.5cm
]{geometry}

\RequirePackage{tabularray,graphicx,newunicodechar}
\newfontfamily\symbola{Symbola Nerd Font}
\newunicodechar{☐}{{\symbola ☐}}%ballot box 🗆
\newunicodechar{☑}{{\symbola ☑}}%checked box tick 🗹

\newcommand{\makeform}{%
  \pagestyle{empty}%
  \begin{center}
    \LARGE\bfseries 西南林业大学全日制本科教材选用审批表
  \end{center}
  教学单位：{\ttfamily\SWFU@School}\par\noindent
  \begin{tblr}{colspec={Q[3em,c]ccX[l]cX[c]}, vlines, hlines,%
      cell{1}{1}={r=4}{c,m},%课程信息
      cell{1,2,3}{3}={c=2}{c,font=\ttfamily},%课程名称、课程负责人、教研室
      cell{4}{3}={c=4}{c,font=\ttfamily},%授课专业
      cell{5}{1}={r=7}{c,m},%选用教材信息
      cell{5}{3}={c=4}{c,font=\ttfamily},%教材名称
      cell{6,7}{3}={c=2}{c,font=\ttfamily},%书号、出版单位
      cell{8-11}{4}={c=3}{l,m},%入库情况、媒质类型、教材出处、教材类型
      cell{3}{2}={c,m},%
      cell{8}{2}={c,m},%
      cell{12-15}{2}={c=5}{c,f},%
      cell{8-11}{3}={c,font=\ttfamily},%
      cell{1,2,3,6,7}{6}={c,font=\ttfamily}
    }
    {课程\\信息}&课程名称&\SWFU@Course&&开课层次&\SWFU@Degree\\
    &课程负责人&\SWFU@Teacher&&课程号&\SWFU@CourseID\\
    &{课程负责\\教研室（系）}&\SWFU@Dept&&授课年级&\SWFU@Grade\\
    &授课专业&\SWFU@Subject&&&\\
    %%%%%%%%%%%%%%%%%%%%%%%%%%%
    {选用\\教材\\信息}&教材名称（版次）&\SWFU@Book&&&\\
    &书号（ISBN）&\SWFU@ISBN&&教材作者&\SWFU@BookAuthor\\
    &出版单位&\SWFU@Publisher&&出版时间&\SWFU@PublishDate\\
    &{入学校教材选\\用数据库情况}&\SWFU@DBInfo&{1.\,首次申请入学校教材%
      选用数据库\\2.\,已入学校教材选用数据库，入库时间%
      \underline{\SWFU@DBYear}}&&\\
    &媒质类型&\SWFU@BookType&{1.\,纸质教材\quad 2.\,数字教材\quad 3.\,新形态教材}&&\\
    &教材出处&\SWFU@BookFrom&{1.\,境内教材\quad 2.\,境外原版\quad 3.\,境内影印或%
      翻译出版}&&\\
    &教材类型&\SWFU@BookCls&{1.\,“马工程”重点教材及国家统编教材\quad
      2.\,规划教材（国家级、省级）\\3.\,精品、优秀教材（国家级、省级、学会、
      行业等）\\4.\,普通教材\quad 5.\,其他\underline{\hspace{4em}}\quad 6.\,无}&&\\
    %%%%%%%%%%%%%%%%%%%
    {首次选\\用依据\\/\\再次选\\用使用\\效果评\\价意见}&
      \begin{minipage}[m]{.95\linewidth}
        {\ttfamily\SWFU@BookWhy}\par
        \vspace*{1cm}
        \begin{flushright}
          课程负责人签字：\quad\SWFU@TeacherSig\qquad%
          教研室（系）主任签字：\quad\SWFU@DeptSig\\
          \SWFU@TeacherSigDate\hspace{9em}\SWFU@DeptSigDate%
        \end{flushright}
      \end{minipage}%
    &&&&\\
    %%%%%%%%%%%%%%%%%%%%%%%
    {教学\\科研\\单位\\审核\\意见}&
      \begin{minipage}[c]{.95\linewidth}
        教材选用审核专家名单（不少于3人）：\par\bigskip
        教材选用审核意见：\qquad ☑同意选用\qquad ☐不同意选用\par\bigskip
        \begin{flushright}
          专家组组长签字：\hspace{10em}%
          学院党委书记签字（院党委章）：\hspace{25mm}\,\par\medskip
          年\hspace{2em}月\hspace{2em}日%
          \hspace{9em}年\hspace{2em}月\hspace{2em}日%
        \end{flushright}
      \end{minipage}%      
    &&&&\\
    {公示期}&&&&&\\
    {学校教\\材工作\\委员会\\意见}&%
      \begin{minipage}[m]{.95\linewidth}
        \hfill{}年\hspace{2em}月\hspace{2em}日%
      \end{minipage}
    &&&&\\
  \end{tblr}\par
  \noindent%
  {\ttfamily%
    注：“马工程”重点教材及国家统编教材可直接通过教学单位审核环节进行公示。}
}
