;;CLang settings

(setq-default c-basic-offset 4
			  tab-width 4
			  indent-tabs-mode t)

;; Load with `irony-mode` as a grouped backend
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

;; require company-irony with c-headers
(eval-after-load 'company
  '(add-to-list
    'company-backends '(company-irony-c-headers company-irony)))

;; use flycheck-irony
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))

;;; for building irony server on backend you need the following:
;; sudo apt install libclang-dev
;; sudo apt install libclang
;; sudo apt install cmake
;; sudo apt install clang
