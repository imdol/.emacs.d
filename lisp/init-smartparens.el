;; electric return with specified modes
(with-eval-after-load 'smartparens
  (sp-with-modes
      '(c++-mode
	objc-mode
	c-mode
	js-mode
	js2-mode
	rjsx-mode
	typescript-mode
	css-mode
	web-mode
	json-mode
	python-mode
	restclient-mode)
    (sp-local-pair "`" nil :post-handlers '(:add ("||\n[i]" "RET")))
    (sp-local-pair "(" nil :post-handlers '(:add ("||\n[i]" "RET")))
    (sp-local-pair "[" nil :post-handlers '(:add ("||\n[i]" "RET")))
    (sp-local-pair "{" nil :post-handlers '(:add ("||\n[i]" "RET")))))

(provide 'init-smartparens)
