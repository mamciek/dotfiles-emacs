(require-package 'helm)
(require-package 'helm-git-grep)
(require-package 'helm-ag)

(require 'helm-config)
(helm-mode 1)
(helm-adaptative-mode 1)

(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match t)

(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)

(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-c p s h") 'helm-git-grep)

(provide 'init-helm)
