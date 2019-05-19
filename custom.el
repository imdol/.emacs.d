(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#000000" "#8b0000" "#00ff00" "#ffa500" "#7b68ee" "#dc8cc3" "#93e0e3" "#dcdccc"])
 '(column-number-mode t)
 '(custom-enabled-themes (quote (doom-city-lights)))
 '(custom-safe-themes
   (quote
    ("725a0ac226fc6a7372074c8924c18394448bb011916c05a87518ad4563738668" "f0dc4ddca147f3c7b1c7397141b888562a48d9888f1595d69572db73be99a024" "43c808b039893c885bdeec885b4f7572141bd9392da7f0bd8d8346e02b2ec8da" "8aca557e9a17174d8f847fb02870cb2bb67f3b6e808e46c0e54a44e3e18e1020" "6b289bab28a7e511f9c54496be647dc60f5bd8f9917c9495978762b99d8c96a0" "93a0885d5f46d2aeac12bf6be1754faa7d5e28b27926b8aa812840fe7d0b7983" "75d3dde259ce79660bac8e9e237b55674b910b470f313cdf4b019230d01a982a" "d1b4990bd599f5e2186c3f75769a2c5334063e9e541e37514942c27975700370" "cd736a63aa586be066d5a1f0e51179239fe70e16a9f18991f6f5d99732cabb32" "6d589ac0e52375d311afaa745205abb6ccb3b21f6ba037104d71111e7e76a3fc" "d2e9c7e31e574bf38f4b0fb927aaff20c1e5f92f72001102758005e53d77b8c9" "a3fa4abaf08cc169b61dea8f6df1bbe4123ec1d2afeb01c17e11fdc31fc66379" "3860a842e0bf585df9e5785e06d600a86e8b605e5cc0b74320dfe667bcbe816c" "59e82a683db7129c0142b4b5a35dbbeaf8e01a4b81588f8c163bd255b76f4d21" "d1cc05d755d5a21a31bced25bed40f85d8677e69c73ca365628ce8024827c9e3" "04589c18c2087cd6f12c01807eed0bdaa63983787025c209b89c779c61c3a4c4" default)))
 '(fci-rule-color "#383838")
 '(fringe-mode 6 nil (fringe))
 '(jdee-db-active-breakpoint-face-colors (cons "#10151C" "#5EC4FF"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#10151C" "#8BD49C"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#10151C" "#384551"))
 '(linum-format (quote dynamic))
 '(objed-cursor-color "#D95468")
 '(package-selected-packages
   (quote
    (helm-rg all-the-icons anaconda-mode async auto-complete avy company csharp-mode dash epl f flycheck git-commit go-mode graphql helm helm-core irony ivy js2-mode json-reformat json-snatcher know-your-http-well let-alist lv memoize pkg-info popup pos-tip projectile pythonic request restclient s shrink-path transient treepy typescript-mode web-completion-data with-editor yasnippet coin-ticker company-nginx nginx-mode gotham-theme yasnippet-snippets web-mode tide swiper smartparens shut-up rjsx-mode restclient-helm rainbow-delimiters pug-mode org omnisharp neotree multiple-cursors multi-term magit-popup magit json-mode irony-eldoc iedit hydra helm-projectile grandshell-theme ghub flycheck-irony expand-region exec-path-from-shell emmet-mode eldoc-eval doom-themes doom-modeline cyberpunk-theme company-web company-restclient company-quickhelp company-irony-c-headers company-irony company-go company-anaconda cherry-blossom-theme c-eldoc benchmark-init ace-window)))
 '(show-paren-mode t)
 '(tool-bar-mode nil)
 '(vc-annotate-background "#1D252C")
 '(vc-annotate-color-map
   (list
    (cons 20 "#8BD49C")
    (cons 40 "#abcd93")
    (cons 60 "#cbc68b")
    (cons 80 "#EBBF83")
    (cons 100 "#e5ae6f")
    (cons 120 "#df9e5b")
    (cons 140 "#D98E48")
    (cons 160 "#dc885f")
    (cons 180 "#df8376")
    (cons 200 "#E27E8D")
    (cons 220 "#df7080")
    (cons 240 "#dc6274")
    (cons 260 "#D95468")
    (cons 280 "#b05062")
    (cons 300 "#884c5c")
    (cons 320 "#604856")
    (cons 340 "#56697A")
    (cons 360 "#56697A")))
 '(vc-annotate-very-old-color nil))

;; highlighting: background and foreground
(set-face-attribute 'region nil :background "#FF1493" :foreground "#fff")

;; company quickhelp and delimiters below
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-scrollbar-bg ((t (:background "#199919991999"))))
 '(company-scrollbar-fg ((t (:background "#0ccc0ccc0ccc"))))
 '(company-tooltip ((t (:inherit default :background "#199919991999"))))
 '(company-tooltip-common ((t (:inherit font-lock-constant-face))))
 '(company-tooltip-selection ((t (:inherit font-lock-function-name-face))))
 '(rainbow-delimiters-depth-1-face ((t (:foreground "deep pink"))))
 '(rainbow-delimiters-depth-2-face ((t (:foreground "dark orange"))))
 '(rainbow-delimiters-depth-3-face ((t (:foreground "chartreuse"))))
 '(rainbow-delimiters-depth-4-face ((t (:foreground "deep sky blue"))))
 '(rainbow-delimiters-depth-5-face ((t (:foreground "yellow"))))
 '(rainbow-delimiters-depth-6-face ((t (:foreground "orchid"))))
 '(rainbow-delimiters-depth-7-face ((t (:foreground "spring green"))))
 '(rainbow-delimiters-depth-8-face ((t (:foreground "sienna1")))))
