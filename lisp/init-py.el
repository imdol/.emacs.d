(add-to-list 'auto-mode-alist '("\\.py\\'" . python-ts-mode))

(defun pyls-mode-setup()
  (setq
   indent-tabs-mode nil
   python-indent 4
   tab-width 4)
  
  (company-mode +1)
  (smartparens-mode +1)
  (yas-global-mode +1)

  (setq company-backends
  	'(company-capf
	  company-anaconda
  	  company-semantic
  	  company-files
  	  company-keywords
  	  company-dabbrev
  	  company-oddmuse))

  (setq lsp-pyls-plugins-jefi-hover-enabled nil)

  (define-key python-ts-mode-map (kbd "M-e") 'forward-sentence)
  (define-key python-ts-mode-map (kbd "M-a") 'backward-sentence)
  )

(add-hook 'python-ts-mode-hook 'lsp-deferred)
(add-hook 'python-ts-mode-hook #'pyls-mode-setup)



(provide 'init-py)
