;; (add-hook 'ruby-mode-hook
;;           '(lambda ()
;;              ;; .や::を入力直}後から補完開始
;;              (add-to-list 'ac-sources 'ac-source-rsense-method)
;;              (add-to-list 'ac-sources 'ac-source-rsense-constant)
;;              ;; C-x .で補完出来るようキーを設定
;;              (define-key ruby-mode-map (kbd "C-c .")
;;           'ac-complete-rsense)))

(require 'ruby-mode)

(add-hook 'ruby-mode-hook (lambda () (ruby-end-mode t)))
;;   (remove-hook 'ruby-mode-hook (lambda () (ruby-electric-mode t))))
;;   (remove-hook 'before-save-hook 'ruby-mode-set-encoding))
;;(add-hook 'ruby-mode-hook 'ruby-mode-init)

(add-to-list 'auto-mode-alist '("\\.rake$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("Guardfile$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.jbuilder$" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.builder$" . ruby-mode))

(autoload 'run-ruby "inf-ruby"
  "Run an inferior Ruby process")
(autoload 'inf-ruby-keys "inf-ruby"
  "Set local key defs for inf-ruby in ruby-mode")

(defun ruby-mode-set-encoding () ())

(defun my-ruby-mode-set-encoding ()
  (interactive)
  (ruby-mode-set-encoding))
(define-key ruby-mode-map "\C-ce" 'my-ruby-mode-set-encoding)

(setq ruby-deep-indent-paren-style nil)
