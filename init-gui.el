;; hide gui stuff
(when (fboundp 'menu-bar-mode)
  (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))

;; show a marker in the left fringe for lines not in the buffer
(setq indicate-empty-lines t)

;; hide splash screen and banner
(setq inhibit-startup-message t
      inhibit-startup-echo-area-message t)


(provide 'init-gui)
