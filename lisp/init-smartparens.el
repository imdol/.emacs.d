(use-package smartparens
  :defer t
  :hook
  (prog-mode-hook . smartparens-global-mode)
  :init
  (smartparens-global-mode)
  :config
  (sp-pair "`" nil :post-handlers '(:add ("||\n[i]" "RET")))
  (sp-pair "(" nil :post-handlers '(:add ("||\n[i]" "RET")))
  (sp-pair "[" nil :post-handlers '(:add ("||\n[i]" "RET")))
  (sp-pair "{" nil :post-handlers '(:add ("||\n[i]" "RET")))
  )

(provide 'init-smartparens)
