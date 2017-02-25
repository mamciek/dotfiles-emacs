(use-package projectile
  :ensure t
  :config
  (projectile-mode)
  (setq projectile-switch-project-action 'projectile-dired))

(use-package helm-projectile
  :ensure t
  :config
  (require 'init-helm)
  (setq projectile-completion-system 'helm)
  (helm-projectile-on))

(provide 'init-projectile)
