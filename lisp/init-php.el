(require-package 'php-mode)
(require-package 'php-eldoc)
(require-package 'fill-column-indicator)
(require-package 'ac-php)

(require 'init-web-mode)
(require 'init-company)


(defun init-php-hook ()
  (php-eldoc-enable)
  (set-fill-column 120)
  (turn-on-fci-mode)
;  (require 'company-php)
;  (company-mode)
;  (add-to-list 'company-backends 'company-ac-php-backend)
  )

(add-hook 'php-mode-hook 'init-php-hook)

(provide 'init-php)
