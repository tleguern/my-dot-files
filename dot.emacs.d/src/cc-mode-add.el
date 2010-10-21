;;
;; cc-mode-add.el for cc-mode-add.el in /u/all/le-gue_t/cu/public/childporn
;;
;; Made by le-gue_t
;; Login   <le-gue_t@epitech.net>
;;
;; Started on  Fri Feb 19 00:43:23 2010 le-gue_t
;; Last update Wed Sep 15 18:43:43 2010 Tristan Le Guern
;;

(provide 'cc-mode-add)

(defun c-switch-hh-cc () ;; Usefull for edition
  (interactive)
  (let ((other
         (let ((file (buffer-file-name)))
           (if (string-match "\\.hh$" file)
               (replace-regexp-in-string "\\.hh$" ".cc" file)
             (replace-regexp-in-string "\\.cc$" ".hh" file)))))
    (find-file other)))

(defun insert-header-guard () ;; Auto insertion in header file
  (interactive)
  (save-excursion
    (when (buffer-file-name)
      (let*
	  ((name (file-name-nondirectory buffer-file-name))
	   (macro (replace-regexp-in-string
		   "\\." "_"
		   (replace-regexp-in-string
		    "-" "_"
		    (upcase name)))))
	(goto-char (point-min))
	(insert "#ifndef " macro "_\n")
	(insert "# define " macro "_\n\n")
	(goto-char (point-max))
	(insert "\n#endif /* !" macro "_ */\n")))))

(defun insert-header-epitech ()
  "Puts a standard header at the beginning of the file."
  (interactive)
  (goto-char (point-min))
  (let ((projname "toto")(location "tiuti"))
    ;;(setq projname global-proj-name)
    (setq location (getenv "PWD"))

    (insert (std-get 'cs))
    (newline)
    (insert (concat (std-get 'cc)
		    (buffer-name)
		    header-for
		      projname
		      header-in
		      location))
      (newline)
      (insert (std-get 'cc))
      (newline)
      (insert (concat (std-get 'cc) header-made-by user-nickname))
      (newline)
      (insert (concat (std-get 'cc)
		      header-login
		      header-login-beg
		      user-mail-address
		      header-login-end))
      (newline)
      (insert (std-get 'cc))
      (newline)
      (insert (concat (std-get 'cc)
		      header-started
		      (current-time-string)
		      " "
		      user-nickname))
      (newline)
      (insert (concat (std-get 'cc)
		      header-last
		      (current-time-string)
		      " "
		      user-nickname))
      (newline)
      (insert (std-get 'ce))
      (newline)
      (newline)))

(defun insert-header-BSD ()
  "Puts a BSD licence at the beginning of the file."
  (interactive)
  (when (eq (point-min) (point-max))
    (setq c-default-style "bsd")
    (goto-char (point-min))
    (insert (format "/*
 * Copyright (c) %s %s <%s>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED \"AS IS\" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 */
" (format-time-string "%Y" (current-time)) user-nickname user-mail-address )
  )))

(defun insert-header ()
  (interactive)
  (if (string= (getenv "PWD") "/home/xin/proj/")
      (insert-header-BSD)))
