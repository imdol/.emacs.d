;; hook Clang modes to irony
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

;; eldoc for c fams *already hooked with irony-eldoc
;(add-hook 'c-mode-hook 'c-turn-on-eldoc-mode)
;(add-hook 'c++-mode-hook 'c-turn-on-eldoc-mode)

;; hook irony-eldoc
(add-hook 'irony-mode-hook #'irony-eldoc)

;; use company-irony and irony-c-headers
(eval-after-load 'company
  '(add-to-list 'company-backends '(company-irony-c-headers company-irony)))

;; use flycheck irony
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))

(provide 'init-clang)
