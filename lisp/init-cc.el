(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))
(defun cc-lsp-setup ()
  (setq c-basic-offset 2
   indent-tabs-mode nil
   tab-width 2
   sp-escape-quotes-after-insert nil)
  (yas-minor-mode +1)  
  (smartparens-mode +1)
  )
(add-hook 'c++-mode-hook 'cc-lsp-setup)
(add-hook 'c++-mode-hook 'lsp-deferred)

(provide 'init-cc)
