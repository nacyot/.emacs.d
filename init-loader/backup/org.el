(add-lib-path "org/lisp")
(require 'org)

(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; (add-hook 'org-mode-hook 'turn-on-font-lock)

(add-hook 'org-mode-hook
            (lambda ()
              (org-defkey org-mode-map "\C-j"     'org-meta-return)
              (org-defkey org-mode-map (kbd "M-[ d") 'org-metaleft)
              (org-defkey org-mode-map (kbd "M-[ c") 'org-metaright)
              (org-defkey org-mode-map (kbd "M-[ a") 'org-metaup)
              (org-defkey org-mode-map (kbd "M-[ b") 'org-metadown)
              (org-defkey org-mode-map "\M-[1;2A" 'org-shiftup)
              (org-defkey org-mode-map "\M-[1;2B" 'org-shiftdown)
              (org-defkey org-mode-map "\M-[1;2C" 'org-shiftright)
              (org-defkey org-mode-map "\M-[1;2D" 'org-shiftleft)
              (electric-indent-mode 0)
              ))

(setq org-todo-keywords
      '((sequence "TODO(t)" "WAIT(w)" "ONGOING(g)" "|" "DONE(d)" "SOMEDAY(s)" "NEVER(n)")))
;; (setq org-src-fontify-natively t)
(setq org-html-htmlize-output-type 'css)
(setq org-startup-truncated nil)
(setq org-startup-folded nil )
