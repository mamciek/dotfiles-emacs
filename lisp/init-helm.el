(use-package helm
  :ensure t
  :demand
  :bind (("M-x" . helm-M-x)
	 ("M-y" . helm-show-kill-ring)
	 ("C-x b" . helm-mini))
  :config
  (require 'helm-config)
  (helm-mode 1)
  (setq helm-buffers-fuzzy-matching t
	helm-recentf-fuzzy-match t))

(use-package helm-projectile
  :ensure t
  :config
  (helm-projectile-on))

(provide 'init-helm)
