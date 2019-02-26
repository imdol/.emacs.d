;;; Compiled snippets and support files for `c-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'c-mode
		     '(("scanf" "scanf(\"${1:format string}\"${2: ,a0,a1});\n" "scanf" nil nil nil "/home/slispe/.emacs.d/snippets/c-mode/scanf" nil nil)
		       ("pra" "#pragma $0" "pragma" nil nil nil "/home/slispe/.emacs.d/snippets/c-mode/pragma" nil nil)
		       ("fp" "${1} ${2}(${3});$0" "function-prototype" nil nil nil "/home/slispe/.emacs.d/snippets/c-mode/function-prototype" nil nil)
		       ("f" "${1} ${2}(${3})\n{\n    $0\n}" "function" nil nil nil "/home/slispe/.emacs.d/snippets/c-mode/function" nil nil)
		       ("in" "%$0" "%" nil nil nil "/home/slispe/.emacs.d/snippets/c-mode/%" nil nil)))


;;; Do not edit! File generated at Mon Feb 25 23:13:18 2019
