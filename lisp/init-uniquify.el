;; buffer names have directory name appended if files have the same name
(require 'uniquify)

(setq uniquify-buffer-name-style 'reverse)
(setq uniquify-separator " • ")
(setq uniquify-after-kill-buffer-p t)


(provide 'init-uniquify)
