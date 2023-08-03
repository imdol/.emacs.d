(add-to-list 'auto-mode-alist '("\\.tsx\\'" . tsx-ts-mode))
(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-ts-mode))

(defun ts-setup ()
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

(defun tsx-setup ()
  (setq-default typescript-indent-level 2)
  (setq indent-tabs-mode nil)
  
  (yas-global-mode +1)
  (hungry-delete-mode +1)
  (flycheck-mode +1)
  (smartparens-mode +1)
  (emmet-mode +1)
  )

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

(add-hook 'typescript-ts-mode-hook 'ts-setup)
(add-hook 'typescript-ts-mode-hook 'lsp-deferred)

(add-hook 'tsx-ts-mode-hook 'tsx-setup)
(add-hook 'tsx-ts-mode-hook 'lsp-deferred)

(provide 'init-ts)
