;; hook compile options and eldoc to irony mode
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
(add-hook 'irony-mode-hook #'irony-eldoc)

;; define irony mode setup to hook up to C modes
(defun irony-mode-setup ()
  (flycheck-mode +1)
  (company-mode +1)
  (irony-mode +1)
  (setq c-basic-offset 4)
  (define-key c-mode-base-map "\t" 'self-insert-command)
  (define-key c-mode-base-map (kbd "<C-tab>") (function company-complete))

  (eval-after-load 'company
    '(add-to-list 'company-backends '(company-irony-c-headers company-irony)))
  (eval-after-load 'flycheck
    '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))
  )

;; hook relevant c-modes to irony setup
(add-hook 'c-mode-hook 'irony-mode-setup)
(add-hook 'c++-mode-hook 'irony-mode-setup)
(add-hook 'objc-mode-hook 'irony-mode-setup)

(provide 'init-irony)
