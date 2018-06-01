;; swiper defaults
(global-set-key (kbd "C-s") 'swiper)
(setq ivy-display-style 'fancy)

;;advise swiper to recenter on exit
(defun bjm-swiper-recenter (&rest args)
  "recenter display after swiper"
  (recenter)
  )
(advice-add 'swiper :after #'bjm-swiper-recenter)
