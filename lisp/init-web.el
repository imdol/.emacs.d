(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css\\'" . css-mode))

(defun setup-css-mode ()
  (emmet-mode +1)
  (company-css +1)
  (smartparens-mode +1)
  (setq css-indent-offset 2)
  )

(defun setup-web-mode ()
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-enable-current-element-highlight t)
  (eval-after-load "company"
    '(add-to-list 'company-backends 'company-web-html))
  (emmet-mode +1)
  (smartparens-mode +1)
  )

(add-hook 'web-mode-hook 'setup-web-mode)
(add-hook 'css-mode-hook 'setup-css-mode)

(provide 'init-web)
