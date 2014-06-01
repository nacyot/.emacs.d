;; (add-hook 'ruby-mode-hook
;;           '(lambda ()
;;              ;; .や::を入力直}後から補完開始
;;              (add-to-list 'ac-sources 'ac-source-rsense-method)
;;              (add-to-list 'ac-sources 'ac-source-rsense-constant)
;;              ;; C-x .で補完出来るようキーを設定
;;              (define-key ruby-mode-map (kbd "C-c .") 'ac-complete-rsense)))

(require 'ruby-mode)

(add-hook 'ruby-mode-hook (lambda () (ruby-end-mode t)))
;;   (remove-hook 'ruby-mode-hook (lambda () (ruby-electric-mode t))))
;;   (remove-hook 'before-save-hook 'ruby-mode-set-encoding))
;;(add-hook 'ruby-mode-hook 'ruby-mode-init)

(defun ruby-mode-set-encoding () ())

(defun my-ruby-mode-set-encoding ()
  (interactive)
  (ruby-mode-set-encoding))
(define-key ruby-mode-map "\C-ce" 'my-ruby-mode-set-encoding)

