;; define golang settings. needs work
;TODO: setup gocode for backends and intellisense

(defun go-lsp-setup ()
  (setq c-basic-offset 4
   indent-tabs-mode 1
   tab-width 4
   sp-escape-quotes-after-insert nil)

  (company-mode 1)
  (yas-minor-mode +1)  
  (smartparens-mode +1)
  (hungry-delete-mode +1)
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t)  
  )

(add-hook 'go-mode-hook 'go-lsp-setup)
(add-hook 'go-mode-hook 'lsp-deferred)

(provide 'init-go)
