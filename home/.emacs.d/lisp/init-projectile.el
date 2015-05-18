(require-package 'projectile)

(require 'init-helm)
(require-package 'helm-projectile)

(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)

(setq projectile-switch-project-action 'projectile-dired)
(setq projectile-use-git-grep t)

(provide 'init-projectile)
