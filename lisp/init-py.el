(add-to-list 'auto-mode-alist '("\\.py\\'" . python-ts-mode))

(defun py-mode-setup()
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
  )

(add-hook 'python-ts-mode-hook 'lsp-deferred)
(add-hook 'python-ts-mode-hook #'py-mode-setup)

(provide 'init-py)
