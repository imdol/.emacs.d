;; require smartparens for pairings
(require 'smartparens)
(smartparens-global-mode t)

;; electric return with specified modes
(with-eval-after-load 'smartparens
  (sp-with-modes
      '(c++-mode objc-mode c-mode js-mode js2-mode css-mode web-mode)
	(sp-local-pair "(" nil :post-handlers '(:add ("||\n[i]" "RET")))
    (sp-local-pair "{" nil :post-handlers '(:add ("||\n[i]" "RET")))))
