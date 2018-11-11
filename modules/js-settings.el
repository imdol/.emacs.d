;; start js2-mode
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-to-list 'auto-mode-alist `(,(rx ".jsx" string-end) . js2-mode))
(add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode))

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

