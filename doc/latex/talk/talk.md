%title: LaTeX Quick Talk
%author: WANG Xiaolin (wx672ster@gmail.com)
%date: 2021-01-04

-> # Why bother <-

^

- with LaTeX? I've got MS-Word already

^
- with cars? I've got a bicycle already

^
- with computer? I've got a pencil already

^

It's all about choice, isn't it?

^
-> *Not quite. Did you really have a choice?* <-

Does it matter?

^
-> *Common sense* <-
-> Imagine you've never heard of cars and computers <-

^
For you, it's more than common sense...

---

-> # It's a life style <-

-> *Do programmer's work in programmer's way* <-

^
Your tool kit:

- MS-Word for reports
- MS-Powerpoint for presentations
- MS-Excel for spreadsheets
- Coding? Without a mouse I don't know where to put my hands *🙁*


-> Any difference with an office girl? <-

---

-> # Programmers write everything in plain text with a text editor <-

^
-> Why plain text? <-

^
It's more *programmer friendly* than formatted text

^
- Potability
^
- Version control
^
- Backward compatible
^
- Security (no viruses)
^
- Size matters

^
-> Ever read RFCs, man pages? <-

^
```
  _____  _       _        _______        _     _____            _          _  
 |  __ \| |     (_)      |__   __|      | |   |  __ \          | |        | | 
 | |__) | | __ _ _ _ __     | | _____  _| |_  | |__) |___   ___| | _____  | | 
 |  ___/| |/ _` | | '_ \    | |/ _ \ \/ / __| |  _  // _ \ / __| |/ / __| | | 
 | |    | | (_| | | | | |   | |  __/>  <| |_  | | \ \ (_) | (__|   <\__ \ |_| 
 |_|    |_|\__,_|_|_| |_|   |_|\___/_/\_\\__| |_|  \_\___/ \___|_|\_\___/ (_) 
______________________________________________________________________________
```

---

-> # Life is short <-

For me, *everything Emacs*

- Reports?      Emacs (Org-mode, Markdown, LaTeX)
- Slides?       Emacs (Markdown, LaTeX Beamer)
- Flowcharts?   Emacs (AsciiArt, LaTeX Tikz), pencil drawing
- Spreadsheets? Emacs (org-mode), visidata
- Programming?  Emacs (C/C++, Java, Python, ...)


-> *One vs. Many* <-

---

-> # Learn the most important

What do you need, let's say, to write a syscall?

^
```
┌────────────────────────────────┐
│ Knowledge about OS kernel      │
├────────────────────────────────┤
```
^
```
│ C Programming                  │
├────────────────────────────────┤
```
^
```
│ Editor                         │
├────────────────────────────────┤
```
^
```
│ Fast learning, research skills │
├────────────────────────────────┤
```
^
```
│ English, Chinese               │
├────────────────────────────────┤
```
^
```
│ Patience                       │
└────────────────────────────────┘
```

-> The most important one? <-

---

-> # MSc paperwork in plain text <-

## Thesis

1. [template](https://cs6.swfu.edu.cn/~wx672/texmf/tex/latex/swfu/swfuthesism.cls)
2. [example](https://cs6.swfu.edu.cn/~wx672/texmf/doc/latex/swfu/swfuthesism/lzb/)

^

## Proposal

1. [template](https://cs6.swfu.edu.cn/~wx672/texmf/tex/latex/swfu/swfuproposalm.cls)
2. [example](https://cs6.swfu.edu.cn/~wx672/texmf/doc/latex/swfu/swfuproposalm/)

^

- [A tutorial for writing undergraduate thesis](https://cs6.swfu.edu.cn/~wx672/texmf/doc/latex/swfu/swfuthesis/tutorial/tutorial.pdf)

---

-> # Flowcharts <-

## AsciiArt

- RFC 793, page 23, TCP Connection State Diagram
- Emacs aa2u
- [asciiflow.com](http://asciiflow.com/)
- Google "ascii drawing online" for more

<br>

## By hand

1. Draw flowchart by hand (black on white)
2. Take a clear picture
3. convert to PDF (pngtoppm, mkbitmap, potrace)

---

## Tikz

- Google "flowchart tikz"
- Follow examples
- Tikz manual
