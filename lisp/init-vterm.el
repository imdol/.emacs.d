;; vterm settings
(defalias 'msh 'multi-vterm)
(defun vterm-setup-mode ()
  (define-key vterm-mode-map (kbd "M-\\") #'multi-vterm)
  (define-key vterm-mode-map (kbd "M-]") #'multi-vterm-next)
  (define-key vterm-mode-map (kbd "M-[") #'multi-vterm-prev)
  )

(add-hook 'vterm-mode-hook 'vterm-setup-mode)
(provide 'init-vterm)
