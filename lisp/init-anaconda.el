;; use company-anaconda
(eval-after-load "company"
  '(add-to-list 'company-backends 'company-anaconda))

(defun anaconda-mode-setup ()
  (flycheck-mode +1)
  (anaconda-mode +1)
  (anaconda-eldoc-mode +1)
  (company-mode +1)
  )

(add-hook 'python-mode-hook #'anaconda-mode-setup)

(provide 'init-anaconda)
