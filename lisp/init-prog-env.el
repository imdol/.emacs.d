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
