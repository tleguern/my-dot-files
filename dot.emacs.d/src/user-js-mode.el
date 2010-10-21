;;
;; user-js-mode.el for user-js-mode in /home/le-gue_t/userjs
;;
;; Made by Tristan Le Guern
;; Login   <le-gue_t@epitech.net>
;;
;; Started on  Fri Apr  2 17:38:43 2010 Tristan Le Guern
;;
;;

(provide 'user-js-mode)

(defun userjs-mode ()
  "Minor mode for editing userjs"
  (interactive)
  (setq minor-mode 'userjs-mode
	mode-name "/u")
)

(setq header-userjs-top		"// ==UserScript=="
      header-userjs-name	"// @name         "
      header-userjs-desc	"// @description  "
      header-userjs-version	"// @version      "
      header-userjs-date	"// @date         "
      header-userjs-author	"// @author       "
      header-userjs-namespace	"// @namespace    "
      header-userjs-include	"// @include      "
      header-userjs-bottom	"// ==/UserScript=="
)

(defun userjs-version-modifier (userjs-new-version)
  "Refresh version"
  (interactive "NNew version : ")
  (save-excursion
    (goto-line 1)
    (goto-char (search-forward header-userjs-version))
    (beginning-of-line)
    (delete-region (point-at-bol) (point-at-eol))
    (insert (concat header-userjs-version (number-to-string userjs-new-version)))))

(defun userjs-add-author (userjs-nw-author)
  "Adds an other author into the header"
  (interactive "sOther author ? ")
  (save-excursion
    (goto-line 1)
    (goto-char (search-forward header-userjs-author))
    (beginning-of-line)
    (next-line)
    (insert (concat header-userjs-author userjs-nw-author))
    (newline)))

(defun userjs-include ()
  (beginning-of-line)
  (set 'continue t)
  (while continue
    (setq include (read-from-minibuffer (format "Which page to include ? ")))
    (if (= 0 (length include))
	(setq continue nil)
      (progn
	(insert (concat header-userjs-namepsace include))
	(newline)))))

(defun userjs-header ()
  "Puts a userjs header on the beginning of file"
  (interactive)
  (when (equal (point-min) (point-max)))
    (setq userjs-name (read-from-minibuffer (format "Type project name : "))
	  userjs-desc (read-from-minibuffer (format "Type project description : "))
	  userjs-version "0.1"
	  userjs-date (current-time-string)
	  userjs-author user-login-name
	  userjs-namespace (read-from-minibuffer (format "Type namespace : ")))
    (insert header-userjs-top)
    (newline)
    (insert (concat header-userjs-name userjs-name))
    (newline)
    (insert (concat header-userjs-desc userjs-desc))
    (newline)
    (insert (concat header-userjs-version userjs-version))
    (newline)
    (insert (concat header-userjs-date userjs-date))
    (newline)
    (insert (concat header-userjs-author userjs-author))
    (newline)
    (when (not (string-equal userjs-namespace ""))
      (insert (concat header-userjs-namespace userjs-namespace))
      (newline))
    (userjs-include)
    (insert header-userjs-bottom)
    (newline))

