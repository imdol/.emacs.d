(defun c-lsp-setup ()
  (setq c-basic-offset 8
   indent-tabs-mode t
   tab-width 8
   sp-escape-quotes-after-insert nil)

  (yas-global-mode +1)
  (smartparens-mode +1)
  )

(add-hook 'c-mode-hook 'c-lsp-setup)
(add-hook 'c-mode-hook 'lsp-deferred)

(provide 'init-c)
