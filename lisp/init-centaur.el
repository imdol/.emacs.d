;; basic settings
(setq-default
 centaur-tabs-height 20
 centaur-tabs-style "bar"
 centaur-tabs-set-bar 'over
 centaur-tabs-set-close-button nil
 centaur-tabs-set-modified-marker t
 centaur-tabs-modified-marker "!"
 centaur-tabs-cycle-scope 'tabs)

;; enable and inherit themes
(centaur-tabs-mode t)

;; set keys
(global-set-key (kbd "M-[")  'centaur-tabs-backward)
(global-set-key (kbd "M-]") 'centaur-tabs-forward)

;; hooks
(add-hook 'dired-mode-hook 'centaur-tabs-local-mode)
(add-hook 'org-agenda-mode-hook 'centaur-tabs-local-mode)
(add-hook 'calendar-mode-hook 'centaur-tabs-local-mode)

;; def buffer groups
(defun centaur-tabs-buffer-groups ()
  "`centaur-tabs-buffer-groups' control buffers' group rules.
    Group centaur-tabs with mode if buffer is derived from
 `eshell-mode' `emacs-lisp-mode' `dired-mode' `org-mode' `magit-mode'.
    All buffer name start with * will group to \"Emacs\".
    Other buffer group by `centaur-tabs-get-group-name' with project name."
  (list 
   (cond
    (string-equal "*" (substring (buffer-name) 0 1)
     "Emacs")
    ((derived-mode-p 'prog-mode)
     "Editing")
    ((derived-mode-p 'dired-mode)
     "Dired")
    ((memq major-mode '(helpful-mode
			help-mode))
     "Help")
    ((memq major-mode '(org-mode
			org-agenda-clockreport-mode
			org-src-mode
			org-agenda-mode
			org-beamer-mode
			org-indent-mode
			org-bullets-mode
			org-cdlatex-mode
			org-agenda-log-mode
			diary-mode))
     "OrgMode")
    ((memq major-mode '(magit-process-mode
		       magit-status-mode
		       magit-diff-mode
		       magit-log-mode
		       magit-file-mode
		       magit-blob-mode
		       magit-blame-mode
		       ))
     "Magit")
    ((memq major-mode '(term-mode
			eshell-mode
			ansi-term-mode
			))
     "Shell")
    (t
     (centaur-tabs-get-group-name (current-buffer))))))

;; hide tabs for certain buffers
(defun centaur-tabs-hide-tab (x)
  (let ((name (format "%s" x)))
    (or
     (string-prefix-p "*epc" name)
     (string-prefix-p "*helm" name)
     (string-prefix-p "*Compile-Log*" name)
     (string-prefix-p "*lsp" name)
     (string-prefix-p "*NeoTree*" name)
     (string-prefix-p "*Treemacs-FrameBuffer-1*" name)
     (string-prefix-p "*tide-server*" name)
     (string-prefix-p "*GraphQL*" name)
     (string-prefix-p "*spotify" name)
     (and (string-prefix-p "magit" name)
	  (not (file-name-extension name)))
     )))

;; group by projectile projects
(centaur-tabs-group-by-projectile-project)

(provide 'init-centaur)
