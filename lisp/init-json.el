(defun setup-json-mode ()
  (setq-local js-indent-level 2)
  (setq-local tab-width 2)
  (smartparens-mode +1)
  )

(add-hook 'json-mode-hook 'setup-json-mode)

(provide 'init-json)
