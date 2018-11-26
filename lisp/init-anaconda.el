;; use company-anaconda
(defun anaconda-mode-setup ()
  (flycheck-mode +1)
  (anaconda-mode +1)
  (anaconda-eldoc-mode +1)
  (company-mode +1)
  (eval-after-load "company"
    '(add-to-list 'company-backends 'company-anaconda))
  )

(add-hook 'python-mode-hook #'anaconda-mode-setup)

(setq doom-modeline-python-executable "python3")

(provide 'init-anaconda)
