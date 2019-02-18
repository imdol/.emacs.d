;; define golang settings. needs work
;TODO: setup gocode for backends and intellisense

(defun golang-mode-setup ()
  (flycheck-mode +1)
  (company-mode +1)
  (smartparens-mode +1)
  (yas-global-mode +1)
  (setq tab-width 4)
  (setq indent-tabs-mode 1)

  (eval-after-load "company"
    '(add-to-list 'company-backends 'company-go))
  )

(add-hook 'go-mode-hook 'golang-mode-setup)

(provide 'init-golang)
