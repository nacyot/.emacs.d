(add-lib-path "robe")
(require 'robe)
; (require 'company)
; (require 'robe-company)
(require 'robe-ac)
(add-hook 'ruby-mode-hook 'robe-mode)
; (push 'company-robe company-backends)
(add-hook 'robe-mode-hook 'robe-ac-setup)

(custom-set-faces
 '(company-preview
   ((t (:foreground "darkgray" :underline t))))
 '(company-preview-common
   ((t (:inherit company-preview))))
 '(company-tooltip
   ((t (:background "lightgray" :foreground "black"))))
 '(company-tooltip-selection
   ((t (:background "steelblue" :foreground "white"))))
 '(company-tooltip-common
   ((((type x)) (:inherit company-tooltip :weight bold))
    (t (:inherit company-tooltip))))
 '(company-tooltip-common-selection
   ((((type x)) (:inherit company-tooltip-selection :weight bold))
    (t (:inherit company-tooltip-selection)))))
