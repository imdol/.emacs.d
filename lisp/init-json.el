(add-to-list 'auto-mode-alist '("\\.json\\'" . json-ts-mode))

(defun setup-json-mode ()
  (setq-local js-indent-level 2)
  (setq-local
   tab-width 2
   indent-tabs-mode nil)
  )

(add-hook 'json-ts-mode-hook 'setup-json-mode)

(provide 'init-json)
