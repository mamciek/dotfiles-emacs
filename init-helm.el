(require-package 'helm)
(require-package 'helm-ls-git)
(require-package 'helm-git-grep)

(require 'helm-config)
(helm-mode 1)
(global-set-key (kbd "C-c h") 'helm-mini)
(global-set-key (kbd "C-x C-i") 'helm-imenu)
(global-set-key (kbd "<f2> g") 'helm-git-grep)
(global-set-key (kbd "<f2> l") 'helm-ls-git-ls)


(provide 'init-helm)
