;; hook relevant modes
(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-mode))

(defun ts-lsp-setup ()
  (setq-default typescript-indent-level 2)
  (setq indent-tabs-mode nil)
  
  (yas-global-mode +1)
  (hungry-delete-mode +1)
  (flycheck-mode +1)
  (smartparens-mode +1)

  ;; dap-mode
  (dap-mode 1)
  (require 'dap-node)
  )

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; formats the buffer before saving
(add-hook 'typescript-mode-hook 'ts-lsp-setup)
(add-hook 'typescript-mode-hook 'lsp-deferred)
  ;; tree sitter
(add-hook 'typescript-mode-hook #'tree-sitter-mode)
(add-hook 'typescript-mode-hook #'tree-sitter-hl-mode)

(provide 'init-ts)
