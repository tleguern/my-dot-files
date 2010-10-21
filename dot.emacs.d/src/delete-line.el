;;
;; delete-line.el for delete-line.el in /home/le-gue_t/userjs
;;
;; Made by Tristan Le Guern
;; Login   <le-gue_t@epitech.net>
;;
;; Started on  Fri Apr  2 19:56:02 2010 Tristan Le Guern
;; Last update Fri Apr  2 19:56:07 2010 Tristan Le Guern
;;

(provide 'delete-line)

(defun delete-line (linenum)
  "Delete one line."
  (interactive "NDelete line :")
  (goto-line linenum)
  (delete-region (point-at-bol) (point-at-eol)))
