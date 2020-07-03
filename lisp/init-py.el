(defun pyls-mode-setup()
  (setq
   indent-tabs-mode nil
   python-indent 4
   tab-width 4)
  
  (company-mode +1)
  
  (smartparens-mode +1)
  (yas-global-mode +1)

  (setq company-backends
  	'(company-anaconda
	  company-capf
  	  company-semantic
  	  company-files
  	  company-keywords
  	  company-dabbrev
  	  company-oddmuse))
  )

(add-hook 'python-mode-hook 'lsp-deferred)
(add-hook 'python-mode-hook #'pyls-mode-setup)

(provide 'init-py)
