(TeX-add-style-hook
 "switch1"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("standalone" "varwidth" "crop")))
   (TeX-run-style-hooks
    "latex2e"
    "standalone"
    "standalone10"
    "wx672fonts"))
 :latex)

