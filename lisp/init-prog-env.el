;; which key
;; Allow C-h to trigger which-key before it is done automatically
;; make sure which-key doesn't show normally but refreshes quickly after it is
;; triggered.
(setq
 which-key-show-early-on-C-h t
 which-key-idle-delay 10000
 which-key-idle-secondary-delay 0.05)
(which-key-mode)

;; set backspace char deletes to hungry
(setq backward-delete-char-untabify-method 'hungry)

;; dotmode
(global-dot-mode 1)

;; set to mimic konsole switch window instead of hydra
(global-set-key [C-tab] 'other-window)

;; drags
(global-set-key (kbd "M-p") #'drag-stuff-up)
(global-set-key (kbd "M-n") #'drag-stuff-down)

;; kill whole line
(global-set-key (kbd "C-l") 'kill-whole-line)

;; expand region keybinding
(global-set-key (kbd "C-=") 'er/expand-region)

;; iedit
(global-set-key (kbd "C-:") 'iedit-mode)

;; hs folding
(add-hook 'prog-mode-hook 'hs-minor-mode)
(global-set-key (kbd "C-c C-k") 'hs-toggle-hiding)
(global-set-key (kbd "C-c C-l") 'hs-show-all)

;; set macro custom macro key
;; (global-set-key (kbd "M-]") 'start-kbd-macro)
;; (global-set-key (kbd "M-[") 'end-kbd-macro)

;; show matching parens
(show-paren-mode 1)
(setq show-paren-style 'parenthesis)

;; eshell alias
(defalias 'esh 'eshell)

;; rainbow delimiters
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

(provide 'init-prog-env)
