(TeX-add-style-hook
 "exitNwait"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("standalone" "varwidth=70em" "crop")))
   (TeX-run-style-hooks
    "latex2e"
    "standalone"
    "standalone10"
    "wx672fonts"))
 :latex)

