;; which key
;; Allow C-h to trigger which-key before it is done automatically
;; make sure which-key doesn't show normally but refreshes quickly after it is
;; triggered.
(setq
 which-key-show-early-on-C-h t
 which-key-idle-delay 10000
 which-key-idle-secondary-delay 0.05
      )
(which-key-mode)

;; dotmode
(global-dot-mode 1)

;; drags
(global-set-key (kbd "M-p") #'drag-stuff-up)
(global-set-key (kbd "M-n") #'drag-stuff-down)

;; set macro custom macro key
(global-set-key (kbd "M-]") 'start-kbd-macro)
(global-set-key (kbd "M-[") 'end-kbd-macro)

;; expand region keybinding
(global-set-key (kbd "C-=") 'er/expand-region)

;; iedit
(global-set-key (kbd "C-:") 'iedit-mode)

;; hs folding
(add-hook 'prog-mode-hook 'hs-minor-mode)
(global-set-key (kbd "C-c C-k") 'hs-toggle-hiding)
(global-set-key (kbd "C-c C-l") 'hs-show-all)

;; set to mimic konsole switch window instead of hydra
(global-set-key [C-tab] 'other-window)

;; set backspace char deletes to hungry
(setq backward-delete-char-untabify-method 'hungry)

;; show matching parens
(show-paren-mode 1)
(setq show-paren-style 'parenthesis)

;; eshell alias
(defalias 'esh 'eshell)

;; rainbow delimiters
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode)

;; define user buffers
;; (defun user-buffer-def ()
;;   (interactive)
;;   (if (string-equal "*" (substring (buffer-name) 0 1))
;;       nil
;;     (if (string-equal major-mode "dired-mode")
;;         nil
;;       t
;;       )))

;; (defun next-user-buffer ()
;;   (interactive)
;;   (next-buffer)
;;   (let ((i 0))
;;     (while (< i 20)
;;       (if (not (user-buffer-def))
;;           (progn (next-buffer)
;;                  (setq i (1+ i)))
;;         (progn (setq i 100))))))

;; (defun previous-user-buffer ()
;;   (interactive)
;;   (previous-buffer)
;;   (let ((i 0))
;;     (while (< i 20)
;;       (if (not (user-buffer-def))
;;           (progn (previous-buffer)
;;                  (setq i (1+ i)))
;;         (progn (setq i 100))))))

;; ;; set user buffer switches
;; (global-set-key (kbd "M-[") 'previous-user-buffer)
;; (global-set-key (kbd "M-]") 'next-user-buffer)

(provide 'init-prog-env)
