(use-package rust-mode
  :ensure t)

(use-package flycheck-rust
  :ensure t
  :init
  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))

(use-package cargo
  :ensure t
  :config
  (add-hook 'rust-mode-hook 'cargo-minor-mode))

(use-package racer
  :ensure t
  :bind ("TAB" . company-indent-or-complete-common)
  :init
  (add-hook 'rust-mode-hook #'racer-mode)
  (add-hook 'racer-mode-hook #'eldoc-mode)
;  (define-key rust-mode-map (kbd "TAB") #'company-indent-or-complete-common)
  )

(use-package toml-mode
  :ensure t)

(provide 'init-rust)
