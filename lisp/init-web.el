(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css\\'" . css-mode))

(defun setup-css-mode ()
  (smartparens-mode +1)
  (emmet-mode +1)
  (company-mode +1)
  (setq company-minimum-prefix-length 1)
  (flycheck-mode +1)
  (setq css-indent-offset 2)
  )

(defun setup-web-mode ()
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-enable-current-element-highlight t)
  (emmet-mode +1)
  (smartparens-mode +1)
  (flycheck-mode +1)
  (company-mode +1)
  (eval-after-load "company"
    '(add-to-list 'company-backends 'company-web-html))
  )

(add-hook 'web-mode-hook 'setup-web-mode)
(add-hook 'css-mode-hook 'setup-css-mode)

(provide 'init-web)
