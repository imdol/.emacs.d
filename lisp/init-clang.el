;; define irony mode setup to hook up to C/C++ modes
(defun c-irony-mode-setup ()
  (setq c-basic-offset 8
   indent-tabs-mode t
   tab-width 8
   sp-escape-quotes-after-insert nil)

  (irony-mode +1)
  (flycheck-mode +1)
  (company-mode +1)
  (smartparens-mode +1)
  (yas-global-mode +1)
  
  (eval-after-load 'company
    '(add-to-list 'company-backends '(company-irony-c-headers company-irony)))
  (eval-after-load 'flycheck
    '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))
  )

(defun cc-irony-mode-setup ()
  (setq c-basic-offset 4
   indent-tabs-mode t
   tab-width 4
   sp-escape-quotes-after-insert nil)

  (irony-mode +1)
  (flycheck-mode +1)
  (company-mode +1)
  (smartparens-mode +1)
  (yas-global-mode +1)
  
  (eval-after-load 'company
    '(add-to-list 'company-backends '(company-irony-c-headers company-irony)))
  (eval-after-load 'flycheck
    '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))
  )

;; hook compile options and eldoc to irony mode
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
(add-hook 'irony-mode-hook #'irony-eldoc)

;; hook relevant c-modes to irony setup
(add-hook 'c-mode-hook 'c-irony-mode-setup)
(add-hook 'c++-mode-hook 'cc-irony-mode-setup)
(add-hook 'objc-mode-hook 'cc-irony-mode-setup)

(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

;; try out rtags or lsp with cquery

(provide 'init-clang)
