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


;; custom-set-variables was added by Custom.
;; If you edit it by hand, you could mess it up, so be careful.
;; Your init file should contain only one such instance.
;; If there is more than one, they won't work right.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(custom-enabled-themes (quote (cyberpunk)))
 '(custom-safe-themes
   (quote
	("bb08c73af94ee74453c90422485b29e5643b73b05e8de029a6909af6a3fb3f58" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "1b8d67b43ff1723960eb5e0cba512a2c7a2ad544ddb2533a90101fd1852b426e" "628278136f88aa1a151bb2d6c8a86bf2b7631fbea5f0f76cba2a0079cd910f7d" "06f0b439b62164c6f8f84fdda32b62fb50b6d00e8b01c2208e55543a6337433a" "cb1804474af4e9d2b8e6517157c9fe54b8e76364c89bdba9d80fe1df50802c5b" default)))
 '(package-selected-packages
   (quote
	(smartparens smart-tabs-mode emmet-mode expand-region company-web all-the-icons exec-path-from-shell json-mode color-theme-sanityinc-solarized color-theme-sanityinc-tomorrow swiper tss org omnisharp csharp-mode js2-mode tide company typescript-mode yasnippet-snippets web-mode flycheck auto-complete neotree try iedit cyberpunk-theme)))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
	((20 . "#f2777a")
	 (40 . "#f99157")
	 (60 . "#ffcc66")
	 (80 . "#99cc99")
	 (100 . "#66cccc")
	 (120 . "#6699cc")
	 (140 . "#cc99cc")
	 (160 . "#f2777a")
	 (180 . "#f99157")
	 (200 . "#ffcc66")
	 (220 . "#99cc99")
	 (240 . "#66cccc")
	 (260 . "#6699cc")
	 (280 . "#cc99cc")
	 (300 . "#f2777a")
	 (320 . "#f99157")
	 (340 . "#ffcc66")
	 (360 . "#99cc99"))))
 '(vc-annotate-very-old-color nil))

;; custom-set-faces by hand
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor ((t (:background "lightblue" :foreground "#151718"))))
 '(mode-line ((t (:background "black" :foreground "#4499FF"))))
 '(neo-dir-link-face ((t (:foreground "#bd00ff" :slant normal :weight bold :height 100 :family "Fantasque Sans Mono"))))
 '(neo-file-link-face ((t (:foreground "White" :weight normal :height 90 :family "Fantasque Sans Mono"))))
 '(neo-root-dir-face ((t (:foreground "lightblue" :weight bold)))))


