(add-to-list 'auto-mode-alist '("\\.rest\\'" . restclient-mode))
(add-hook 'restclient-mode-hook 'so-long-enable);

(defun setup-restclient-mode ()
  (setq indent-tabs-mode nil)
  (setq tab-width 2)
  (setq standard-indent 2)
  (smartparens-mode +1)
  (company-mode +1)
  (setq company-minimum-prefix-length 1)
  (local-set-key (kdb "C-c C-f") json-mode-beautify)
  (add-to-list 'company-backends 'company-restclient)
  )

(add-hook 'restclient-mode-hook 'setup-restclient-mode)

(provide 'init-restclient)
