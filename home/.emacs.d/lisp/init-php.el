(require-package 'php-mode)
(require-package 'php-eldoc)
(require-package 'fill-column-indicator)

(require-package 'php-boris)
(require-package 'php-boris-minor-mode)

(require 'init-web-mode)

(defun init-php-hook ()
  (php-eldoc-enable)
  (set-fill-column 120)
  (turn-on-fci-mode))

(add-hook 'php-mode-hook 'init-php-hook)
(add-hook 'php-mode-hook 'php-boris-minor-mode)

(provide 'init-php)
