;; hook relevant modes
(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-mode))

;; define tide mode settings
(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))

  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)

  (setq-default typescript-indent-level 2)

  ;; use tsfmt.json instead and add to .gitignore or do it manually here
  (setq tide-format-options '(:indentSize 2 :tabSize 2 :placeOpenBraceOnNewLineForFunctions nil))
  (flycheck-mode +1)
  (smartparens-mode +1)
  (company-mode +1)
  (yas-global-mode +1)
  )

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; formats the buffer before saving
(add-hook 'before-save-hook 'tide-format-before-save)
(add-hook 'typescript-mode-hook #'setup-tide-mode)

(provide 'init-ts)
