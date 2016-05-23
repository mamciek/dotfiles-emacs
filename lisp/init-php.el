(require-package 'php-mode)
(require-package 'fill-column-indicator)

(require 'init-web-mode)
(require 'init-company)
(require 'init-smartparens)

(defun init-php-hook ()
  (set-fill-column 120)
;  (fci-mode)
  (smartparens-mode)
  (company-mode)
  )

(add-hook 'php-mode-hook 'init-php-hook)

(provide 'init-php)
