;; some helm settings
(use-package helm
  :defer t
  :bind (("M-x" . helm-M-x)
	 ("C-x C-f" . helm-find-files)
	 ("C-x C-b" . helm-buffers-list)
	 ("C-x b" . helm-mini)	 
	 ("M-y" . helm-show-kill-ring))
  :config
  (helm-mode 1)
  (add-to-list 'display-buffer-alist
 	     `(,(rx bos "*helm" (* not-newline) "*" eos)
 	       (display-buffer-in-side-window)
 	       (inhibit-same-window . t)
 	       (window-height . 0.3)))
  )

(provide 'init-helm)
