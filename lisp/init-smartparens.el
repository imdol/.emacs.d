(use-package smartparens
  :defer t
  :hook
  (prog-mode-hook . smartparens-mode)
  :config
  (sp-pair "`" nil :post-handlers '(:add ("||\n[i]" "RET")))
  (sp-pair "(" nil :post-handlers '(:add ("||\n[i]" "RET")))
  (sp-pair "[" nil :post-handlers '(:add ("||\n[i]" "RET")))
  (sp-pair "{" nil :post-handlers '(:add ("||\n[i]" "RET")))
  )

(provide 'init-smartparens)
