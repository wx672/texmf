---
CJKmainfont: Noto Serif CJK SC
CJKsansfont: Noto Sans CJK SC
title: 怎样将中文Markdown文件转为PDF
author: 王晓林
date: 2023年6月6日
...

很简单，在Markdown文件的开头加上下面两行就行了。

    CJKmainfont: Noto Serif CJK SC
	CJKsansfont: Noto Sans CJK SC
	
显而易见，上面两行无非就是指明了在生成PDF文件时要采用的中文字体。字体
当然可以随便换。想知道系统里有哪些现成的中文字体可用，可以这样：

    fc-list | rg cjk

默认情况下，`pandoc`会采用`pdflatex`来生成PDF文件。不幸的是`pdflatex`，天生不
支持中文，所以我们可以把pdf-engine换成`xelatex`或者`lualatex`。

    pandoc example.md --pdf-engine=lualatex -o example.pdf


下面是在我的Debian系统里利用LaTeX排版所需软件的列表。

- texlive - TeX Live: A decent selection of the TeX Live packages
- texlive-base - TeX Live: Essential programs and files
- texlive-bibtex-extra - TeX Live: BibTeX additional styles
- texlive-binaries - Binaries for TeX Live
- texlive-extra-utils - TeX Live: TeX auxiliary programs
- texlive-font-utils - TeX Live: Graphics and font utilities
- texlive-fonts-extra - TeX Live: Additional fonts
- texlive-fonts-extra-doc - TeX Live: Documentation files for texlive-fonts-extra
- texlive-fonts-extra-links - TeX Live: Setup of fonts for TeX Live and search via kpathsea
- texlive-fonts-recommended - TeX Live: Recommended fonts
- texlive-lang-chinese - TeX Live: Chinese
- texlive-lang-cjk - TeX Live: Chinese/Japanese/Korean (base)
- texlive-lang-english - TeX Live: US and UK English
- texlive-lang-greek - TeX Live: Greek
- texlive-lang-japanese - TeX Live: Japanese
- texlive-latex-base - TeX Live: LaTeX fundamental packages
- texlive-latex-base-doc - TeX Live: Documentation files for texlive-latex-base
- texlive-latex-extra - TeX Live: LaTeX additional packages
- texlive-latex-extra-doc - TeX Live: Documentation files for texlive-latex-extra
- texlive-latex-recommended - TeX Live: LaTeX recommended packages
- texlive-latex-recommended-doc - TeX Live: Documentation files for texlive-latex-recommended
- texlive-luatex - TeX Live: LuaTeX packages
- texlive-pictures - TeX Live: Graphics, pictures, diagrams
- texlive-pictures-doc - TeX Live: Documentation files for texlive-pictures
- texlive-plain-generic - TeX Live: Plain (La)TeX packages
- texlive-science - TeX Live: Mathematics, natural sciences, computer science packages

生成上表所需的命令是：`aptitude search '~i texlive'`。

