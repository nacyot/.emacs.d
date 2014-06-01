;; Cucumber mode
(add-lib-path "cucumber")
(require 'feature-mode)

;; Set default config
(setq feature-default-language "ko")
(setq feature-default-i18n-file (concat +emacs-lib-dir+ "/cucumber/i18n.yml"))

;; Autoload feature-mode(.feature)
(add-to-list 'auto-mode-alist '("\.feature$" . feature-mode))
