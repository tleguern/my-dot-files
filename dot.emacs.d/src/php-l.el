;;
;; php-l.el for php-l.el in /u/all/le-gue_t/cu/public/childporn
;;
;; Made by le-gue_t
;; Login   <le-gue_t@epitech.net>
;;
;; Started on  Thu Feb 18 16:22:30 2010 le-gue_t
;; Last update Wed Mar 10 17:07:22 2010 le-gue_t
;;

;; php -l dans emacs :p

(provide 'php-l)

(defun php-l(&optional b e)
  (interactive)
  (save-excursion
    (goto-char 1)
    (push-mark)
    (mark-whole-buffer)
    (shell-command-on-region b e "php -l")))
