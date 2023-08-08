(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-ts-mode))

(defun rs-lsp-setup ()
  (yas-minor-mode +1)
  (smartparens-mode +1)
  )
(add-hook 'rust-ts-mode-hook 'rs-lsp-setup)
(add-hook 'rust-ts-mode-hook 'lsp-deferred)
