(require 'init-web-mode)
(require 'init-company)
(require 'init-smartparens)

(use-package php-mode
  :ensure t
  :config
  (add-hook 'php-mode-hook
	    (lambda ()
	      (setq php-template-compatibility nil)
	      (php-enable-psr2-coding-style)
	      (smartparens-mode)
	      (company-mode t)
	      (yas-global-mode 1))))

(provide 'init-php)
