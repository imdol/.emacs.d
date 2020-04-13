(defun c-setup ()
  (setq c-basic-offset 4
   indent-tabs-mode nil
   tab-width 4
   sp-escape-quotes-after-insert nil)

  (yas-global-mode +1)
  (smartparens-mode +1)
  )

(add-hook 'c-mode-hook 'c-setup)
(add-hook 'c-mode-hook 'lsp-deferred)

(provide 'init-c)
