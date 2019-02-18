;; use company-anaconda
(defun anaconda-mode-setup ()
  (anaconda-mode +1)
  (anaconda-eldoc-mode +1)
  (company-mode +1)
  (flycheck-mode +1)
  (smartparens-mode +1)
  (yas-global-mode +1)
  (setq flycheck-checker 'python-pylint
	flycheck-python-pylint-executable "/usr/bin/python3"
	flycheck-checker-error-threshold 900
	flycheck-pylintrc "~/.pylintrc")
  (eval-after-load "company"
    '(add-to-list 'company-backends 'company-anaconda))
  (setq python-shell-interpreter "/usr/bin/python3")
  (setq doom-modeline-python-executable "python3")
  )

(add-hook 'python-mode-hook #'anaconda-mode-setup)

(provide 'init-anaconda)
