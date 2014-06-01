(setq default-input-method "korean-hangul")

(add-to-list 'file-coding-system-alist '("\\.md\\'" . utf-8) )

;; from http://stackoverflow.com/questions/2901541/which-coding-system-should-i-use-in-emacs
(setq utf-translate-cjk-mode nil) ; disable CJK coding/encoding (Chinese/Japanese/Korean characters)
(set-language-environment 'utf-8)
(set-keyboard-coding-system 'utf-8-mac) ; For old Carbon emacs on OS X only
(setq locale-coding-system 'utf-8)
(setq-default buffer-file-coding-system 'utf-8-unix)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(unless (eq system-type 'windows-nt)
  (set-selection-coding-system 'utf-8))
(prefer-coding-system 'utf-8)

;; arrow 
(global-set-key (kbd "M-[ a") 'previous-line)
(global-set-key (kbd "M-[ b") 'next-line)
(global-set-key (kbd "M-[ c") 'forward-char)
(global-set-key (kbd "M-[ d") 'backward-char)

;; replace
(global-set-key (kbd "M-r") 'replace-regexp)

;; save-buffer
(global-set-key (kbd "C-x C-a") 'save-buffer)

;; indent
(setq standard-indent 2)

;; profile
(setq user-mail-address "propellerheaven@gmail.com")
(setq user-full-name "nacyot")

;; autosave
;; Put autosave files (ie #foo#) and backup files (ie foo~) in
;; ~/.emacs.d/.
(custom-set-variables
  '(auto-save-file-name-transforms '((".*" "~/.saves/\\1" t)))
  '(backup-directory-alist '((".*" . "~/.emacs.d/backups/"))))

;; create the autosave dir if necessary, since emacs won't.
(make-directory "~/.saves/" t)

(setq backup-directory-alist `(("." . "~/.saves")))
(setq auto-save-default nil)
(setq make-backup-files t)
(setq backup-by-copying t)
(setq delete-old-versions t
  kept-new-versions 6
  kept-old-versions 2
  version-control t)


;; always end a file with a newline
(setq require-final-newline 'query)

;; enabling f5 refrash
(defun refresh-file ()
  (interactive)
  (revert-buffer t t t)
  )

(global-set-key [f5] 'refresh-file)

;; duplicate current line
(defun duplicate-current-line (&optional n)
  "duplicate current line, make more than 1 copy given a numeric argument"
  (interactive "p")
  (save-excursion
    (let ((nb (or n 1))
          (current-line (thing-at-point 'line)))
      ;; when on last line, insert a newline first
      (when (or (= 1 (forward-line 1)) (eq (point) (point-max)))
        (insert "\n"))
      
      ;; now insert as many time as requested
      (while (> n 0)
        (insert current-line)
        (decf n)))))

(global-set-key (kbd "C-c k") 'duplicate-current-line)

;;
(put 'upcase-region 'disabled nil)

;; electric-indent-mode
(electric-indent-mode 1)

(defun disable-electric-indent ()
  (set (make-local-variable 'electric-indent-functions)
              (list (lambda (arg) 'no-indent))))

