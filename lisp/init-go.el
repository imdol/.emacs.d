(add-to-list 'auto-mode-alist '("\\.go\\'" . go-ts-mode))
;; define golang settings. needs work
;TODO: setup gocode for backends and intellisense
(defun go-lsp-setup ()
  (setq c-basic-offset 4
   indent-tabs-mode 1
   tab-width 4
   sp-escape-quotes-after-insert nil)

  (yas-minor-mode +1)  
  (hungry-delete-mode +1)
  (add-hook 'before-save-hook #'lsp-format-buffer t t)
  (add-hook 'before-save-hook #'lsp-organize-imports t t)  
  )

(add-hook 'go-ts-mode-hook 'go-lsp-setup)
(add-hook 'go-ts-mode-hook 'lsp-deferred)

(provide 'init-go)
