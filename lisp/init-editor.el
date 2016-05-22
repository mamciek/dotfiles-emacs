(global-set-key (kbd "C-h") 'backward-delete-char-untabify)
(global-set-key (kbd "M-h") 'backward-kill-word)

(global-set-key (kbd "M-/") 'hippie-expand)

;; auto ident after RET
;(define-key global-map (kbd "RET") 'newline-and-indent)

;; mouse yanking inserts at the point instead of location of the click
(setq mouse-yank-at-point t)

;; use regex-aware incremental search
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)

(global-set-key (kbd "C-c q") 'join-line)

;; highlight the matching pair when the point is over parentheses
(show-paren-mode 1)

(require-package 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)


(provide 'init-editor)
