;;
;; .myemacs for emacs.dot in /u/all/le-gue_t/cu
;; Made by tristan le-guern-
;; Login   <le-gue_t@epitech.net>
;;
;; Started on  Mon Jun 15 16:44:44 2009 tristan le-guern-
;; Last modif
;;

;;;;;;;;;;;;;;;;;;;;;;
;; Mode Declaration ;;
;;;;;;;;;;;;;;;;;;;;;;

(setq auto-mode-alist
      (append
       '(("\\.c$" . c++-mode)
	 ("Makefile$" . makefile-mode)
	 ("makefile$" . makefile-mode)
	 ("BSDmakefile$" . makefile-mode)
	 ("\\.mk$" . makefile-mode)
	 ("\\.h$"  . c++-mode)
	 ("\\.cc$" . c++-mode)
	 ("\\.hh$" . c++-mode)
	 ("\\.cpp$"  . c++-mode)
	 ("\\.hpp$"  . c++-mode)
	 ("\\.cws$"  . c++-mode)
	 ("\\.css$" . css-mode)
	 ("\\.tpl$" . html-mode)
	 ("\\.html$" . html-mode)
	 ("\\.cwp$" . bnf-mode)
	 )
       auto-mode-alist))

(setq c-style-alist
      (append
       '(("cpp-mode" . "openbsd")
	 ("c-mode" . "openbsd")
)))

;;;;;;;;;;;;;;;;
;; Emacs Lisp ;;
;;;;;;;;;;;;;;;;

(add-to-list 'load-path (expand-file-name "~/.emacs.d"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/theme/"))
(load "std_comment.elc")
(require 'multi-shell)
(require 'multi-scratch)
(require 'cc-mode-add)
(require 'workspace)
(require 'espresso)
(require 'user-js-mode)
(require 'delete-line)
(require 'php-l)
(require 'color-theme)
(require 'highlight-parentheses)
(require 'highlight-80+)
(require 'line)
(require 'linum)
(require 'butterfly)

(color-theme-initialize)
(autoload 'w3m "w3m" "Interface for w3m on Emacs." t)
;;(load-file "~/.emacs.d/src/cedet.el")
;;(add-to-list 'load-path "~/.emacs.d/cedet/")

(autoload 'macro-math-eval-and-round-region "macro-math" t nil)
(autoload 'macro-math-eval-region "macro-math" t nil)

(setq ispell-personal-dictionary "~/.ispell-dico-perso")
(ispell-change-dictionary "francais")

;;;;;;;;;;;;;;;;;;;;;;;;
;;     Yasnippet      ;;
;;;;;;;;;;;;;;;;;;;;;;;;

(add-to-list 'load-path
	     "~/.emacs.d/yasnippet")
    (require 'yasnippet) ;; not yasnippet-bundle
    (yas/initialize)
    (yas/load-directory "~/.emacs.d/yasnippet/snippets")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Miscellaneous Function ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun insert-shell-shebang (string)				;; Shebang auto insertion
 (interactive)
 (save-excursion
   (goto-char (point-min))
   (insert string)))

(defun indent-whole ()					;; indent whole buffer
  (interactive)
  (save-excursion
    (mark-whole-buffer)
    (indent-region (region-beginning) (region-end))))

(defun refresh-file ()
  (interactive)
  (revert-buffer t t t)
  (load-file "~/.emacs")
)

;;;;;;;;;;
;; Vars ;;
;;;;;;;;;;

(setq make-backup-files nil				;; no fucking backup files
      delete-key-deletes-forward t			;; backspace and delete don't bitch
      inhibit-startup-message t				;; no startup message in xemacs
      frame-title-format "%b"				;; window title = buffer title
      display-time-day-and-date t			;; hour and date
      display-time-24hr-format t			;; Hour in french format
      normal-erase-is-backspace-mode t
      ring-bell-function 'ignore			;; turn the alarm totally off
      column-number-mode t
      line-number-mode t
      initial-scratch-message ""			;; Remove text in '*scratch*' buffer
      gdb-many-windows 1				;; Better gdb
      delete-selection-mode t				;; Delete the selected region just by using delete
      user-nickname "Tristan Le Guern"
      user-full-name "Tristan Le Guern"
      user-mail-address "le-gue_t@epitech.net"
      user-login-name "le-gue_t"
      browse-url-browser-function 'browse-url-generic
      browse-url-generic-program "firefox36"		;; Specify witch browser to use
      delete-selection-mode 1)

(fset 'yes-or-no-p 'y-or-n-p)				;; `y' for `yes' and `n' for `no'

(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(after-save-hook (quote (executable-make-buffer-file-executable-if-script-p)))
 '(global-auto-complete-mode nil)
 '(global-font-lock-mode t)
 '(global-hl-line-mode t)
 '(ido-auto-merge-work-directories-length -1)
 '(ido-confirm-unique-completion t)
 '(ido-create-new-buffer (quote always))
 '(ido-everywhere t)
 '(ido-ignore-buffers (quote ("\\`\\*breakpoints of.*\\*\\'" "\\`\\*stack frames of.*\\*\\'" "\\`\\*gud\\*\\'" "\\`\\*locals of.*\\*\\'" "\\` ")))
 '(ido-mode (quote both) nil (ido))
 '(indent-tabs-mode t)
 '(iswitchb-mode t)
 '(menu-bar-mode nil)
 '(require-final-newline t)
 '(scroll-step 1)
 '(show-paren-mode t)
 '(transient-mark-mode t))

;;;;;;;;;;;
;; Faces ;;
;;;;;;;;;;;

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(default ((t (:foreground "white" :background "black" :weight light))))
 '(cursor ((t (:background "#FF0000"))))
 '(highlight ((t (:background "grey2"))))
 '(ido-first-match ((t (:foreground "red"))))
 '(ido-subdir ((t (:foreground "red"))))
 '(minibuffer-prompt ((t (:foreground "green"))))
 '(mouse ((t (:foreground "white" :background "black"))))
 '(show-paren-match ((t (:background "blue" :foreground "white"))))
 '(show-paren-mismatch ((t (:background "red" :foreground "white"))))
 '(mode-line ((default (:foreground "#999999" :background "gray15"))))
 '(mode-line-inactive ((default (:foreground "#777777" :background "#222222"))))
 '(highlight-80+ ((default (:foreground"#777777" :background "#222222"))))
 '(highlight-80+-first ((default (:foreground"#FF0000" :background "#222222")))))


(defun xin-theme-1 ()
  (interactive)
  (color-theme-install
   '(xin-theme-1
      ((background-color . "#000000")
      (background-mode . light)
      (border-color . "#1a1a1a")
      (cursor-color . "#fce94f")
      (foreground-color . "#eeeeec")
      (mouse-color . "black"))
     (fringe ((t (:background "#1a1a1a"))))
     (mode-line ((t (:foreground "#eeeeec" :background "#555753"))))
     (region ((t (:background "#0d4519"))))
     (font-lock-builtin-face ((t (:foreground "#729fcf"))))
     (font-lock-comment-face ((t (:foreground "#888a85"))))
     (font-lock-function-name-face ((t (:foreground "#edd400"))))
     (font-lock-keyword-face ((t (:foreground "#729fcf"))))
     (font-lock-string-face ((t (:foreground "#ad7fa8"))))
     (font-lock-type-face ((t (:foreground"#8ae234"))))
     (font-lock-variable-name-face ((t (:foreground "#eeeeec"))))
     (minibuffer-prompt ((t (:foreground "#729fcf" :bold t))))
     (font-lock-warning-face ((t (:foreground "Red" :bold t))))
     )))
(provide 'xin-theme-1)

;;;;;;;;;;
;; Hook ;;
;;;;;;;;;;

(add-hook 'find-file-hook (lambda () (linum-mode 1)))

(add-hook 'find-file-hook 'highlight-parentheses-mode)
(add-hook 'find-file-hook 'highlight-80+-mode)

(add-hook 'text-mode-hook
	  (lambda ()
	    (set-input-method "french-prefix")
	    (set-terminal-coding-system 'latin-1)
	    (set-keyboard-coding-system 'latin-1)
	    (set-language-environment 'latin-1)))

; Delete trailing whitespaces on save (be aware that it's can be stupid !)
(add-hook 'write-file-hooks 'delete-trailing-whitespace)

(add-hook 'sh-mode-hook
         (lambda ()
           (when (equal (point-min) (point-max))
             (insert-shell-shebang "#!/bin/sh\n\n")
             (goto-char (point-max)))))

(add-hook 'php-mode-hook
         (lambda ()
	   (hs-minor-mode)
	   (define-key php-mode-map (kbd "C-x C-a") 'php-l)
	   (define-key php-mode-map (kbd "C-c C-f") 'hs-toggle-hiding)
           (when (equal (point-min) (point-max))
             (insert-shebang "<?php\n\n?>")
             (goto-char (point-max)))))

(add-hook 'c-mode-common-hook
	  (lambda ()
	    (insert-header)
	    (c-set-style "openbsd")
	    (hs-minor-mode)
	    (define-key c-mode-base-map (kbd "C-c C-f")	'hs-toggle-hiding)
	    (define-key c-mode-base-map (kbd "C-x C-a") 'c-lint)))

(add-hook 'find-file-hooks
          (lambda ()
            (when (and (memq major-mode '(c-mode c++-mode)) (equal (point-min) (point-max)) (string-match ".*\\.hh?" (buffer-file-name)))
              (insert-header-guard)
              (goto-line 3)
              (insert "\n"))))

;;;;;;;;;;;;;
;; Binding ;;
;;;;;;;;;;;;;

(global-set-key [up]		'previous-line)
(global-set-key [down]		'next-line)
(global-set-key [left]		'backward-char)
(global-set-key [right]		'forward-char)
(global-set-key [home]		'beginning-of-line)
(global-set-key [select]	'end-of-line)
(global-set-key [kp-enter]	'newline-and-indent)
(global-set-key [delete]	'delete-char)
(global-set-key [backspace]	'delete-backward-char)

(global-set-key [f5]		'refresh-file) ;; f5 actualise le buffer
(global-set-key [f7]		'kill-this-buffer)

(global-set-key [(meta g)]	'goto-line)
(global-set-key [(control b)]	'ido-switch-buffer)
(global-set-key (kbd "C-c C-c") 'comment-region)
(global-set-key [(control r)]	'query-replace)
(global-set-key [(control tab)] 'previous-multiframe-window)
(global-set-key (kbd "C-c <left>") 'hs-hide-block)
(global-set-key (kbd "C-c <right>") 'hs-show-block)
(global-set-key (kbd "C-c <up>") 'hs-hide-all)
(global-set-key (kbd "C-c <down>") 'hs-show-all)
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

(global-set-key "\C-x=" 'macro-math-eval-region) ;; Macro math
(global-set-key "\C-x~" 'macro-math-eval-and-round-region);; Arrondit a 3 decimal

;; --------------------------------------------------------------

(xin-theme-1)

(put 'downcase-region 'disabled nil)

(defun new-c-lineup-arglist (langelem)
 (save-excursion
   (goto-char (cdr langelem))
   (setq syntax (car (car (c-guess-basic-syntax))))
   (while (or (eq syntax 'arglist-intro)
              (or (eq syntax 'arglist-cont)
                  (eq syntax 'arglist-cont-nonempty)))
     (forward-line -1)
     (setq syntax (car (car (c-guess-basic-syntax)))))
   (beginning-of-line)
   (re-search-forward "[^ \t]" (c-point 'eol))
   (goto-char (+ (match-beginning 0) 4))
   (vector (current-column))))

(c-add-style "openbsd"
            '("bsd"
              (c-ignore-auto-fill . '(string))
              (c-subword-mode . 0)
              (c-basic-offset . 8)
              (c-label-minimum-indentation . 0)
              (c-offsets-alist .
                               ((arglist-intro . new-c-lineup-arglist)
                                (arglist-cont . new-c-lineup-arglist)
                                (arglist-cont-nonempty . new-c-lineup-arglist)
                                (arglist-close . 0)
                                (substatement-open . 0)
                                (statement-cont . *)
                                (case-label . 0)
                                (knr-argdecl . *)))
              (fill-column . 80)
              (tab-width . 8)
              (indent-tabs-mode . t)))

;; -------------------------------------------------------------

(define-generic-mode 'bnf-mode
  '("//") ;; comment char: inapplicable because # must be at start of line
  '("#overload" "#include") ;; keywords
  '(
    ("=>" . 'font-lock-operator)
    ("->" . 'font-lock-operator)
    ("~" . 'font-lock-operator)
    ("::=" . 'font-lock-operator)
    ("^<.*?>" . 'font-lock-function-name-face) ;; LHS nonterminals
    ("<.*?>" . 'font-lock-builtin-face) ;; other nonterminals
    ("\|" . 'font-lock-warning-face) ;; "OR" symbol
    ("\{:\\|:\}" . 'font-lock-keyword-face) ;; special pybnf delimiters
   )
  '("\\.bnf\\'" "\\.pybnf\\'") ;; filename suffixes
  nil ;; extra function hooks
  "Major mode for BNF highlighting.")
