;; yasnippet
;; (add-lib-path "yasnippet")
 (require 'yasnippet)
;; (global-set-key (kbd "<backtab>") 'yas/expand)

;; ;;(defconst +snippets-dir+ (concat +emacs-lib-dir+
;; ;;"/yasnippet/snippets"))

(yas/global-mode 1)

(setq yas/snippet-dirs '("~/.emacs.d/libs/yasnippet"))
(yas/load-directory "~/.emacs.d/libs/yasnippet")
(turn-off-auto-fill)

(eval-after-load 'js2-mode
  '(progn
     (define-key js2-mode-map (kbd "TAB") (lambda()
                                            (interactive)
                                            (let ((yas/fallback-behavior 'return-nil))
                                              (unless (yas/expand)
                                                (indent-for-tab-command)
                                                (if (looking-back "^\s*")
                                                    (back-to-indentation))))))))
