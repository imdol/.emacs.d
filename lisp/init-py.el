(defun pyls-mode-setup()
  (setq
   indent-tabs-mode t
   python-indent 4
   tab-width 4)

  (require 'lsp-mode)
  (yas-global-mode +1)
  (company-lsp +1)
  (company-mode +1)
  )

(add-hook 'python-mode-hook 'lsp-deferred)
(add-hook 'python-mode-hook #'pyls-mode-setup)

(provide 'init-py)
