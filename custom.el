(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#1D252C" "#D95468" "#8BD49C" "#EBBF83" "#5EC4FF" "#E27E8D" "#70E1E8" "#A0B3C5"])
 '(column-number-mode t)
 '(custom-enabled-themes nil)
 '(custom-safe-themes
   (quote
    ("23c0dc923626f1186edf9ed406dad5358477434d635ea90012e93863531a97b3" "25f1b2ace87d23d803b42267fafdc38b31472e444c2aaa9069aa2c06be8955b2" "1afd504deabc8a2ecf5d63b969bf63a93bf717b509ffe0b2009542dbba49c953" "ed92c27d2d086496b232617213a4e4a28110bdc0730a9457edf74f81b782c5cf" "e7bbfd6408ade4f76365187dff1b94f236ceda5910f49272806480cf0972a464" "56911bd75304fdb19619c9cb4c7b0511214d93f18e566e5b954416756a20cc80" "04589c18c2087cd6f12c01807eed0bdaa63983787025c209b89c779c61c3a4c4" default)))
 '(fci-rule-color "#56697A")
 '(font-use-system-font t)
 '(fringe-mode 6 nil (fringe))
 '(helm-display-header-line nil)
 '(hl-paren-background-colors (quote ("#e8fce8" "#c1e7f8" "#f8e8e8")))
 '(hl-paren-colors (quote ("#40883f" "#0287c8" "#b85c57")))
 '(jdee-db-active-breakpoint-face-colors (cons "#10151C" "#5EC4FF"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#10151C" "#8BD49C"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#10151C" "#384551"))
 '(linum-format (quote dynamic))
 '(lsp-keymap-prefix "C-c l")
 '(objed-cursor-color "#D95468")
 '(package-selected-packages
   (quote
    (helm-rg ccls ob-restclient leetcode htmlize ox-latex-subfigure ox-asciidoc org-bullets dot-mode which-key dotenv-mode doom-themes gnu-elpa-keyring-update flymake company-lsp lsp-mode helm-spotify-plus magit async ess eval-in-repl helm helm-core ivy julia-mode matlab-mode memoize paredit restclient treemacs with-editor yasnippet swiper yasnippet-snippets centaur-tabs doom-modeline org-babel-eval-in-repl expand-region beacon aio autothemer goto-chg ht pfuture treemacs-projectile polymode transpose-frame use-ttf undo-tree ob-mongo powerline 0blayout yaml-mode docker-compose-mode graphql-mode dockerfile-mode deferred hierarchy request-deferred spinner tree-mode md4rd wgrep all-the-icons auto-complete avy company csharp-mode dash epl f flycheck git-commit go-mode graphql js2-mode json-reformat json-snatcher know-your-http-well let-alist lv pkg-info popup pos-tip projectile pythonic request s shrink-path treepy typescript-mode web-completion-data coin-ticker company-nginx nginx-mode web-mode tide smartparens shut-up rjsx-mode restclient-helm rainbow-delimiters pug-mode org omnisharp neotree multiple-cursors multi-term magit-popup json-mode iedit hydra helm-projectile exec-path-from-shell emmet-mode eldoc-eval company-web company-restclient company-quickhelp company-go company-anaconda cherry-blossom-theme c-eldoc benchmark-init ace-window)))
 '(pdf-view-midnight-colors (cons "#A0B3C5" "#1D252C"))
 '(rustic-ansi-faces
   ["#1D252C" "#D95468" "#8BD49C" "#EBBF83" "#5EC4FF" "#E27E8D" "#70E1E8" "#A0B3C5"])
 '(show-paren-mode t)
 '(sml/active-background-color "#98ece8")
 '(sml/active-foreground-color "#424242")
 '(sml/inactive-background-color "#4fa8a8")
 '(sml/inactive-foreground-color "#424242")
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
 '(default ((t (:family "Hack" :foundry "SRC" :slant normal :weight normal :height 98 :width normal))))
 '(company-scrollbar-bg ((t (:background "#199919991999"))))
 '(company-scrollbar-fg ((t (:background "#0ccc0ccc0ccc"))))
 '(company-tooltip ((t (:inherit default :background "#199919991999"))))
 '(company-tooltip-common ((t (:inherit font-lock-constant-face))))
 '(company-tooltip-selection ((t (:inherit font-lock-function-name-face))))
 '(helm-grep-match ((t (:foreground "indian red" :weight bold))))
 '(helm-match ((t (:foreground "indian red" :weight bold))))
 '(helm-prefarg ((t (:foreground "deep pink"))))
 '(helm-rg-preview-line-highlight ((t (:background "#009081" :foreground "white smoke"))))
 '(helm-selection ((t (:background "#009081" :distant-foreground "black"))))
 '(helm-source-header ((t nil))))
