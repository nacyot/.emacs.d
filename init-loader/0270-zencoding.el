;;Zen Coding Mode
(add-hook 'sgml-mode-hook 'zencoding-mode)
(add-hook 'html-mode-hook 'zencoding-mode)

(global-set-key (kbd "\C-j") 'zencoding-expand-yas)
;; (define-key zencoding-mode-keymap (kbd "C-t z") 'zencoding-expand-line)

(setq zencoding-indentation 2)

