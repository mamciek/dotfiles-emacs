(require-package 'php-mode)
(require-package 'php-eldoc)

(defun init-php-hook ()
  (php-eldoc-enable))

(add-hook 'php-mode-hook 'init-php-hook)

(provide 'init-php)
