(defun rs-lsp-setup ()
  (yas-minor-mode +1)
  (smartparens-mode +1)
  )
(add-hook 'rust-mode-hook 'rs-lsp-setup)
(add-hook 'rust-mode-hook 'lsp-deferred)