(use-package projectile
  :ensure t
  :config
  (projectile-mode)
  (setq projectile-switch-project-action 'projectile-dired)
  (setq projectile-use-git-grep t)
  (setq projectile-completion-system 'helm))

(provide 'init-projectile)
