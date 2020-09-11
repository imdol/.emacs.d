;;; Compiled snippets and support files for `c-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'c-mode
		     '(("scanf" "scanf(\"${1:format string}\"${2: ,a0,a1});\n" "scanf" nil nil nil "/home/imdol/.config/emacs/snippets/c-mode/scanf" nil nil)
		       ("pra" "#pragma $0" "pragma" nil nil nil "/home/imdol/.config/emacs/snippets/c-mode/pragma" nil nil)
		       ("ma" "malloc(sizeof($1)${2: * ${3:size}});\n$0" "malloc" nil nil nil "/home/imdol/.config/emacs/snippets/c-mode/malloc-short" nil nil)
		       ("fp" "${1} ${2}(${3});$0" "function-prototype" nil nil nil "/home/imdol/.config/emacs/snippets/c-mode/function-prototype" nil nil)
		       ("f" "${1} ${2}(${3})\n{\n    $0\n}" "function" nil nil nil "/home/imdol/.config/emacs/snippets/c-mode/function" nil nil)
		       ("cas" "(${1:type}*)$0" "cast" nil nil nil "/home/imdol/.config/emacs/snippets/c-mode/cast" nil nil)
		       ("cal" "calloc(sizeof($1)${2:, ${3:size}});\n$0" "calloc" nil nil nil "/home/imdol/.config/emacs/snippets/c-mode/calloc" nil nil)))


;;; Do not edit! File generated at Tue Sep  8 00:51:24 2020
