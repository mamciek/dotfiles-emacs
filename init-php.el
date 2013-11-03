(require-package 'php-mode)
(require-package 'php-eldoc)
(require-package 'fill-column-indicator)

(defun init-php-hook ()
  (php-eldoc-enable)
  (set-fill-column 120)
  (turn-on-fci-mode))

(add-hook 'php-mode-hook 'init-php-hook)

(provide 'init-php)
