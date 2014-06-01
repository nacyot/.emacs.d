(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)
(defvar clojure-packages '(clojure-mode
                           paredit
                           nrepl
                           rainbow-delimiters))
(dolist (p clojure-packages)
  (when (not (package-installed-p p))
    (package-refresh-contents)
    (package-install p)))
(add-hook 'clojure-mode-hook 'paredit-mode)
(add-hook 'clojure-mode-hook 'rainbow-delimiters-mode)
(add-hook 'nrepl-mode-hook 'paredit-mode)
(add-hook 'nrepl-mode-hook 'rainbow-delimiters-mode)
