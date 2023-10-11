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
	go-mode
	web-mode
	json-mode
	python-mode
	graphql-mode
	sh-mode
	typescript-ts-mode
	tsx-ts-mode
	python-ts-mode
	c-ts-mode
	c++-ts-mode
	go-ts-mode
	css-ts-mode
	restclient-mode)
    (sp-local-pair "`" nil :post-handlers '(:add ("||\n[i]" "RET")))
    (sp-local-pair "(" nil :post-handlers '(:add ("||\n[i]" "RET")))
    (sp-local-pair "[" nil :post-handlers '(:add ("||\n[i]" "RET")))
    (sp-local-pair "{" nil :post-handlers '(:add ("||\n[i]" "RET")))))

(provide 'init-smartparens)
