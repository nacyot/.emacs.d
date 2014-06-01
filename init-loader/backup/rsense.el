;; rsense
;; (setq rsense-home "/Users/mcinst/.emacs.d/rsense-0.3")
;; (add-to-list 'load-path (concat rsense-home "/etc"))
;; (require 'rsense)

;; (setq rsense-rurema-home (concat rsense-home "/doc/ruby-refm-1.9.3-dynamic-20120829"))
;; (setq rsense-rurema-refe "refe-1_9_3")

;; C-c .で補完
(add-hook 'ruby-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c .") 'rsense-complete)))

;; C-c .で補完
(add-hook 'ruby-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c .") 'ac-complete-rsense)))
