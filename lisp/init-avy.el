(use-package avy
  :ensure t
  :bind ("C-'" . avy-goto-char-timer)
  :config
  (avy-setup-default))

(provide 'init-avy)
