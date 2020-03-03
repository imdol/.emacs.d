;; some helm settings
(helm-mode 1)
(global-set-key (kbd "M-x") #'helm-M-x)
(global-set-key (kbd "C-x r b") #'helm-filtered-bookmarks)
(global-set-key (kbd "C-x C-f") #'helm-find-files)
(global-set-key (kbd "C-x C-b") #'helm-buffers-list)
(global-set-key (kbd "C-x b") #'helm-mini)
(global-set-key (kbd "M-y") #'helm-show-kill-ring)

(setq helm-display-header-line nil)

(set-face-attribute 'helm-source-header nil :height 0.1)

(add-to-list 'display-buffer-alist
 	     `(,(rx bos "*helm" (* not-newline) "*" eos)
 	       (display-buffer-in-side-window)
 	       (inhibit-same-window . t)
 	       (window-height . 0.3)))

(provide 'init-helm)
