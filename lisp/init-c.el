(add-to-list 'auto-mode-alist '("\\.c\\'" . c-ts-mode))

(defun c-lsp-setup ()
  (setq c-basic-offset 8
   indent-tabs-mode t
   tab-width 8
   sp-escape-quotes-after-insert nil)
  (yas-global-mode +1)
  (smartparens-mode +1)
  (setq company-backends
  	'(company-capf
  	  company-semantic
  	  company-cmake
  	  company-clang
  	  company-xcode
  	  company-files
  	  company-keywords
  	  company-dabbrev
  	  company-oddmuse
  	  ))
  (define-key c-mode-map (kbd "M-e") 'forward-sentence)
  (define-key c-mode-map (kbd "M-a") 'backward-sentence)
  )
(add-hook 'c-ts-mode-hook 'c-lsp-setup)
(add-hook 'c-ts-mode-hook 'lsp-deferred)

(provide 'init-c)
