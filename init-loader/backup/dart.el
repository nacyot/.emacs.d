(add-lib-path "dart-mode")
(require 'dart-mode)
(add-to-list 'auto-mode-alist '("\\.dart\\'" . dart-mode)) 
(autoload 'dart-mode "dart-mode" "Major mode for editing Dart files" t)
