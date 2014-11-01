(require-package 'projectile)

(require 'init-helm)
(require-package 'helm-projectile)

(projectile-global-mode)
(setq projectile-switch-project-action 'projectile-dired)

(provide 'init-projectile)
