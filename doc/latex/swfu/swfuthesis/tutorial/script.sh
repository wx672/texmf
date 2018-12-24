#!/bin/bash

. ~/.bin/ttyrec-utils

clear

cat <<EOF | PV
Hi! I'm going to show you how to write your thesis with LaTeX and Emacs in a Linux machine.

My working environment:
	1. Emacs (with AUCTeX, Yasnippet)
	2. TeXLive (with XeTeX)
	3. A PDF viewer (emacs pdf-tools is recommended)
	4. Linux is not mandatory though I prefer it

This demo shows off the magic power you can have with all the above open source software tools equipped.

My Emacs config files (including snippets):
	- https://github.com/wx672/dotfile/tree/master/dot.emacs.d
My LaTeX class for this demo:
	- https://github.com/wx672/texmf/raw/master/tex/latex/swfcthesis.cls
In case of dead links, please email $(em 'wx672ster@gmail.com').

Now, let's begin...
EOF

echo "First, we need a dedicated directory for our project..." | PV; prompt; 
echo "mkdir -p my-project/{src,doc}" | PV; prompt;
echo "tree my-project" | PV; waiting

cat <<EOF | PV
See? we now have a new dir called 'my-project' with two sub-dirs in it
	src - for keeping our source code
	doc - for our documentation, ie. our thesis

EOF

echo "Now, let's put some simple source code in the src dir..." | PV; prompt;
echo "cd my-project/src" | PV; prompt;
echo "cat > hello.c" | PV; waiting
echo "Done!" | PV
echo 
echo "After coding, it's time to start our big paper, in emacs of course." | PV; prompt
echo "cd ../doc" | PV; prompt;
echo -n "ec thesis.tex" | PV
echo -e "\t$(tput dim)# ec is an alias to emacsclient.$(tput sgr0)" | PV; waiting
echo "Now we're in Emacs, and have an empty file $(em thesis.tex) opened for editing." | PV
echo "The easiest way to start our thesis is simply typing '$(em thesis)' followed by a [$(em TAB)]" | PV; waiting

cat <<EOF | PV
Bravo! Thanks to yasnippet, the Emacs buffer is now populated with a well written thesis template!
Don't panic if you can't recognize those square characters, since all the LaTeX commands are still in English.

The trick for bringing up the thesis template is 'yasnippet' which is a very popular Emacs plugin.
Apart from having yasnippet installed, you also need a snippet to fit your needs. For example,
the snippet we are currently using for writing thesis can be found at:
	- https://github.com/wx672/dotfile/raw/master/dot.emacs.d/snippets/latex-mode/thesis
With yasnippet and your snippet ready, typing [$(em TAB)] immediately after the keyword ($(em thesis) in our case) will trigger the magic.

I assume you have basic LaTeX knowledge. Then, let's play some more with the template...

First, find the cursor. It should be at the $(em \\Title{}) command now, right?
If you type something (thesis title obviously) there, the Chinese words will be replaced by your input.
EOF

waiting

# input thesis title
echo "If you type [$(em TAB)] right after finishing your input, the cursor should jump into the next input field."| PV; waiting
echo "Fill it with some reasonable words followed by another [$(em TAB)]..." | PV; waiting
# input something followed by [tab]
echo -e "\t- [$(em TAB)] will forward the cursor to the next input field. And," | PV
echo -e "\t- [$(em Shift-TAB)] will move the cursor backward." | PV; waiting
# demo cursor forward/backward jumping, and filling all the fields
echo "After filling in all the fields in the preamble, the cursor should be sitting at the first $(em '\\chapter{}') command. You know what you should do, right? Let's finish it quick..." | PV; waiting
# finish all the chapters. getting to the bib part

cat <<EOF | PV
Wow, that's quick! Now, about the bibliography...
It's pretty easy if you already have a bib file. If not, you can get an example from:
	- https://github.com/wx672/texmf/raw/master/doc/latex/swfu/swfcthesis/tutorial/tutorial.bib
Put your bib file in the same dir of your thesis...
EOF

waiting

echo "You can take a look inside the bib file. It's fairly easy to understand..." | PV; waiting
# open bib file, and pointing to the entry to be cited. Perhaps split emacs window?
echo "Then, in your $(em thesis.tex)..." | PV
echo -e "\t1. Modify $(em '\\addbibresource{}') accordingly..." | PV; waiting
echo -e "\t2. Adding citations. For example..." | PV; waiting
echo -e "\t3. Make sure the $(em '\\printbibliography{}') command is there..." | PV; waiting
echo "These are good enough for $(em biblatex) to work." | PV
echo
echo "Now, let's insert some source code into the thesis..." | PV ; waiting
echo "Be very careful, our source code and thesis are not in the same directory. So we have to take care of the path to the source code." | PV
echo
echo "Hmm, seems we finished our writing. Let's compile it by typing $(em C-c C-c)..." | PV; waiting

cat <<EOF | PV
In the mini-buffer, you can see:
	$(em 'Command: (default LaTeXMK)' )
This means a default command ($(em LaTeXMK)) will be used to process our .tex file.
You can press $(em Enter) to let it go
EOF

waiting

# waiting for compiling to finish
# echo -e "\t$(em 'You should run LaTeX again to get references right, {12} pages')" | PV
# echo "Now, if you just type $(em 'C-c C-c') again, $(em LaTeX) will run again to generate $(em 'Table of Contents') for you." | PV; waiting
# echo "After that, in mini-buffer, you should see:" | PV
# echo -e "\t$(em 'LaTeX: there were unresolved citations, {12} pages')" | PV
# echo "Now you should type $(em 'C-c C-c') again followed by $(em biber):" | PV
# echo -e "\t$(em 'Command: (default LaTeX) biber')" | PV
# echo "This is to process the citations using $(em biber)" | PV; waiting
# echo "Now you probably have to type $(em 'C-c C-c') again to run $(em LaTeX) for the last time..." | PV
# echo -e "\t$(em 'Command: (default Biber)') latex" | PV; waiting

cat <<EOF | PV
If nothing goes wrong, you should see something in the mini-buffer similar to the following line:
	$(em 'LaTeXMK: done.')
This means the compilation is finished successfully, and a PDF file is generated for you.
If one more $(em 'C-c C-c'), you should see:
	$(em 'Command: (default View)' )
If you hit $(em Enter), it should be opened with your preferred pdf viewer.

Since I am recording this demo entirely in a tmux session with $(em ttyrec), there is no easy way to include this PDF file for instant viewing. But you can see it's sitting in my working directory now...
EOF

waiting
# check current dir

cat <<EOF | PV
And I just opened it with xpdf. Believe me, it looks pretty good. :-)

That's all for now.

Thanks to:
	- Emacs + AUCTeX + Yasnippet
	- LaTeX
	- Debian GNU/Linux
	- tmux, ttyrec for term-casting

For more information on preparing this demo, see
	- [script] https://github.com/wx672/texmf/raw/master/doc/latex/swfu/swfcthesis/tutorial/script.sh
	- [helping functions] https://github.com/wx672/dotfile/raw/master/bin/ttyrec-utils
	- [.tmux.conf] https://github.com/wx672/dotfile/raw/master/dot.tmux.conf
EOF

havefun2
