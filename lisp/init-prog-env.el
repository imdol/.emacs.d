;; set backspace char deletes to hungry
(setq backward-delete-char-untabify-method 'hungry)

;; set key to delete entire buffer
(put 'erase-buffer 'disabled nil)
(global-set-key (kbd "C-x C-x") 'erase-buffer)

;; dotmode
(global-dot-mode 1)

;; set to mimic konsole switch window instead of hydra
(global-set-key [C-tab] 'other-window)
;; (global-set-key (kbd "C-o") #'other-window)

;; drags
(global-set-key (kbd "M-p") #'drag-stuff-up)
(global-set-key (kbd "M-n") #'drag-stuff-down)

;; kill whole line
(global-set-key (kbd "C-S-k") 'kill-whole-line)

;; expand region keybinding
(global-set-key (kbd "C-=") 'er/expand-region)

;; iedit
(global-set-key (kbd "C-:") 'iedit-mode)

;; hs folding
(add-hook 'prog-mode-hook 'hs-minor-mode)
(global-set-key (kbd "C-c C-k") 'hs-toggle-hiding)
(global-set-key (kbd "C-c C-j") 'hs-hide-all)
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
