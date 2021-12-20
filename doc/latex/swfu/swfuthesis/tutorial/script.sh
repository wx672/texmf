#!/bin/bash

. ~/.local/bin/ttyrec-utils

clear

PV <<<"Hi, today [$(date +%F)] I'm going to show you how to write a SWFU BSc thesis
with LaTeX and Emacs on a Linux machine. My working environment is purely built with
open source software:

	$(em ✔) Debian GNU/Linux Sid
	$(em ✔) Emacs 27 (with AUCTeX, Yasnippet, pdf-tools)
	$(em ✔) TeXLive2022 (with lualatex) and latexmk
	$(em ✔) A PDF viewer (pdf-tools in Emacs is recommended)
	$(em ✔) A terminal (with tmux)

Now, let's have some fun with the power of open source... First, we need a dedicated directory
for our project...
"

prompt; PV <<<"$(em mkdir -p my-project/\{src,doc\})"
prompt; PV <<<"$(em tree my-project)"
waiting

PV <<<"
See? we now have a new dir called $(em my-project) with two sub-dirs in it:

	$(em src) - for keeping our source code
	$(em doc) - for our documentation, ie. the thesis"

PV <<<"
Let's put some simple source codes in the $(em src) dir...
"

prompt; PV <<<"$(em cd my-project/src)"
prompt; PV <<<"$(em cat \> hello.c)"

echo -e '\n----------------------------------'
PV <<<'  #include <stdio.h>

  int main(void){
      printf("Hello, world!\n");
  }'
echo '----------------------------------'
waiting

PV <<<"
Done! After finish coding, it's time to start our big paper, with Emacs of course.
"
prompt; PV <<<"$(em cd ../doc)"
prompt; PV <<<"$(em e thesis.tex) $(tput dim)# e is an alias to emacsclient$(tput sgr0)"
waiting

PV <<<"
Now we're facing an empty Emacs buffer named $(em thesis.tex) opened for editing.
The easiest way to start our thesis is simply typing $(em thesis) followed by a $(em ⭾) (the TAB key)."
waiting

PV <<<"
Bravo! Thanks to yasnippet, the Emacs buffer is now populated with a ready made
thesis template! The trick to bringing up the thesis template is in $(em yasnippet)
which is one of my favorite Emacs plugin. Yasnippet doesn't do anything unless you
feed it a $(em snippet). It's very much like a magic wand in your hand, whenever you wave it
you have to whisper a $(em spell) to make the magic happen.

The snippet we are using for writing thesis is called $(em thesis), can be found at:

- $(em https://github.com/wx672/dotfile/raw/master/dot.emacs.d/snippets/latex-mode/thesis)

With yasnippet and your snippet ready, typing $(em thesis) immediately followed by a $(em ⭾)
will trigger the magic.

Assuming you have basic LaTeX knowledge, we can start playing with the template now.
Found the cursor in Emacs? It should be sitting at this line now:

     $(em Title={论文标题},)

If you type something (thesis title obviously) there, the Chinese words will be replaced
by your input."
waiting

# input something followed by [tab]
PV <<<"
You can type

  - $(em ⭾) to forward the cursor to the next input field. Or,
  - $(em Shift-⭾) to move the cursor backward one field."
waiting

# demo cursor forward/backward jumping, and filling all the fields
PV <<<"
After filling in all the fields in the preamble, the cursor should be sitting right after
the $(em '\\begin{abstract}') line. Now you are on your own. Neither the abstract nor any
other part of your writing can be done by casting a spell in Emacs. Well, that's not
entirely true. Let's try it with $(em '\\lipsum{}') or $(em '\\zhlipsum{}') if you prefer Chinese."
waiting

# finish all the chapters. getting to the bib part
PV <<<"
Wow, that's quick! Now, about the bibliography, it's pretty easy if you already have a
bib file. If not, you can get an example from:

- $(em https://github.com/wx672/texmf/raw/master/doc/latex/swfu/swfcthesis/tutorial/tutorial.bib)

Put your bib file in the same dir of your thesis. You can take a look at it. It's fairly
easy to understand..."
waiting

# open bib file, and pointing to the entry to be cited. Perhaps split emacs window?
PV <<<"
Back to the $(em thesis.tex) file,

  $(em ✔) Modify $(em '\\addbibresource{}') accordingly..."
waiting
PV <<<"  $(em ✔) Adding citations. For example..."
waiting
PV <<<"  $(em ✔) Make sure the $(em '\\makebib') command is there..."
waiting
PV <<<"
That's all we need for generating bibliographies."
waiting

# insert hello.c into thesis.tex (\\cfile{../src/hello.c})
PV <<<"
Now, let's see how to include source code into the thesis. Suppose we want to proudly
show off our great $(em hello.c) in the thesis, we can simply do $(em '\\cfile{../src/hello.c}'). Be very
careful, our source code and thesis are not in the same directory. So we have to take care
of the $(em PATH) to the source code.

BTW, besides $(em '\\cfile{}'), there are also $(em '\\pyfile{}, \\shfile{}, \\cppfile{}') available.
These commands are defined in $(em swfuthesis.cls). You can easily write your own commands
by following these examples.

Hmm, seems we finished our writing. Let's compile it by typing $(em Ctrl-c Ctrl-c)..."
waiting

PV <<<"
In the mini-buffer, you can see:

   $(em Command: \(default LaTeXMK\))

This means a default command, $(em LaTeXMK), will be launched to compile our $(em thesis.tex) file.
Just press $(em ⏎) (the ENTER key) and wait..."
waiting
# waiting for compiling to finish

PV <<<"
for quite a while, right? That's because $(em lualatex) has been invoked several times
to generate the PDF file. If everything's alright, you should see a message in the
mini-buffer similar to the following line:

	$(em 'LaTeXMK: done.')

This means the compilation is finished successfully, and a PDF file is generated for you.
Another $(em 'Ctrl-c Ctrl-c ⏎') should bring up a PDF viewer with your fresh baked PDF file
shown in it. Since I am recording this demo entirely in a plain text tmux session with
$(em ttyrec), there is no easy way to open PDF file for instant viewing in my terminal. So
I have to open it manually.

  $(em mupdf thesis.pdf&)"
waiting

# check current dir

PV <<<"
Looks pretty good, doesn't it? $(em 🙂) That's all for now. Many thanks to:

  - Emacs + AUCTeX + Yasnippet
  - TeXLive
  - Debian GNU/Linux
  - alacritty, tmux, and ttyrec for term-casting

For more information on preparing this demo, see:

  - $(em Main script:)
    https://github.com/wx672/texmf/raw/master/doc/latex/swfu/swfcthesis/tutorial/script.sh
  - $(em Helper scripts:)
    https://github.com/wx672/dotfile/raw/master/bin/ttyrec-utils
  - $(em .tmux.conf:)
    https://github.com/wx672/dotfile/raw/master/dot.tmux.conf
  - $(em 'Emacs config files (including snippets):')
    https://github.com/wx672/dotfile/tree/master/dot.emacs.d
  - $(em LaTeX class file:)
    https://github.com/wx672/texmf/raw/master/tex/latex/swfuthesis.cls

In case of dead links, please email $(em 'wx672ster@gmail.com')."

havefun2
