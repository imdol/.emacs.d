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
  ;; adjusts helm header
  (defun helm-toggle-source-header-line ()
    (if (= (length (ignore-errors (with-helm-buffer helm-sources))) 1)
	(set-face-attribute 'helm-source-header nil :height 1.0)
      (set-face-attribute 'helm-source-header nil :height 1.0)))
  (add-hook 'helm-after-initialize-hook 'helm-toggle-source-header-line)
  )

(provide 'init-helm)
