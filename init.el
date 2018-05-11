;; load vendor and custom files
(defvar emacs-dir (file-name-directory load-file-name)
  "top level emacs dir")
(defvar vendor-dir (concat emacs-dir "vendor/")
  "Packages not yet available in ELPA")
(defvar module-dir (concat emacs-dir "modules/")
  "so you don't have a huge init file")

;; add to load path
(add-to-list 'load-path vendor-dir)
(add-to-list 'load-path module-dir)

;; MELPA package
(require 'package)
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; refresh packages
(when (not package-archive-contents)
    (package-refresh-contents))

;; require packages in modules/ !!
(mapc 'load (directory-files module-dir nil "^[^#].*el$"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (cyberpunk)))
 '(custom-safe-themes
   (quote
	("cb1804474af4e9d2b8e6517157c9fe54b8e76364c89bdba9d80fe1df50802c5b" default)))
 '(flycheck-typescript-tslint-config "~/tslint.json")
 '(package-selected-packages
   (quote
	(tss org omnisharp csharp-mode js2-mode tide company typescript-mode yasnippet-snippets web-mode flycheck auto-complete neotree try iedit autopair cyberpunk-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


