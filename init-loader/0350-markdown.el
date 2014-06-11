;; (add-lib-path "markdown-mode")

;; (autoload 'markdown-mode "markdown-mode.el"
;;             "Major mode for editing Markdown files" t)
;; (setq auto-mode-alist
;;          (cons '("\\.md" . markdown-mode) auto-mode-alist))

(add-to-list 'auto-mode-alist '("\\.md" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown" . markdown-mode))

(add-hook 'markdown-mode-hook
          (lambda ()
            (visual-line-mode)
            (whitespace-mode)
            (auto-fill-mode -1)
            ))




