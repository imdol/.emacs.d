(add-to-list 'auto-mode-alist '("\\.rest\\'" . restclient-mode))
(add-hook 'restclient-mode-hook 'so-long-enable);

(defun setup-restclient-mode ()
  (setq indent-tabs-mode nil)
  (setq tab-width 2)
  (setq standard-indent 2)
  (local-set-key (kdb "C-c C-f") json-mode-beautify)
  )

(add-hook 'restclient-mode-hook 'setup-restclient-mode)

(provide 'init-restclient)
