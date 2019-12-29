(defun pers-cc-setup ()
  (setq c-basic-offset 4
   indent-tabs-mode t
   tab-width 4
   sp-escape-quotes-after-insert nil)

  (smartparens-mode +1)
  (yas-global-mode +1)
  )

(add-hook 'c++-mode-hook 'pers-cc-setup)
(add-hook 'c++-mode-hook 'lsp-deferred)


(provide 'init-cc)
