;; hook relevant modes
(add-to-list 'auto-mode-alist '("\\.js\\'" . rjsx-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . rjsx-mode))
(add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode))
(add-to-list 'auto-mode-alist '("\\.ts\\'" . typescript-mode))

;; disable js2 mode errors, we have eslint
(setq js2-mode-show-parse-errors nil)
(setq js2-mode-show-strict-warnings nil)

;; disable jshint because eslint > jshint prefer eslint checking
(setq-default flycheck-disabled-checkers
	      (append flycheck-disabled-checkers
		      '(javascript-jshint)))

;; use local eslint from node_modules before global
;; http://emacs.stackexchange.com/questions/21205/flycheck-with-file-relative-eslint-executable
;;this is to avoid errors for incompatible versions in different projects
(defun my/use-eslint-from-node-modules ()
  (let* ((root (locate-dominating-file
		(or (buffer-file-name) default-directory)
		"node_modules"))
	 (eslint (and root
                      (expand-file-name "node_modules/eslint/bin/eslint.js"
                                        root))))
    (when (and eslint (file-executable-p eslint))
      (setq-local flycheck-javascript-eslint-executable eslint))))
(add-hook 'flycheck-mode-hook #'my/use-eslint-from-node-modules)

;; define tide mode settings
(defun setup-tide-mode ()
  (interactive)
  (tide-setup)
  (setq flycheck-check-syntax-automatically '(save mode-enabled))
  (eldoc-mode +1)
  (tide-hl-identifier-mode +1)

  (setq-default js2-basic-offset 2)
  (setq tab-width 2)
  (setq indent-tabs-mode nil)

  (emmet-mode +1)
  (setq emmet-expand-jsx-className? t)
  ;; use tsfmt.json instead and add to .gitignore or do it manually here
  ;;(setq tide-format-options '(:indentSize 2 :tabSize 2 :placeOpenBraceOnNewLineForFunctions nil))

  (flycheck-mode +1)
  (smartparens-mode +1)
  (company-mode +1)
  (yas-global-mode +1)
  )

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; formats the buffer before saving
(add-hook 'before-save-hook 'tide-format-before-save)
(add-hook 'typescript-mode-hook #'setup-tide-mode)

;; set up tide mode after js2 mode 
(add-hook 'rjsx-mode-hook #'setup-tide-mode)

(provide 'init-tide)
