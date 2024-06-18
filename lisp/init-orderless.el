;; Enable Orderless
(use-package orderless
  :ensure t
  :init
  (setq
   completion-styles '(orderless basic)
   completion-category-overrides '((file (styles basic partial-completion)))
   )
  ;; :custom
  ;; (completion-styles '(orderless basic))
  ;; (completion-category-overrides '((file (styles basic partial-completion))))
  )
(provide 'init-orderless)
