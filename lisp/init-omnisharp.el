(defun my-csharp-mode-setup ()

  (setq indent-tabs-mode nil)
  (setq c-syntactic-indentation t)
  (c-set-style "ellemtel")
  (setq c-basic-offset 4)
  (setq truncate-lines t)
  (setq tab-width 4)

  (omnisharp-mode +1)
  (company-mode +1)
  (flycheck-mode +1)
  (smartparens-mode +1)
  (yas-global-mode +1)

  (eval-after-load
      'company
    '(add-to-list 'company-backends #'company-omnisharp))

  (local-set-key (kbd "C-c r r") 'omnisharp-run-code-action-refactoring)
  (local-set-key (kbd "C-c C-c") 'recompile))

(add-hook 'csharp-mode-hook 'my-csharp-mode-setup t)

(provide 'init-omnisharp)
