(provide 'butterfly)

(defun butterfly ()
  (interactive)
  (if (yes-or-no-p "Do you really want to unleash the powers of the butterfly? ")
      (progn
	(switch-to-buffer (get-buffer-create "*butterfly*"))
	(erase-buffer)
	(sit-for 0)
	(setq indent-tabs-mode nil)
	(animate-string "Amazing physics going on..."
			(/ (window-height) 2) (- (/
						  (window-width) 2) 12))
	(sit-for (* 5 (/ (abs (random)) (float most-positive-fixnum))))
	(message "Successfully flipped one bit!"))
    (message "Well, then go to xkcd.com!")
    (browse-url "http://xkcd.com/378/")))
