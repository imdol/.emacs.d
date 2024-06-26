(add-to-list 'auto-mode-alist '("\\.cc\\'" . c++-ts-mode))
;;(add-to-list 'auto-mode-alist '("\\.cpp\\'" . c++-ts-mode))
;; (add-to-list 'auto-mode-alist '("\\.h\\'" . c++-ts-mode))
(add-to-list 'auto-mode-alist '("\\.cpp\\'" . c++-mode))
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(defun cc-lsp-setup ()
  (setq c-basic-offset 2
   indent-tabs-mode nil
   tab-width 2
   sp-escape-quotes-after-insert nil)
  (yas-minor-mode +1)

  ;; define mode map keys
  (define-key c++-mode-map (kbd "M-e") 'forward-sentence)
  (define-key c++-mode-map (kbd "M-a") 'backward-sentence)
  (define-key c++-mode-map (kbd "C-c c-k") 'hs-toggle-hiding)
  (define-key c++-mode-map (kbd "C-c c-l") 'hs-show-all)
  )
(add-hook 'c++-ts-mode-hook 'cc-lsp-setup)
(add-hook 'c++-ts-mode-hook 'lsp-deferred)
(add-hook 'c++-mode-hook 'cc-lsp-setup)
(add-hook 'c++-mode-hook 'lsp-deferred)

(provide 'init-cc)
