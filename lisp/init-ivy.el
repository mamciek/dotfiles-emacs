(require 'init-projectile)

(use-package ivy
  :ensure t
  :config
  (ivy-mode 1)
  ;; add recentf and bookmarks fo switch buffers
  (setq ivy-use-virtual-buffers t))

(use-package swiper
  :ensure t
  :bind ("C-s" . swiper))

(use-package counsel
  :ensure t)

(use-package counsel-projectile
  :ensure t
  :demand t
  :bind ("C-c p s r" . counsel-projectile-rg)
  :config
  (counsel-projectile-on))

(provide 'init-ivy)
