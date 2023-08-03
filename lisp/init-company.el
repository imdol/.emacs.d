(use-package company
  :defer t
  :config
  (company-quickhelp-mode)
  (with-eval-after-load 'company
    (setq company-idle-delay 0.2)
    (setq company-minimum-prefix-length 3)
    (define-key company-active-map (kbd "M-n") nil)
    (define-key company-active-map (kbd "M-p") nil)
    (define-key company-active-map (kbd ".") 'company--my-insert-dot)
    (define-key company-active-map (kbd "C-d") #'company-abort)
    (define-key company-active-map (kbd "C-n") #'company-select-next)
    (define-key company-active-map (kbd "C-p") #'company-select-previous))
  )

(provide 'init-company)
