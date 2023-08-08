(add-to-list 'auto-mode-alist '("\\.html\\'" . html-mode))

(defun html-setup ()
  (setq sgml-basic-offset 2)
  (setq indent-tabs-mode nil)
  (emmet-mode +1)
  (smartparens-mode +1)
  (flycheck-mode +1)
  (company-mode +1)
  )
(add-hook 'html-mode-hook 'html-setup)
(add-hook 'html-mode-hook 'lsp-deferred)

(add-to-list 'auto-mode-alist '("\\.css\\'" . css-ts-mode))
(add-to-list 'auto-mode-alist '("\\.scss\\'" . css-ts-mode))
(defun css-setup ()
  (smartparens-mode +1)
  (emmet-mode +1)
  (company-mode +1)
  (setq company-minimum-prefix-length 1)
  (flycheck-mode +1)
  (setq
   indent-tabs-mode nil
   tab-width 2
   css-indent-offset 2)
  )
(add-hook 'css-ts-mode-hook 'css-setup)
(add-hook 'css-ts-mode-hook 'lsp-deferred)

(provide 'init-web)
