;; custom settings for web-mode
(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 4)
  (setq web-mode-code-indent-offset 4)
  (setq web-mode-enable-current-element-highlight t)
  (set (make-local-variable 'company-backends) '(company-css company-web-html company-yasnippet company-files))
)
(add-hook 'web-mode-hook  'my-web-mode-hook)

;;web-mode  for HTML
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;;web-mode for EJS files (might change it to something better)
(add-to-list 'auto-mode-alist '("\\.ejs?\\'" . web-mode))

;; use web-mode for reactjs .jsx files
(add-to-list 'auto-mode-alist '("\\.jsx$" . web-mode))

;; use web-mode for .tsx files
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))

;; better jsx syntax-highlighting in web-mode
;; courtesy of Patrick @halbtuerke. DOPE AS FUCK!
(defadvice web-mode-highlight-part (around tweak-jsx activate)
  (if (equal web-mode-content-type "jsx")
    (let ((web-mode-enable-part-face nil))
      ad-do-it)
    ad-do-it))

;; use eslint with web-mode for jsx files
(flycheck-add-mode 'javascript-eslint 'web-mode)

;; enable typescript-tslint checker in web mode
(flycheck-add-mode 'typescript-tslint 'web-mode)
